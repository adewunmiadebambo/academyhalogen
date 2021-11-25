<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$page_title = addslashes($_POST['page_title']);
$content = addslashes($_POST['content']);
$img_url = addslashes($_POST['img_url']);
$ext_link = addslashes($_POST['ext_link']);
$id = addslashes($_POST['id']);


if(!$page_title || !$content)
{
	$error = 'All information required';
	include ('edit.php');
	exit;
}


$query = "update home_page set
			title = '$page_title',
			content = '$content',
			image_url = '$img_url',
			ext_link = '$ext_link' where id = '$id'"; 


$result = mysqli_query($connect, $query);
if($result)
{
	$correct = 'Homepage Content Edited Successfully';
	include ('add_homepage.php');
}
else
{
	$error = 'Cannot Edit Homepage Content now, please try again';
	include('edit.php');
	exit;
}
?>
