<?php session_start();

include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
$summary = addslashes($_POST['summary']);
$content = addslashes($_POST['content']);
$banner_url = addslashes($_POST['banner_url']);
// $keyword = addslashes($_POST['keyword']);


if(!$title || !$content)
{
	$error = 'all information is required';
	include ('add_school.php');
}


$query = "insert into school set
			title = '$title',
			summary = '$summary',
			content = '$content',
			banner_url = '$banner_url',
			keyword = '$keyword'";

$result = mysqli_query($connect, $query);
if($result)
{
	$correct = 'School has been added successfully';
	include ('add_school.php');
}
else
{
	$error = 'Cannot add school now, please try again!';
	include ('add_school.php');
}
?>
