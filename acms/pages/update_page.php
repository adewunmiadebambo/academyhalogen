<?php session_start();

include('administrator-session.php');
include('connect.php');
require_once('fns.php');
?>
<?php
$title = addslashes($_POST['title']);
$content = addslashes($_POST['content']);
$summary = $content;
$filename = $_POST['filename'];
$id = $_POST['id'];



   include('connect.php');
  
  $query = "update masterpage set
  			title = '$title',
			summary = '$summary',
			content = '$content' where id = '$id'";
  
  
  $result = mysqli_query($connect, $query);
  if($result)
  {
	 
 if($result)
  {
  $userfile = $_FILES['userfile']['tmp_name'];
  // $userfile_name is original file name
  $userfile_name = $_FILES['userfile']['name'];

 	
	$ext = get_extension($userfile_name);
	$dbImage = $filename.'.'.$ext;

  $upfile = 'uploads/pages/'.$dbImage;
  
	move_uploaded_file($userfile, $upfile);
	
	
	
	//update filename in database
	$query3 = "update masterpage set filename = '$dbImage' where id = '$id'";
	mysqli_query($connect, $query3);
	
  }
	
	log_activity($_SESSION['admin_user'], "Updated page $title");
	
	$correct = 'Page has been edited';
	 include ('edit_page.php');
}
else
{
$section = 'dberror';
include ('master-page.php');
}
?>
