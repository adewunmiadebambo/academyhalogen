<?php session_start();

include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
$summary = addslashes($_POST['summary']);
$content = addslashes($_POST['content']);
$banner_url = addslashes($_POST['banner_url']);
$keyword = addslashes($_POST['keyword']);
$id = $_POST['id'];

$qs = mysqli_query($connect, "select * from programmes where id = '$id'");
$rs = mysqli_fetch_assoc($qs);


if(!$title || !$content)
{
	$error = 'All information required';
	include ('edit_programme.php');
}


$query = "update programmes set
			title = '$title',
			summary = '$summary',
			content = '$content',
			banner_url = '$banner_url',
			keyword = '$keyword' where id = '$id'";

mysqli_query($connect, "update courses set
			mp_title = '$title' where mp_title = '{$rs['title']}'");


$result = mysqli_query($connect, $query);
if($result)
{
	$correct = 'Programme has been edited successfully';
	include ('view_programme.php');
}
else
{
	$section = 'Cannot edit Programme at this time, please try again!';
	include ('edit_programme.php');
}
?>
