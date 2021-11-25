<?php
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
$userfile = $_FILES['userfile']['tmp_name'];
$userfile_name = $_FILES['userfile']['name'];

$size = round(filesize($userfile) / 1024, 0).' KB'; // kilobytes with two digits 


if(!$title || !$userfile)
{
	$error = "All information is required!";
	include('add_image.php');
}


if(checkfile($userfile_name, 'pics') == 'error')
{
	$error = "The image you are uploading must be a JPG";
	include('add_image.php');
	exit;	
}



$query = "insert into image_manager set title = '$title', filename = '', file_size = '$size'"; 
$result = mysqli_query($connect, $query);
if($result)
{
//Get the most recent entered data
$query2 = "select * from image_manager order by id desc";
$result2 = mysqli_query($connect, $query2);
$row2 = mysqli_fetch_array($result2);
$id = $row2['id'];
$title2 = $row2['title'];



$ext = get_extension($userfile_name);
$dbImage = $title2.'.'.$ext;
		

$upfile = 'uploads/'.$dbImage;

if(move_uploaded_file($userfile, $upfile));
{
	$query = "update image_manager set filename = '$dbImage' where id = '$id'";
	$result = mysqli_query($connect, $query);
	if($result)
	{
		$correct = 'Image has been added to successfully';
		include ('add_image.php');
		exit;
	}else
	{
		$error = "Image not uploaded successfully, please check the image size!";
		include('add_image.php');
		exit;	
	}
}


$correct = 'Picture has been added to gallery successfully';
include ('add_image.php');
exit;
}
else
{
$error = "Cannot upload image now, please try again!";
include('add_image.php');
exit;	
}
?>
