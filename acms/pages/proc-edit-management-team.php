<?php session_start();

include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$fullname = addslashes($_POST['fullname']);
$designation = addslashes($_POST['designation']);
$image_url = addslashes($_POST['image_url']);
$hierarchy = addslashes($_POST['hierarchy']);
$content = addslashes($_POST['content']);
$facebook_url = addslashes($_POST['facebook_url']);
$twitter_url = addslashes($_POST['twitter_url']);
$linkedin_url = addslashes($_POST['linkedin_url']);
$instagram_url = addslashes($_POST['instagram_url']);
$social_url1 = addslashes($_POST['social_url1']);
$social_url2 = addslashes($_POST['social_url2']);
$social_url3 = addslashes($_POST['social_url3']);
$social_url4 = addslashes($_POST['social_url4']);
$social_url5 = addslashes($_POST['social_url5']);
$social_url5 = addslashes($_POST['social_url5']);
$id = addslashes($_POST['id']);


if(!$fullname || !$designation || !$image_url || !$hierarchy)
{
	$error = 'all information is required';
	include ('edit_management.php');
}


$query = "update management_team set 
			fullname = '$fullname',
			designation = '$designation',
			image_url = '$image_url',
			hierarchy = '$hierarchy',
			content = '$content',
			facebook_url = '$facebook_url',
			twitter_url = '$twitter_url',
			linkedin_url = '$linkedin_url',
			instagram_url = '$instagram_url',
			social_url1 = '$social_url1',
			social_url2 = '$social_url2',
			social_url3 = '$social_url3',
			social_url4 = '$social_url4',
			social_url5 = '$social_url5' where id = '$id'"; 

$result = mysqli_query($connect, $query);
if($result)
{
	$correct = "Changes on Management Team $fullname is successfull";
	include ('view_management.php');
}
else
{
	$error = "Cannot make changes on Management Team $fullname now, please try again!";
	include ('edit_management.php');
}
?>
