<?php
header("Content-type: application/json");


// auth user
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_GET['login'])){

    include("conn.php");

    $username = $_POST['username'];
    $password = $_POST['password'];
    $status = $_POST['status'];

    $loginsql = "SELECT * FROM auth_user WHERE username='$username'AND password='$password' AND status='$status'";

    $result = $conn->query($loginsql);

    if(!$result) { echo $conn->error; exit();}

    $num = $result -> num_rows;

    if($num > 0){
        $userdata = $result -> fetch_assoc();
        $data['access'] = true;
        $data['metadata'] = $userdata;
        echo json_encode($data);

    } else {
        $data['access'] = false;
        $data['userdata'] = "Access denied.";
        echo json_encode($data);
    }
}

// register user and member info
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_GET['register'])){
    include("conn.php");

    $username = $_POST['username'];
    $password = $_POST['password'];
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $email = $_POST['email'];
    $DoB = $_POST['DoB'];
    $phone = $_POST['phone_number'];

    $duplicateSQL = "SELECT * FROM auth_user WHERE username='$username'";
    $duplicateResult = $conn->query($duplicateSQL);
    if ($conn->error) { echo $conn->error; exit();}
    $usernamefound = $duplicateResult->num_rows;

    if ($usernamefound > 0) {
        $username = $duplicateResult->fetch_assoc();
        $userid = $username['userid'];
        //echo "<p>Username already exist with ID: $userid</p>";

        if($username){
            $feedback['message'] = "Account created exist with ID: $userid";
            echo json_encode($feedback);

        }

    } else {
        $insert_1sttable = "INSERT INTO auth_user (username, password) VALUES ('$username', '$password')";
        $result1 = $conn->query($insert_1sttable);
        if ($conn-> error) {echo $conn -> error; exit();}

        $userid = $conn->insert_id;

        $insert_2ndtable = "INSERT INTO member_info (firstname, lastname, email, DoB, phone_number, user_id)
        VALUES ('$firstname', '$lastname', '$email', '$DoB', '$phone', '$userid')";

        $result2 = $conn->query($insert_2ndtable);
        if ($conn-> error) {echo $conn -> error; exit();}

        if($result2){
            $feedback['message'] = "Account created exist with ID: $userid";
            echo json_encode($feedback);

        } else {
            $feedback['message'] = "Registration failed.";
            $feedback['SQL'] = $conn->error;
            echo json_encode($feedback);
        }
    }

}

// member info
if(isset($_GET['memberid'])){
    include("conn.php");

    $all = "SELECT member_info.*, auth_user.username
            FROM member_info
            INNER JOIN auth_user
            ON member_info.user_id = auth_user.userid
            WHERE user_id = ".$_GET['memberid'];

    $result = $conn->query($all);

    if(!$result){
        echo $conn->error;
        exit();
    }

    $data = $result -> fetch_assoc();
    $response = json_encode($data);
    echo $response;
}

// member update
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_GET['memberupdate'])){

    include("conn.php");

    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $email = $_POST['email'];
    $dob = $_POST['DoB'];
    $phone = $_POST['phone_number'];
    $userid = $_POST['user_id'];

    $updatesql = "UPDATE member_info SET firstname='$firstname', lastname='$lastname', email='$email', DoB='$dob', phone_number='$phone'WHERE user_id='$userid'";

    // echo $sql;

    $result = $conn->query($updatesql);

    if($result){
        $feedback['message'] = "Update granted.";
        echo json_encode($feedback);

    } else {
        $feedback['message'] = "Update denied.";
        $feedback['SQL'] = $conn->error;
        echo json_encode($feedback);
    }
}

// album
if(isset($_GET['albums'])){
    include("conn.php");

    $all = "SELECT album.album_id, album.album_title, album.artist, album.year, album.img_url, genre.name
            FROM album
            INNER JOIN genre
            ON album.genre_id = genre.id ";
    $result = $conn->query($all);
    if(!$result){
        echo $conn->error;
        exit();
    }
    $data = array();
    while($row=$result->fetch_assoc()){
        $data[] = $row;
    }
    $response = json_encode($data);
    echo $response;
}

// album by id
if(isset($_GET['albumid'])){
    include("conn.php");

    $id = $_GET['albumid'];
    $album =   "SELECT album.album_id, album.album_title, album.artist, album.year, album.img_url, genre.name, album.genre_id
                FROM album
                INNER JOIN genre
                ON album.genre_id = genre.id
                WHERE album.album_id='$id'";

    $result = $conn->query($album);
    if(!$result) {
        echo $conn->error;
        exit();
    }
    $data = $result -> fetch_assoc();
    $response = json_encode($data);
    echo $response;
}

// to get random three albums
if(isset($_GET['random'])){
    include("conn.php");

    $all = "SELECT album.album_id, album.album_title, album.artist, album.year, album.img_url, genre.name
            FROM album
            INNER JOIN genre
            ON album.genre_id = genre.id
            ORDER BY RAND()
            LIMIT 6";

    $result = $conn->query($all);
    if(!$result){
        echo $conn->error;
        exit();
    }
    $data = array();
    while($row=$result->fetch_assoc()){
        $data[] = $row;
    }
    $response = json_encode($data);
    echo $response;
}

// get my albums
if(isset($_GET['myalbums'])){
    include("conn.php");

    // to retrieve data from album table and genre table and join them together using third table
   $id = $_GET['myalbums'];

   $all = "SELECT *
            FROM my_albums
            INNER JOIN album
            ON my_albums.album_id = album.album_id
            INNER JOIN genre
            ON album.genre_id = genre.id
            WHERE my_albums.userid = '$id'
            ORDER BY my_albums.album_id DESC";

    $result = $conn->query($all);
    if(!$result){
        echo $conn->error;
        exit();
    }

    $data = array();
    while($row=$result->fetch_assoc()){
        $data[] = $row;
    }
    $response = json_encode($data);
    echo $response;
}

// get all from genre table
if(isset($_GET['genreid'])){
    include("conn.php");
    $id = $_GET['genreid'];
    $all = "SELECT * FROM genre WHERE id = '$id'";
    $result = $conn->query($all);
    if(!$result){
        echo $conn->error;
        exit();
    }

    $data = $result -> fetch_assoc();
    $response = json_encode($data);
    echo $response;
}

// get tracks by album id
if(isset($_GET['tracklist'])){
    include("conn.php");

    $id = $_GET['tracklist'];
    $all = "SELECT * FROM tracklist WHERE album_id = '$id' ORDER BY id DESC";
    $result = $conn->query($all);
    if(!$result){
        echo $conn->error;
        exit();
    }
    $data = array();
    while($row=$result->fetch_assoc()){
        $data[] = $row;
    }
    $response = json_encode($data);
    echo $response;
}

// delete single track
if(isset($_GET['deletetrack'])){
    include("conn.php");

    $id = $_GET['deletetrack'];
    $sql = "DELETE FROM tracklist WHERE id = '$id'";

    $result = $conn->query($sql);

    if($result){
        $feedback['message'] = "Track deleted.";
        echo json_encode($feedback);
    } else {
        $feedback['message'] = "Track not deleted.";
        $feedback['SQL'] = $conn->error;
        echo json_encode($feedback);
    }

}

// add tracks to tracklist as many as user want
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_GET['addtrack'])){

    include("conn.php");

    $tracktitle = $_POST['title'];
    $albumid = $_POST['album_id'];

    $sql = "INSERT INTO tracklist (title, album_id) VALUES ('$tracktitle', '$albumid')";

    $result = $conn->query($sql);

    if($result){
        $feedback['message'] = "Track added.";
        echo json_encode($feedback);
    } else {
        $feedback['message'] = "Track not added.";
        $feedback['SQL'] = $conn->error;
        echo json_encode($feedback);
    }
}

// create new album and add album to my album with duplicate check
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_GET['addalbum'])){

    include("conn.php");

    $albumtitle = $_POST['album_title'];
    $artist = $_POST['artist'];
    $year = $_POST['year'];
    $imgurl = $_POST['img_url'];
    $genreid = $_POST['genre_id'];
    $userid = $_POST['userid'];

    $check = "SELECT * FROM album WHERE album_title='$albumtitle'AND artist='$artist'AND year='$year'AND img_url='$imgurl'AND genre_id='$genreid'";
    $result = $conn->query($check);

    if($result->num_rows > 0){
        $feedback['message'] = "Album already exist.";
        echo json_encode($feedback);
    } else {
        $insert = "INSERT INTO album (album_title, artist, year, img_url, genre_id)
        VALUES ('$albumtitle', '$artist', '$year', '$imgurl', '$genreid')";

        $result = $conn->query($insert);
        if ($conn-> error) {echo $conn -> error; exit();}

        $albumid = $conn->insert_id;

        $insert_2ndtable = "INSERT INTO my_albums (album_id, userid)
        VALUES ('$albumid', '$userid')";

        $result2 = $conn->query($insert_2ndtable);
        if ($conn-> error) {echo $conn -> error; exit();}

        if($result2){
            $feedback['message'] = "Album added to my album.";
            echo json_encode($feedback);

        } else {
            $feedback['message'] = "Album not added to my album.";
            $feedback['SQL'] = $conn->error;
            echo json_encode($feedback);
        }
    }
}

// update my album
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_GET['updatealbum'])){

    include("conn.php");

    $albumid = $_POST['album_id'];
    $albumtitle = $_POST['album_title'];
    $artist = $_POST['artist'];
    $year = $_POST['year'];
    $imgurl = $_POST['img_url'];
    $genreid = $_POST['genre_id'];
    $userid = $_POST['userid'];

    $check = "SELECT * FROM album WHERE album_title='$albumtitle'AND artist='$artist'AND year='$year'
              AND img_url='$imgurl'AND genre_id='$genreid'";
    $result = $conn->query($check);
    if($result->num_rows > 0){
        $feedback['message'] = "Album already exist.";
        echo json_encode($feedback);

    } else {
        $update_1sttable = "UPDATE album SET album_title='$albumtitle', artist='$artist', year='$year', img_url='$imgurl', genre_id='$genreid'
                            WHERE album_id='$albumid'";
        $result1 = $conn->query($update_1sttable);
        if ($conn-> error) {echo $conn -> error; exit();}

        if($result1){
            $feedback['message'] = "Album updated.";
            echo json_encode($feedback);

        } else {
            $feedback['message'] = "Album not updated.";
            $feedback['SQL'] = $conn->error;
            echo json_encode($feedback);
        }
    }
}

// delete album from my album
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_GET['deletealbum'])){

    include("conn.php");

    $albumid = $_POST['album_id'];
    $userid = $_POST['userid'];

    $delete_1sttable = "DELETE FROM album WHERE album_id='$albumid'";
    $result1 = $conn->query($delete_1sttable);
    if ($conn-> error) {echo $conn -> error; exit();}

    $delete_2ndtable = "DELETE FROM my_albums WHERE album_id='$albumid'AND userid='$userid'";

    $result2 = $conn->query($delete_2ndtable);
    if ($conn-> error) {echo $conn -> error; exit();}

    if($result2){
        $feedback['message'] = "Album deleted.";
        echo json_encode($feedback);

    } else {
        $feedback['message'] = "Album not deleted.";
        $feedback['SQL'] = $conn->error;
        echo json_encode($feedback);
    }
}

// get all album by member username
if(isset($_GET['memberalbums'])){
    include("conn.php");

    $username = $_GET['memberalbums'];
    $album =   "SELECT username, album_title, artist, year, img_url, genre.name, username, my_albums.album_id
                FROM my_albums
                INNER JOIN album
                ON my_albums.album_id = album.album_id
                INNER JOIN genre
                ON album.genre_id = genre.id
                INNER JOIN auth_user
                ON my_albums.userid = auth_user.userid
                WHERE auth_user.username = '$username'
                ORDER BY my_albums.album_id DESC";

    $result = $conn->query($album);
    if(!$result){
        echo $conn->error;
        exit();
    }

    $data = array();
    while($row=$result->fetch_assoc()){
        $data[] = $row;
    }
    $response = json_encode($data);
    echo $response;
}

// get member list
if(isset($_GET['memberlist'])){
    include("conn.php");

    $id = $_GET['memberlist'];

    //SQL query to get member list by A-Z

    $member =   "SELECT username FROM auth_user
                WHERE username LIKE '$id%'
                ORDER BY username ASC";

    $result = $conn->query($member);
    if(!$result) {
        echo $conn->error;
        exit();
    }
    $data = array();
    while($row=$result->fetch_assoc()){
        $data[] = $row;
    }
    $response = json_encode($data);
    echo $response;
}

// get a review & insert a review
if(isset($_GET['reviewid'])){
    include("conn.php");

    $id = $_GET['reviewid'];
    $album =   "SELECT reviews.*, auth_user.username
                FROM reviews
                INNER JOIN auth_user
                ON reviews.userid = auth_user.userid
                WHERE album_id='$id'
                ORDER BY reviews.id DESC";

    $result = $conn->query($album);
    if(!$result) {
        echo $conn->error;
        exit();
    }
    $data = array();
    while($row=$result->fetch_assoc()){
        $data[] = $row;
    }
    $response = json_encode($data);
    echo $response;
}

// get my review with album details
if(isset($_GET['myreviews'])){
    include("conn.php");

    $id = $_GET['myreviews'];
    $album =   "SELECT reviews.*, auth_user.username, album.album_title, album.artist
                FROM reviews
                INNER JOIN auth_user
                ON reviews.userid = auth_user.userid
                INNER JOIN album
                ON reviews.album_id = album.album_id
                WHERE reviews.userid='$id'
                ORDER BY reviews.id DESC";

    $result = $conn->query($album);
    if(!$result) {
        echo $conn->error;
        exit();
    }
    $data = array();
    while($row=$result->fetch_assoc()){
        $data[] = $row;
    }
    $response = json_encode($data);
    echo $response;
}


// delete a review
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_GET['deletereview'])){

    include("conn.php");

    $id = $_POST['id'];

    $delete_1sttable = "DELETE FROM reviews WHERE id='$id'";
    $result1 = $conn->query($delete_1sttable);
    if ($conn-> error) {echo $conn -> error; exit();}

    if($result1){
        $feedback['message'] = "Review deleted.";
        echo json_encode($feedback);

    } else {
        $feedback['message'] = "Review not deleted.";
        $feedback['SQL'] = $conn->error;
        echo json_encode($feedback);
    }
}

// insert a review
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_GET['postreview'])){

    include("conn.php");

    $albumid = $_POST['album_id'];
    $userid = $_POST['userid'];
    $review = $_POST['content'];

    $registersql = "INSERT INTO reviews (album_id, userid, content)
                    VALUES ('$albumid', '$userid', '$review')";

    // echo $sql;

    $result = $conn->query($registersql);

    if($result){
        $feedback['message'] = "Review granted.";
        echo json_encode($feedback);

    } else {
        $feedback['message'] = "Review denied.";
        $feedback['SQL'] = $conn->error;
        echo json_encode($feedback);
    }
}

// subscribe to newsletter
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_GET['subscribe'])){

    include("conn.php");

    $email = $_POST['email'];
    $date = date("Y-m-d");

    $registersql = "INSERT INTO newsletter (email, date)
                    VALUES ('$email', '$date')";

    $result = $conn->query($registersql);

    if($result){
        $feedback['message'] = "Subscribed.";
        echo json_encode($feedback);

    } else {
        $feedback['message'] = "Not subscribed.";
        $feedback['SQL'] = $conn->error;
        echo json_encode($feedback);
    }
}

// get newsletter list
if(isset($_GET['newsletter'])){
    include("conn.php");

    $newsletter =   "SELECT * FROM newsletter";

    $result = $conn->query($newsletter);
    if(!$result) {
        echo $conn->error;
        exit();
    }
    $data = array();
    while($row=$result->fetch_assoc()){
        $data[] = $row;
    }
    $response = json_encode($data);
    echo $response;
}


// delete a email from newsletter
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_GET['deletenewsletter'])){

    include("conn.php");

    $id = $_POST['id'];

    $delete_1sttable = "DELETE FROM newsletter WHERE id='$id'";
    $result1 = $conn->query($delete_1sttable);
    if ($conn-> error) {echo $conn -> error; exit();}

    if($result1){
        $feedback['message'] = "Email deleted.";
        echo json_encode($feedback);

    } else {
        $feedback['message'] = "Email not deleted.";
        $feedback['SQL'] = $conn->error;
        echo json_encode($feedback);
    }
}

// search
if(isset($_GET['search'])){
    include("conn.php");

    $search = $_GET['search'];
    $all = "SELECT album.album_id, album.album_title, album.artist, album.year, album.img_url, genre.name
            FROM album
            INNER JOIN genre
            ON album.genre_id = genre.id
            WHERE album_title LIKE '%$search%'OR artist LIKE '%$search%'";
    $result = $conn->query($all);
    if(!$result){
        echo $conn->error;
        exit();
    }
    $data = array();
    while($row=$result->fetch_assoc()){
        $data[] = $row;
    }
    $response = json_encode($data);
    echo $response;
}

// filter
if(isset($_GET['filter'])){
    include("conn.php");

    $filter = $_GET['filter'];
    $all = "SELECT album.album_id, album.album_title, album.artist, album.year, album.img_url, genre.name
            FROM album
            INNER JOIN genre
            ON album.genre_id = genre.id
            WHERE genre_id = '$filter'";
    $result = $conn->query($all);
    if(!$result){
        echo $conn->error;
        exit();
    }
    $data = array();
    while($row=$result->fetch_assoc()){
        $data[] = $row;
    }
    $response = json_encode($data);
    echo $response;
}

// A - Z
if(isset($_GET['az'])){
    include("conn.php");
    $asc= $_GET['az'];
    $all = "SELECT album.album_id, album.album_title, album.artist, album.year, album.img_url, genre.name
            FROM album
            INNER JOIN genre
            ON album.genre_id = genre.id
            ORDER BY $asc ASC";
    $result = $conn->query($all);
    if(!$result){
        echo $conn->error;
        exit();
    }
    $data = array();
    while($row=$result->fetch_assoc()){
        $data[] = $row;
    }
    $response = json_encode($data);
    echo $response;
}

// change password
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_GET['changepassword'])){

    include("conn.php");

    $id = $_POST['id'];
    $current_password = $_POST['current_password'];
    $password = $_POST['password'];

    $update_1sttable = "UPDATE auth_user SET password='$password' WHERE userid='$id' and password='$current_password'";
    $result1 = $conn->query($update_1sttable);
    if ($conn-> error) {echo $conn -> error; exit();}

    if($result1){
        $feedback['message'] = "Password changed.";
        echo json_encode($feedback);

    } else {
        $feedback['message'] = "Password not changed.";
        $feedback['SQL'] = $conn->error;
        echo json_encode($feedback);
    }
}

//delete my account
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_GET['deleteaccount'])){

    include("conn.php");

    $id = $_POST['id'];

    $delete_1sttable = "DELETE FROM auth_user WHERE userid='$id'";
    $result1 = $conn->query($delete_1sttable);
    if ($conn-> error) {echo $conn -> error; exit();}

    if($result1){
        $feedback['message'] = "Account deleted.";
        echo json_encode($feedback);

    } else {
        $feedback['message'] = "Account not deleted.";
        $feedback['SQL'] = $conn->error;
        echo json_encode($feedback);
    }
}