<?php session_start();

include('administrator-session.php');
include('connect.php');
require_once('fns.php');
?>
<?php
$firstname = addslashes($_POST['firstname']);
$lastname = addslashes($_POST['lastname']);
$phone = addslashes($_POST['phone']);
$password = addslashes($_POST['password']);
$filename = $_POST['filename'];
$id = $_POST['id'];



   include('connect.php');
  
  $query = "update profile set
  			firstname = '$firstname',
			lastname = '$lastname',
			phone = '$phone',
			password = '$password' where id = '$id'";
  
  
  $result = mysqli_query($connect, $query);
  if($result)
  {
	 
 
  $userfile = $_FILES['userfile']['tmp_name'];
  // $userfile_name is original file name
  $userfile_name = $_FILES['userfile']['name'];

 	
	$ext = get_extension($userfile_name);
	$dbImage = $filename.'.'.$ext;

  $upfile = 'uploads/profile/'.$dbImage;
  
	move_uploaded_file($userfile, $upfile);
	
	
	
	//update filename in database
	$query3 = "update profile set filename = '$dbImage' where id = '$id'";
	mysqli_query($connect, $query3);
	
	$correct = 'User has been Successfully edited';
	 include ('registered_user.php');
}
else
{
$section = 'dberror';
include ('master-page.php');
}
?>
