<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');



$opass = $_POST['opass'];
$password = $_POST['password'];
$confirm = $_POST['confirm'];

if(!$opass || !$password || !$confirm)
{
	$error = 'Kindly Enter all information';
	include('change-pass.php');
	exit;
}

if($password != $confirm)
{
	$error = 'Password Mismatch: Please check your new password';
	include('change-pass.php');
	exit;
}

$query = "select * from login where username = '".$_SESSION['MM_Username']."'";			
$result = mysqli_query($connect, $query);
$row = mysqli_fetch_array($result);


if($opass == $row['password']) {	
	
	$query = "update login set password = '$password' where username = '".$_SESSION['MM_Username']."'";
	$result = mysqli_query($connect, $query);

	$correct = 'Your new password has been updated.';
	include('change-pass.php');
	exit;
	
} else {
	
	$error = 'Your current password is incorrect. Please try again';
	include('change-pass.php');
	exit;
	
}

?>