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
$priviledge = addslashes($_POST['value']);


$id = $_POST['id'];



   include('connect.php');
  
  $query = "update login set
  			fullname = '$fullname', 
			designation = '$designation', 
  			password = '$password', 
  			priviledge = '$priviledge' where id = '$id'";
  
  
  $result = mysqli_query($connect, $query);
  if($result)
  {
	 
	log_activity($_SESSION['admin_user'], "Edited $username profile");
	
	$correct = 'User has been edited successfully';
	 include ('edit_user.php');
}
else
{
$section = 'dberror';
include ('master-page.php');
}
?>
