<?php session_start();

include('administrator-session.php');
include('connect.php');
require_once('fns.php');
?>
<?php
$fullname = addslashes($_POST['fullname']);
$designation = addslashes($_POST['designation']);
$username = addslashes($_POST['username']);
$password = addslashes($_POST['password']);
$cpassword = addslashes($_POST['cpassword']);
$priviledge = addslashes($_POST['value']);



  include('connect.php');
  $query = "insert into login values ('', '".$fullname."', '".$designation."', '".$username."', '".$password."', '".$priviledge."')"; 
  $result = mysqli_query($connect, $query);
  if($result)
  {
	  
	
	//Log action	
	log_activity($_SESSION['admin_user'], "Added user $username");
	
	 $correct = 'New user created successfully';
	 include ('add_user.php');
  }
	 else
  {
	 $section = '<span class="glyphicon glyphicon-remove"></span> Error: Username already exist';
	 include ('add_user.php');
  }
?>
