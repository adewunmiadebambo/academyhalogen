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


if(!$fullname || !$designation || !$image_url || !$hierarchy)
{
	$error = 'all information is required';
	include ('add_management.php');
}


$query = "insert into management_team set 
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
			social_url5 = '$social_url5'"; 

$result = mysqli_query($connect, $query);
if($result)
{
	$correct = "Management Team $fullname has been added successfully";
	include ('add_management.php');
}
else
{
	$error = "Cannot create Management Team $fullname, please try again!";
	include ('add_management.php');
}
?>
