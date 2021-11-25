<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$id = $_POST['id'];
$firstname = $_POST['firstname'];
$surname = $_POST['surname'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$password = $_POST['password'];
$p_email = $_POST['pemail'];
$kinname = $_POST['kinname'];
$kinphone = $_POST['kinphone'];
$employer = $_POST['employer'];
$code = $_POST['code'];

$qsHome = mysqli_query($connect, "update member_update set verified = 'y' where id = '$id'");

$to = $email;
$subject = "Subject: Member Update";
$from = "noreply@oandocoop.com";

$reply = 'Good day,' . "\n"
			.'Your online account has been reviewed and approved for Website access'."/n"
			.'You can visit the website at www.oandocoop.com and login'."/n"
			.'Your login details are '.$email.' as username and password is '.$password .' while user unique code is '.$code;


mail($to, $subject, $reply, $from);

header("Location: member-approval.php?saved=Y&name=$firstname&query=$qsHome");


?>