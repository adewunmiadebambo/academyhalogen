<?php

$host_name = "localhost";
$database = "halogensec_academy2";
$user_name = "halogensec_academy";
$password = "certification231";
$connect = mysqli_connect($host_name, $user_name, $password, $database);

if (mysqli_connect_errno()) {
    die('<p>Failed to connect to mysqli: '.mysqli_connect_error().'</p>');
} else {

}

date_default_timezone_set("Africa/Lagos");
?>