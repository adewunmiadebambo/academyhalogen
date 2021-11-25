<?php
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
$mp_title = addslashes($_POST['mp_title']);
$keyword = addslashes($_POST['keyword']);
$content = addslashes($_POST['content']);
$banner_url = trim($_POST['banner_url']);
$ext_link = addslashes($_POST['publish']);
$id = addslashes($_POST['id']);


if(!$title || !$content)
{
	$error = 'All information required';
	include ('edit_programs.php');
	exit;
}


$query = "update programs set
			title = '$title',
			mp_title = '$mp_title',
			keyword = '$keyword',
			content = '$content',
			banner_url = '$banner_url',
			ext_link = '$ext_link' where id = '$id'";


$result = mysqli_query($connect, $query);
if($result)
{
	$correct = "Changes has been made on $title Page Successfully";
	include ('add_programs.php');
}
else
{
	$error = "Cannot Edit $title page now, please try again";
	include('edit_programs.php');
	exit;
}
?>
