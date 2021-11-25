<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');



$id = $_POST['id'];
$firstname = $_POST['firstname'];
$surname = $_POST['surname'];
$employer = $_POST['employer'];
$pemail = $_POST['pemail'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$address = $_POST['address'];
$kinname = $_POST['kinname'];
$kinaddress = $_POST['kinaddress'];
$kinphone = $_POST['kinphone'];

$qsHome = mysqli_query($connect, "update signup_application set name = '$firstname', surname='$surname', pemail='$pemail', email='$email', phone='$phone', address='$address', kinname='$kinname', kinaddress='$kinaddress', kinphone='$kinphone' where id = '$id'");

header("Location: membership.php?saved=Y&name=$firstname");


?>