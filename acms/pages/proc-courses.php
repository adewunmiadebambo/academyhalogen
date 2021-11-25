<?php
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
$mp_title = addslashes($_POST['mp_title']);
$days = addslashes($_POST['days']);
$price = addslashes($_POST['price']);
$loc = addslashes($_POST['location']);
$content = addslashes($_POST['content']);
$banner_url = trim($_POST['banner_url']);
$ext_link = addslashes($_POST['publish']);



$query = "insert into courses set
			title = '$title',
			mp_title = '$mp_title',
			days = '$days',
			price = '$price',
			location = '$loc',
			content = '$content',
			banner_url = '$banner_url',
			ext_link = '$ext_link'";


$result = mysqli_query($connect, $query);
if($result)
{
	$correct = "$title Added Successfully";
	include ('add_courses.php');
}
else
{
	$error = "Cannot add $title now, please try again";
	include('add_courses.php');
	exit;
}
?>
