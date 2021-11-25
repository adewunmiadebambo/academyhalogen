<?php session_start();

include('administrator-session.php');
include('connect.php');
require_once('fns.php');
?>
<?php
$testimonial_type = addslashes($_POST['testimonial_type']);
$content = addslashes($_POST['content']);
$author = addslashes($_POST['author']);
$filename = $_POST['filename'];
$filename = date('U');

$id = $_POST['id'];



   include('connect.php');
  
  $query = "update testimonials set 
			author = '$author', 
			filename = '$filename', 
			content = '$content',  
			testimonial_type = '$testimonial_type' where id = '$id'";
  
  
  $result = mysqli_query($connect, $query);
  if($result)
  {
	  
   $userfile = $_FILES['userfile']['tmp_name'];
  // $userfile_name is original file name
  $userfile_name = $_FILES['userfile']['name'];

 	
	$ext = get_extension($userfile_name);
	$dbImage = $filename.'.'.$ext;

  $upfile = 'uploads/testimonial/'.$dbImage;
  
	move_uploaded_file($userfile, $upfile);
	
	
	
	//update filename in database
	$query3 = "update testimonials set filename = '$dbImage' where id = '$id'";
	mysqli_query($connect, $query3);
	
	
	log_activity($_SESSION['admin_user'], "Edited testimonial by $author");
	
	$correct = 'Page has been edited';
	 include ('edit_testimonial.php');
}
else
{
$section = 'dberror';
include ('master-page.php');
}
?>
