<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$banner_type = addslashes($_POST['banner_type']);
$title = addslashes($_POST['title']);
$description = addslashes($_POST['description']);
$button_caption = addslashes($_POST['button_caption']);
$button_url = addslashes($_POST['button_url']);
$image_url = trim($_POST['image_url']);
$ext_link = addslashes($_POST['ext_link']);
$id = base64_decode($_POST['id']);


if(!$title || !$image_url)
{
	$error = 'Title and Image URL is required';
	include ('banner.php');
	exit;
}


$query = "update banner set
			banner_type = '$banner_type',
			title = '$title',
			description = '$description',
			button_caption = '$button_caption',
			button_url = '$button_url',
			image_url = '$image_url',
			ext_link = '$ext_link' where id = '$id'";


$result = mysqli_query($connect, $query);
if($result)
{
	$correct = 'Banner Updated Successfully';
	include ('banner.php');
}
else
{
	$error = 'Cannot add Banner now, please try again';
	include('banner.php');
	exit;
}
?>
