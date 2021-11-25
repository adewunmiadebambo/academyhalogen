<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$name = mysqli_real_escape_string($connect, $_POST["name"]);

$content = mysqli_real_escape_string($connect, $_POST["content"]);

$userfile = $_FILES['userfile']['tmp_name'];

$userfile_name = $_FILES['userfile']['name'];


if(!$name || !$userfile)
{
	$error_ = "All informatioon is required!";
	include('add-event.php');
}



/*if(checkfile($userfile_name, 'pics') == 'error')
{
	$error_ = "The image you are uploading must be a JPG";
	include('add-category.php');
	exit;	
}*/




$query = "insert into events set event_name = '$name', banner_img = '$name', content = '$content'"; 
$result = mysqli_query($connect, $query);


$dbImage = $name.'.'.'jpg';

$upfile = 'uploads/'.$dbImage;

if (move_uploaded_file($userfile, $upfile));

{

	$query = "update events set banner_img = '$dbImage' where event_name = '$name' ";

	$result = mysqli_query($connect, $query);
	
	if($result){
	
	$correct_ = 'Event Has Successfully Been Created  ';
	include('add-event.php');	
	}else{
	$error_ = "All information is required";
	include('add-event.php');
	exit;	

	}
	
}






?>