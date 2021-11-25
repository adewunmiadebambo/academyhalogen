<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
$banner_caption = addslashes($_POST['banner_caption']);
$banner_type = addslashes($_POST['banner_type']);
$description = addslashes($_POST['description']);
$button_url = addslashes($_POST['button_url']);
$image_url = addslashes($_POST['image_url']);
$ext_link = addslashes($_POST['ext_link']);


if(!$title || !$content || !$banner_caption)
{
	$error = 'All information required';
	include ('banner.php');
	exit;
}


$query = "insert into banner set
			title = '$title',
			banner_caption = '$banner_caption',
			banner_type = '$banner_type',
			description = '$description',
			button_url = '$button_url',
			image_url = '$image_url',
			ext_link = '$ext_link'"; 


$result = mysqli_query($connect, $query);
if($result)
{
	$correct = 'Banner Added Successfully';
	include ('banner.php');
}
else
{
	$error = 'Cannot add Banner now, please try again';
	include('banner.php');
	exit;
}
?>
