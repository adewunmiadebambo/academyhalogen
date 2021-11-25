<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
$banner_text = addslashes($_POST['banner_text']);
$keyword = addslashes($_POST['keyword']);
$content = addslashes($_POST['content']);
$banner_url = trim($_POST['banner_url']);
$ext_link = addslashes($_POST['ext_link']);
$id = addslashes($_POST['id']);


if(!$title || !$content || !$banner_text)
{
	$error = 'All information required';
	include ('edit_masterpage.php');
	exit;
}


$query = "update master_page set
			title = '$title',
			banner_text = '$banner_text',
			keyword = '$keyword',
			content = '$content',
			banner_url = '$banner_url',
			ext_link = '$ext_link' where id = '$id'"; 


$result = mysqli_query($connect, $query);
if($result)
{
	$correct = 'Homepage Content Edited Successfully';
	include ('masterpage.php');
}
else
{
	$error = 'Cannot Edit Homepage Content now, please try again';
	include('edit_masterpage.php');
	exit;
}
?>
