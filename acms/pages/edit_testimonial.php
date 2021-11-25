<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
$link = addslashes($_POST['link']);
$content = addslashes($_POST['content']);
$img_url = addslashes($_POST['img_url']);
$ext_link = addslashes($_POST['ext_link']);
$id = addslashes($_POST['id']);


if(!$title || !$img_url)
{
	$error = 'All information required';
	include ('edit_testimony.php');
	exit;
}


$query = "update testimonial set
			title = '$title',
			link = '$link',
			content = '$content',
			image_url = '$img_url',
			ext_link = '$ext_link' where id = '$id'"; 


$result = mysqli_query($connect, $query);
if($result)
{
	$correct = 'Client Edited Successfully';
	include ('add_testimonial.php');
}
else
{
	$error = 'Cannot Edit Client now, please try again';
	include('edit_testimony.php');
	exit;
}
?>
