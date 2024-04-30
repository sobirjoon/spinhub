const express = require('express');
const app = express();
const port = process.env.PORT || 3000;
app.set('view engine', 'ejs');
const axios = require('axios');
app.use(express.static(__dirname + '/public'));
const cookieParser = require('cookie-parser');
const session = require('express-session');
app.use(express.urlencoded({ extended: true }));

const oneHour = 1000 * 60 * 60 * 1;
app.use(cookieParser());
app.use(session({
    secret: "40353633",
    saveUninitialized: true,
    cookie: { maxAge: oneHour },
    resave: false
}));

var date= new Date();
var day = ("0" + date.getDate()).slice(-2);
var month = ("0" + (date.getMonth() + 1)).slice(-2);
var year = date.getFullYear();
var date = year + "-" + month + "-" + day;

// Middleware: userid
app.use((req, res, next) => {
    res.locals.user = req.session.auth || null;
    next();
});

// Middleware: status of user
app.use((req, res, next) => {
    res.locals.genredata = req.session.null;
    res.locals.status = req.session.status || null;
    next();
});

// Middleware: username
app.use((req, res, next) => {
    res.locals.username = req.session.username || null;
    next();
});

// Routes
app.get('/', (req, res) => {

    let endpointOne = 'https://spinhubapi-production.up.railway.app/?random';
    let endpointTwo = 'https://spinhubapi-production.up.railway.app/?genres';

    const requestOne = axios.get(endpointOne);
    const requestTwo = axios.get(endpointTwo);

    axios.all([requestOne, requestTwo])
        .then(
            axios.spread((...responses) => {
                const popular = responses[0].data;
                const genres = responses[1].data;
                res.render('index', { popular});
            }
            )
        )
        .catch(err => {
            console.log("Error: ", err.message);
        });

});

// to get all albums
app.get('/explore', (req, res) => {
    let id = req.body.genre_id;

    let endpointOne = `https://spinhubapi-production.up.railway.app/?albums`;
    let endpointTwo = `https://spinhubapi-production.up.railway.app/?genreid=8`;

    const requestOne = axios.get(endpointOne);
    const requestTwo = axios.get(endpointTwo);


    axios.all([requestOne, requestTwo])
        .then(
            axios.spread((...responses) => {
                const data = responses[0].data;
                const genredata = responses[1].data;
                console.log(data);
                console.log(genredata);
                res.render('explore', { data, genredata });
            })
        )
        .catch(err => {
            console.log("Error: ", err.message);
        });
});

// pricing
app.get('/pricing', (req, res) => {
    res.render('pricing');
});

// about
app.get('/about', (req, res) => {
    res.render('about');
});

// faqs
app.get('/faqs', (req, res) => {
    res.render('faqs');
});

// to get genres
app.get('/genres', (req, res) => {
    let endpoint = 'https://spinhubapi-production.up.railway.app/?albums';
    console.log(endpoint);

    axios.get(endpoint).then(result => {

        let data = result.data;

        res.render('genres', { data });
    })
        .catch(err => {
            console.log("Error: ", err.message);
        });
});

// to get single album
app.get('/album', (req, res) => {
    let id = req.query.id;
    let endpointOne = `https://spinhubapi-production.up.railway.app/?albumid=${id}`;
    let endpointTwo = `https://spinhubapi-production.up.railway.app/?reviewid=${id}`;
    let endpointThree = `https://spinhubapi-production.up.railway.app/?tracklist=${id}`;

    const requestOne = axios.get(endpointOne);
    const requestTwo = axios.get(endpointTwo);
    const requestThree = axios.get(endpointThree);

    // error handling

    axios.all([requestOne, requestTwo, requestThree])
        .then(
            axios.spread((...responses) => {
                const data = responses[0].data;
                const reviews = responses[1].data;
                const tracklist = responses[2].data;
                console.log(data);
                console.log(reviews);
                console.log(tracklist);
                res.render('album', { data, reviews, tracklist });
            })
        )
        .catch(err => {
            console.log("Error: ", err.message);
        });

});

// to get random three albums
app.get('/random', (req, res) => {
    let endpoint = 'https://spinhubapi-production.up.railway.app/?random';

    axios.get(endpoint).then(result => {

        let data = result.data;

        res.render('random', { data });
    })
        .catch(err => {
            console.log("Error: ", err.message);
        });
});

// search
app.post('/search', (req, res) => {
    let search = req.body.searchField;
    let endpoint = `https://spinhubapi-production.up.railway.app/?search=${search}`;

    axios.get(endpoint).then(results => {
        let data = results.data;
        res.render('explore', { data });
    })
        .catch(err => {
            console.log("Error: ", err.message);
        });
});

// to get all albums from two endpoints
app.post('/filterbygenre', (req, res) => {
    let id = req.body.genre_id;

    // if id is not set, set it to 8
    if (!id) {
        res.redirect('/explore');
    }


    let endpointOne = `https://spinhubapi-production.up.railway.app/?filter=${id}`;
    let endpointTwo = `https://spinhubapi-production.up.railway.app/?genreid=${id}`;

    const requestOne = axios.get(endpointOne);
    const requestTwo = axios.get(endpointTwo);

    axios.all([requestOne, requestTwo])
        .then(
            axios.spread((...responses) => {
                const data = responses[0].data;
                const genredata = responses[1].data;
                res.render('explore', { data, genredata });
            })
        )
        .catch(err => {
            console.log("Error: ", err.message);
        });

});

// sort by az
app.post('/sortbyaz', (req, res) => {
    let id = req.body.sortaz;

    let endpoint = `https://spinhubapi-production.up.railway.app/?az=${id}`;

    axios.get(endpoint).then(results => {
        let data = results.data;
        console.log(data);
        res.render('explore', { data });
    })
        .catch(err => {
            console.log("Error: ", err.message);
        });
});

// Sign In / Sign Up
app.get('/signin', (req, res) => {
    let message = "Please use your Spinhub credentials to log in to your account.";
    res.render('signin', { message });
});
app.get('/signup', (req, res) => {
    let message = "Please register your Spinhub credentials to create your account.";
    res.render('signup', { message });
});

app.get('/logout', function (req, res) {
    req.session.destroy(function (err) {
        if (err) {
            console.log(err);
        } else {
            res.redirect('/');
        }
    });
});

const config = {
    headers: {
    'Content-Type': 'application/x-www-form-urlencoded'
    }
}

app.post('/signin', function (req, res) {
    let username = req.body.usernameField;
    let password = req.body.passwordField;
    let status = req.body.status;

    if (status === "admin") {
        status = "admin";
    } else {
        status = "member";
    }


    const userD = {
        username: username,
        password: password,
        status: status
    };

    let endp = "https://spinhubapi-production.up.railway.app/?login";

    axios.post(endp, userD, config).then((response) => {
        let access = response.data.access;
        console.log(response.data);

        if (access === true) {
            let userid = response.data.metadata.userid;
            let mysession = req.session;
            mysession.auth = userid;
            mysession.status = response.data.metadata.status;
            mysession.username = response.data.metadata.username;
            status = response.data.metadata.status;
            res.redirect('/dashboard');
            console.log("Logged in");
        } else {
            res.render('signin', { message: "Invalid username or password" });
            console.log("Login failed");
        }
    });
});

app.post('/signup', function (req, res) {
    let username = req.body.usernameField;
    let password = req.body.passwordField;
    let firstname = req.body.firstnameField;
    let lastname = req.body.lastnameField;
    let email = req.body.emailField;
    let DoB = req.body.dateField;
    let phone = req.body.phoneField;


    const accountData = {
        username: username,
        password: password,
        firstname: firstname,
        lastname: lastname,
        email: email,
        DoB: DoB,
        phone_number: phone
    };

    const config = {
        headers: {
        'Content-Type': 'application/x-www-form-urlencoded'
        }
    }


    let endpoint = "https://spinhubapi-production.up.railway.app/?register";

    axios.post(endpoint, accountData, config).then((response) => {
        console.log(response.data);
        res.render('signin', { message: "Account created successfully. Please use your Spinhub credentials to log in to your account." });
    });
});

// Dashboard Routes
app.get('/dashboard', (req, res) => {
    let mysession = req.session;
    if (mysession.auth) {
        let id = mysession.auth;
        let getdata = `https://spinhubapi-production.up.railway.app/?memberid=${id}`;
        axios.get(getdata).then(results => {
            let data = results.data;
            console.log(data);
            let message = "Welcome to your dashboard";
            pass_message = 'You have successfully logged in to your account.'
            res.render('dashboard', { data, message, pass_message });
        })
            .catch(err => {
                console.log("Error: ", err.message);
            });
    } else {
        res.redirect('/signin');
    }
});

app.get('/dashboard/profile', (req, res) => {
    let mysession = req.session;
    if (mysession.auth) {
        let id = mysession.auth;
        let getdata = `https://spinhubapi-production.up.railway.app/?memberid=${id}`;
        axios.get(getdata).then(results => {
            let data = results.data;
            console.log(data);
            res.render('dashboard/profile', { data });
        })
            .catch(err => {
                console.log("Error: ", err.message);
            });
    } else {
        res.redirect('/signin');
    }
});

app.post('/dashboard/profile/update', (req, res) => {
    let firstname = req.body.firstnameField;
    let lastname = req.body.lastnameField;
    let email = req.body.emailField;
    let DoB = req.body.birthdayField;
    let phone = req.body.phonenumberField;

    let mysession = req.session;
    if (mysession.auth) {
        let userid = mysession.auth;
        console.log(userid);

        const accountData = {
            firstname: firstname,
            lastname: lastname,
            email: email,
            DoB: DoB,
            phone_number: phone,
            user_id: userid
        };

        const config = {
            headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
            }
        }

        let endpoint = `https://spinhubapi-production.up.railway.app/?memberupdate`;

        axios.post(endpoint, accountData, config).then((response) => {
            console.log(response.data);
            res.redirect('/dashboard/profile');
        });
    } else {
        res.redirect('/signin');
    }
});

app.get('/dashboard/members/', (req, res) => {

    let mysession = req.session;
    if (mysession.auth) {
        let endpointOne = `https://spinhubapi-production.up.railway.app/?memberlist`;
        let endpointTwo = `https://spinhubapi-production.up.railway.app/?albums`;

        const requestOne = axios.get(endpointOne);
        const requestTwo = axios.get(endpointTwo);

        axios.all([requestOne, requestTwo])
            .then(
                axios.spread((...responses) => {
                    const data = responses[0].data;
                    const data2 = responses[1].data;
                    console.log(data);
                    console.log(data2);
                    res.render('dashboard/members', { data, data2, message: "Users" });
                })
            )
            .catch(err => {
                console.log("Error: ", err.message);
            });
    } else {
        res.redirect('/signin');
    }

});

app.get('/dashboard/members/:id', (req, res) => {

    let mysession = req.session;

    if (mysession.auth) {
        let username = req.params.id;
        console.log(username);

        let endpointOne = `https://spinhubapi-production.up.railway.app/?memberlist`;
        let endpointTwo = `https://spinhubapi-production.up.railway.app/?memberalbums=${username}`;

        const requestOne = axios.get(endpointOne);
        const requestTwo = axios.get(endpointTwo);

        axios.all([requestOne, requestTwo])
            .then(
                axios.spread((...responses) => {
                    const data = responses[0].data;
                    const data2 = responses[1].data;
                    console.log(data);
                    console.log(data2);
                    res.render('dashboard/members', { data, data2, message: username });
                })
            )
            .catch(err => {
                console.log("Error: ", err.message);
            });
    } else {
        res.redirect('/signin');
    }

});

app.get('/dashboard/manage', (req, res) => {

    let mysession = req.session;
    if (mysession.auth) {
        let userid = mysession.auth;
        let endpoint = `https://spinhubapi-production.up.railway.app/?myalbums=${userid}`;


        axios.get(endpoint).then(result => {
            let data = result.data;

            res.render('dashboard/manage', { data, data2: "", message: "My albums", message2: "Create a new album",
                        crud: "Create album", action: "/dashboard/manage/newalbum" });
        })
            .catch(err => {
                {
                    console.log("Error: ", err.message);
                }
            });
    } else {
        res.redirect('/signin');
    }
});

// create a new album
app.post('/dashboard/manage/newalbum', (req, res) => {
    let album_title = req.body.album_title;
    let artist = req.body.artist;
    let genre = req.body.genre_id;
    let year = req.body.year;
    let img_url = req.body.img_url;

    let mysession = req.session;


    if (mysession.auth) {
        let id = mysession.auth;
        console.log(id);

        const update = {
            album_title: album_title,
            artist: artist,
            year: year,
            img_url: img_url,
            genre_id: genre,
            userid: id
        };

        const config = {
            headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
            }
        }

        let endpoint = "https://spinhubapi-production.up.railway.app/?addalbum";

        axios.post(endpoint, update, config).then((response) => {
            console.log(response.data);
            res.redirect('/dashboard/manage');
        });

    } else {
        res.redirect('/signin');
    }
});

// delete my album
app.post('/dashboard/manage/delete/:id', (req, res) => {
    let album_id = req.params.id;

    let mysession = req.session;

    if (mysession.auth) {
        userid = mysession.auth;

        const update = {
            album_id: album_id,
            userid: userid
        };

        const config = {
            headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
            }
        }

        let endpoint = "https://spinhubapi-production.up.railway.app/?deletealbum";

        axios.post(endpoint, update, config).then((response) => {
            let CRUD = response.data.message;
            console.log(CRUD);
            res.redirect('/dashboard/manage');
        });

    } else {
        res.redirect('/signin');
    }
});

// update my album with data
app.get('/dashboard/manage/update/:id', (req, res) => {
    let album_id = req.params.id;
    let mysession = req.session;

    if (mysession.auth) {
        userid = mysession.auth;

        // get single album data from two endpoints
        let endpointOne = `https://spinhubapi-production.up.railway.app/?myalbums=${userid}`;
        let endpointTwo = `https://spinhubapi-production.up.railway.app/?albumid=${album_id}`;

        const requestOne = axios.get(endpointOne);
        const requestTwo = axios.get(endpointTwo);

        axios.all([requestOne, requestTwo])
            .then(
                axios.spread((...responses) => {
                    const data = responses[0].data;
                    const data2 = responses[1].data;
                    res.render('dashboard/manage', { data, data2, message: "My albums", message2: "Edit album", crud: "Edit", action: "/dashboard/manage/update" });
                })
            )
            .catch(err => {
                console.log("Error: ", err.message);
            });
    } else {
        res.redirect('/signin');
    }
});

// update my album
app.post('/dashboard/manage/update', (req, res) => {
    let album_id = req.body.album_id;
    let album_title = req.body.album_title;
    let artist = req.body.artist;
    let genre = req.body.genre_id;
    let year = req.body.year;
    let img_url = req.body.img_url;

    let mysession = req.session;

    if (mysession.auth) {
        userid = mysession.auth;

        const update = {
            album_id: album_id,
            album_title: album_title,
            artist: artist,
            year: year,
            img_url: img_url,
            genre_id: genre,
            userid: userid
        };

        const config = {
            headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
            }
        }

        let endpoint = "https://spinhubapi-production.up.railway.app/?updatealbum";

        axios.post(endpoint, update, config).then((response) => {
            console.log(response.data);
            res.redirect('/dashboard/manage');
        });

    } else {
        res.redirect('/signin');
    }
});

// add tracks to tracklist
app.get('/dashboard/manage/addtracks/:id', (req, res) => {
    let album_id = req.params.id;
    let mysession = req.session;

    if (mysession.auth) {
        userid = mysession.auth;

        // get single album data from two endpoints
        let endpointOne = `https://spinhubapi-production.up.railway.app/?albumid=${album_id}`;
        let endpointTwo = `https://spinhubapi-production.up.railway.app/?tracklist=${album_id}`;

        const requestOne = axios.get(endpointOne);
        const requestTwo = axios.get(endpointTwo);

        axios.all([requestOne, requestTwo])
            .then(
                axios.spread((...responses) => {
                    const data = responses[0].data;
                    const tracklist = responses[1].data;

                    res.render('dashboard/addtracks', { data, message: "My albums", tracklist });
                })
            )
            .catch(err => {
                console.log("Error: ", err.message);
            });
    } else {
        res.redirect('/signin');
    }
});

// add tracks to tracklist using album_id
app.post('/dashboard/manage/addtracks/', (req, res) => {
    let album_id = req.body.album_id;
    let values = req.body.tracks;
    console.log(values);
    console.log(album_id);
    let mysession = req.session;

    if (mysession.auth) {
        userid = mysession.auth;

        const update = {
            title: values,
            album_id: album_id
        }


        const config = {
            headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
            }
        }

        let endpoint = "https://spinhubapi-production.up.railway.app/?addtrack";

        // iterate through values array and insert into database
        for (let i = 0; i < values.length; i++) {

            update.title = values[i];

            axios.post(endpoint, update, config).then((response) => {
                console.log(response.data);
            });
        }

                 res.redirect(`/dashboard/manage/addtracks/${album_id}?`);


    } else {
        res.redirect('/signin');
    }
});

// delete track from tracklist
app.get('/dashboard/manage/deletetrack/', (req, res) => {
    let id = req.query.id;
    let album_id = req.query.album_id;
    console.log(id);
    console.log(album_id);

    let mysession = req.session;

    if (mysession.auth) {
        userid = mysession.auth;

        // get single album data from two endpoints
        let endpointOne = `https://spinhubapi-production.up.railway.app/?deletetrack=${id}`;


        const requestOne = axios.get(endpointOne);

        axios.all([requestOne])
            .then(
                axios.spread((...responses) => {
                    const data = responses[0].data;
                    console.log(data.message);
                    res.redirect(`/dashboard/manage/addtracks/${album_id}?`);
                })
            )
            .catch(err => {
                console.log("Error: ", err.message);
            });
    } else {
        res.redirect('/signin');
    }
});


// get newsletter AND  reviews
app.get('/dashboard/newsletter', (req, res) => {
    let mysession = req.session;
    if (mysession.auth) {
        userid = mysession.auth;

        // get newsletter data from two endpoints
        let endpointOne = `https://spinhubapi-production.up.railway.app/?newsletter`;
        let endpointTwo = `https://spinhubapi-production.up.railway.app/?myreviews=${userid}`;

        const requestOne = axios.get(endpointOne);
        const requestTwo = axios.get(endpointTwo);

        axios.all([requestOne, requestTwo])
            .then(
                axios.spread((...responses) => {
                    const data = responses[0].data;
                    const reviews = responses[1].data;
                    res.render('dashboard/newsletter', { data, reviews, message: "Newsletter Subscribers", message2: "My reviews"});
                })
            )
            .catch(err => {
                console.log("Error: ", err.message);
            });
    } else {
        res.redirect('/signin');
    }
});

// subscribe to newsletter
app.post('/subscribe', (req, res) => {
    let email = req.body.emailField;

    const subscribe = {
        email: email
    };

    const config = {
        headers: {'Content-Type': 'application/x-www-form-urlencoded'}
    }

    let endpoint = "https://spinhubapi-production.up.railway.app/?subscribe";

    axios.post(endpoint, subscribe, config).then((response) => {
        console.log(response.data);
        res.redirect('/');
    });
});

// delete newsletter
app.post('/dashboard/newsletter/delete/:id', (req, res) => {
    let id = req.params.id;
    let mysession = req.session;
    if (mysession.auth) {

        const deleteNewsletter = {
            id: id
        };

        const config = {
            headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
            }
        }

        let endpoint = "https://spinhubapi-production.up.railway.app/?deletenewsletter";

        axios.post(endpoint, deleteNewsletter, config).then((response) => {
            console.log(response.data);
            res.redirect('/dashboard/newsletter');
        });

    } else {
        res.redirect('/signin');
    }
});

// delete admin review
app.post('/dashboard/newsletter/reviews/delete/:id', (req, res) => {
    let id = req.params.id;
    let mysession = req.session;
    if (mysession.auth) {

        const deleteReview = {
            id: id,
            userid: mysession.auth
        };

        const config = {
            headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
            }
        }

        let endpoint = "https://spinhubapi-production.up.railway.app/?deletereview";

        axios.post(endpoint, deleteReview, config).then((response) => {
            console.log(response.data);
            res.redirect('/dashboard/newsletter');
        });

    } else {
        res.redirect('/signin');
    }
});

// get reviews
app.get('/dashboard/reviews', (req, res) => {
    let mysession = req.session;

    if (mysession.auth) {
        userid = mysession.auth;
        let endpoint = `https://spinhubapi-production.up.railway.app/?myreviews=${userid}`;

        axios.get(endpoint).then((response) => {
            let reviews = response.data;
            console.log(reviews);
            res.render('dashboard/myreviews', { reviews, message2: "Reviews"});
        });
    } else {
        res.redirect('/signin');
    }
});

// delete user review
app.post('/dashboard/reviews/delete/:id', (req, res) => {
    let id = req.params.id;
    let mysession = req.session;
    if (mysession.auth) {

        const deleteReview = {
            id: id,
            userid: mysession.auth
        };

        const config = {
            headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
            }
        }

        let endpoint = "https://spinhubapi-production.up.railway.app/?deletereview";

        axios.post(endpoint, deleteReview, config).then((response) => {
            console.log(response.data);
            res.redirect('/dashboard/reviews');
        });

    } else {
        res.redirect('/signin');
    }
});

// to post review
app.post('/postreview', function (req, res) {
    let mysession = req.session;
    let id = req.query.id;

    if (mysession.auth) {
        let album_id = req.body.albumidField;
        let userid = mysession.auth;
        console.log(userid);
        let content = req.body.reviewField;

        const reviewdata = {
            album_id: album_id,
            userid: userid,
            content: content
        };

        const config = {
            headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
            }
        }

        let endpoint = "https://spinhubapi-production.up.railway.app/?postreview";

        axios.post(endpoint, reviewdata, config).then((response) => {
            console.log(response.data);
        });

        res.redirect(`/album?id=${album_id}`);
    } else {
        res.redirect(`/signin`);
    }
});

// change password
app.post('/dashboard/changepassword', (req, res) => {
    let mysession = req.session;
    if (mysession.auth) {

        let userid = mysession.auth;
        let oldpassword = req.body.currentPassword;
        let newpassword = req.body.newPassword;

        const changepassword = {
            id: userid,
            current_password: oldpassword,
            password: newpassword
        };

        const config = {
            headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
            }

        }

        let endpoint = "https://spinhubapi-production.up.railway.app/?changepassword";

        axios.post(endpoint, changepassword, config).then((response) => {
            console.log(response.data);
            pass_message = 'Your password has been successfully changed to: ' + newpassword;
            res.render('dashboard', { pass_message, message: "Welcome to your dashboard" });
        });

    } else {
        res.redirect('/signin');
    }
});

// delete your account
app.post('/dashboard/deleteaccount', (req, res) => {
    let mysession = req.session;
    if (mysession.auth) {

        const deleteAccount = {
            id: mysession.auth
        };

        const config = {
            headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
            }
        }

        let endpoint = "https://spinhubapi-production.up.railway.app/?deleteaccount";

        axios.post(endpoint, deleteAccount, config).then((response) => {
            console.log(response.data);
            res.redirect('/logout');
        });

    } else {
        res.redirect('/');
    }
});
app.listen(port, () => {
    console.log(`Server is listening on http://localhost:${port}/`); // Log the actual port
});

