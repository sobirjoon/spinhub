const express = require('express');
const app = express();
app.set('view engine', 'ejs');
const axios = require('axios');
app.use(express.urlencoded({ extended: true }));
app.use(express.static(__dirname + '/public'));

const cookieParser = require('cookie-parser');
const session = require('express-session');
const oneHour = 1000 * 60 * 60 * 1;
app.use(cookieParser());
app.use(session({
    secret: "40353633",
    saveUninitialized: true,
    cookie: { maxAge: oneHour },
    resave: false
}));


// Routes
app.get('/', (req, res) => {
    res.render('index');
});


app.get('/login', (req, res) => {
    let message = "Please use your Spinhub credentials to log in to your account.";
    res.render('signin', { message });
});

const config = {
    headers: {
    'Content-Type': 'application/x-www-form-urlencoded'
    }
}
app.post('/login', function (req, res) {
    let username = req.body.usernameField;
    let password = req.body.passwordField;
    const userD = {
        username: username,
        password: password,
    };
    let endp = "http://localhost/spinhub/api/?login";

    axios.post(endp, userD, config).then((response) => {
        let access = response.data.access;
        console.log(response.data);

        if (access === true) {
            let userid = response.data.metadata.userid;
            let mysession = req.session;
            mysession.authentication = userid;
            res.redirect('/dashboard');
            console.log("Logged in");
        } else {
            res.render('signin', { message: "Invalid username or password" });
            console.log("Login failed");
        }
    });
});

//#####################################################################################

app.get('/dashboard',(req,res) => {
    let sessionobj = req.session;
    if(sessionobj.authentication){
        res.render('dashboard');
    }else{
        res.redirect('/login');
    }
 });

app.get('/dashboard/profile', (req, res) => {
    let mysession = req.session;
    if(!mysession.authentication){
        res.redirect('/login');
    }

    let id = mysession.authentication;
    let getdata = `http://localhost/spinhub/api/?memberid=${id}`;
    axios.get(getdata).then(results => {
        let data = results.data;
        console.log(data);
        res.render('/dashboard', { data });
    })
    .catch(err => {
        console.log("Error: ", err.message);
    });
});


// to get all albums
app.get('/explore', (req, res) => {

    let endpoint = 'http://localhost/spinhub/api/?albums';
    axios.get(endpoint).then(result => {

        let data = result.data;

        res.render('explore', { data });
    })
        .catch(err => {
            console.log("Error: ", err.message);
        });
});

// to get the single album
app.get('/album', (req, res) => {
    let id = req.query.id;
    let getdata = `http://localhost/spinhub/api/?albumid=${id}`;

    axios.get(getdata).then(results => {
        let data = results.data;
        res.render('album', { data });
    })
        .catch(err => {
            console.log("Error: ", err.message);
        });

});

// to post review
app.post('/search', (req, res) => {
    let search = req.body.searchField;
    let endpoint = `http://localhost/spinhub/api/?search=${search}`;

    axios.get(endpoint).then(results => {
        let data = results.data;
        res.render('explore', { data });
    })
        .catch(err => {
            console.log("Error: ", err.message);
        });
});

app.post('/sortbygenre', (req, res) => {
    let genrename = req.body.value;
    let endpoint = `http://localhost/spinhub/api/?search=${search}`;

    axios.get(endpoint).then(results => {
        let data = results.data;
        res.render('explore', { data });
    })
        .catch(err => {
            console.log("Error: ", err.message);
        });
});




app.listen(process.env.PORT || 3000);
console.log('Server is listening on  localhost:3000/');