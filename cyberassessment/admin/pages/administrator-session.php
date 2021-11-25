<?php
if(!$_SESSION['MM_Username'])
{
	$error = 'Session has expired. Kindly login again';
	include('login.php');	
	exit;
}
?>