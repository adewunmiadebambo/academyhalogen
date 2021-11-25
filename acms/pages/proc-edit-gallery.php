<?php
session_start();
include('connect.php');
include('administrator-session.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
$image_url = addslashes($_POST['image_url']);
$album_id = addslashes($_POST['album_id']);
$content = addslashes($_POST['content']);
$ext_link = addslashes($_POST['ext_link']);
$id = addslashes($_POST['id']);


if(!$title || !$album_id || !$image_url)
{
	$error = 'All fields must be entered before submitting';
	include('edit_gallery.php');
	exit;
}

$query = "update photo_gallery set
			title = '$title',
			image_url = '$image_url',
			album_id = '$album_id',
			content = '$content',
			ext_link = '$ext_link' where id = '$id'";

		
$result = mysqli_query($connect, $query);
if($result)
{
	$correct = 'Photo Gallery has been added successfully';		
	include('add_gallery.php');
	exit;
}
else
{
	$error = 'Cannot process Photo Gallery, please try again';
	include('edit_gallery.php');	
	exit;
}
?>