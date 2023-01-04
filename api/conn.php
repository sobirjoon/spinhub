<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

//XAMMP is null/empty, MAMP is "root"
$passw="";

//declare MySQL username
$user = "root";

//declare webserver
$webserver = "localhost";

//declare DB that inside your MySQL
$db = "spinhub2";

//mysqli api library in PHP to connect to the DB
$conn = new mysqli($webserver, $user, $passw, $db);

if($conn->connect_error){
    echo "Connection failed: ".$conn->connect_error;
}