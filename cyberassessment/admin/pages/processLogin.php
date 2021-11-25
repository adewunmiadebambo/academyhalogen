<?php
session_start();
ob_start();
require_once('connect.php');

$username = mysqli_real_escape_string($connect, $_POST['username']);
$password = mysqli_real_escape_string($connect, $_POST['password']);

if(!$username || !$password)
{
header("Location: index.php?fieldlogin=error");
exit;		
}


$query = "select * from login where username='$username' and password='$password'";
$result = mysqli_query($connect, $query);
$num_result = mysqli_num_rows($result);
$row = mysqli_fetch_array($result);

if($num_result > 0)
{
$_SESSION['MM_Username'] = $username;

header("Location: dashboard.php");
exit;
}
else
{
header("Location: index.php?login=error");
exit;	
}

?>