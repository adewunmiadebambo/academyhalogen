<?php
session_start();
require('connect.php');
require_once('fns.php');

$user = $_POST['username'];
$pass = $_POST['password'];

if (!$user || !$pass)
{
$error = 'Enter credentials before you login';
 include('login.php');
 exit;
}


$query = "select * from login where
              username = '$user' and
              password = '$pass'";

    $result = mysqli_query($connect,  $query );
    $num = mysqli_num_rows($result);
    $row = mysqli_fetch_array($result);
    if(!$result)
    {
      echo 'Cannot run query.';
      exit;
    }

    if ( $num > 0 )
    {
      // visitor's name and password combination are correct
	  $_SESSION['admin_user'] = $user;
    $_SESSION['priviledge'] = $row['priviledge'];
	
	//Log action
	log_activity($user, 'Logged in');
	
      include('index.php');
    }
    else
    {
      // visitor's name and password combination are not correct
    $error = 'Login failed - Please try again';
 include('login.php');
    }

?>