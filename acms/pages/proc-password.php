<?php
session_start();

include('connect.php');

$password = $_POST['password'];
$confirm = $_POST['confirm'];

if(!$password || !$confirm)
{
	$error = 'Kindly enter your new password and confimation before you continue';
	include('change_pass.php');
	exit;
}

if($password != $confirm)
{
	$error = 'Error: Your password and confirmation are not the same';
	include('change_pass.php');
	exit;
}

$query = "update login set password = '$password'	where username = '".$_SESSION['admin_user']."'";
			
$result = mysqli_query($connect, $query);
if($result)
{
	
	log_activity($_SESSION['admin_user'], "Edited self password");
	
	$correct = 'Your new password has been updated.';
	include('change_pass.php');
	exit;
}

?>