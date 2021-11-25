<?php
if($_SESSION['priviledge'] != 'administrator')
{
	$error = 'You cannot access the selected page, Please login with the right priviledge';
	include('login.php');	
	exit;
}
?>