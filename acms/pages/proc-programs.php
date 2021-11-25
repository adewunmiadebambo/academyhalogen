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


if(!$title || !$content)
{
	$error = 'All information required';
	include ('add_programs.php');
	exit;
}


$query = "insert into programs set
			title = '$title',
			mp_title = '$mp_title',
			keyword = '$keyword',
			content = '$content',
			banner_url = '$banner_url',
			ext_link = '$ext_link'";


$result = mysqli_query($connect, $query);
if($result)
{
	$correct = "$title Added Successfully";
	include ('add_programs.php');
}
else
{
	$error = "Cannot add $title now, please try again";
	include('add_programs.php');
	exit;
}
?>
