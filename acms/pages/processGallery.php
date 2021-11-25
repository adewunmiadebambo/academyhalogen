<?php require_once('connect.php'); 
require_once('SimpleImage.php');

//initialize the session
if (!isset($_SESSION)) {
session_start();
}

// Max size PER file in KB
$max_file_size="1000000";

// Max size for all files COMBINED in KB
$max_combined_size="1000000";

//Maximum file uploades at one time
if(isset($_GET['uploads']))
$file_uploads=$_GET['uploads'];

// Path to store files on your server If this fails use $fullpath below. With trailing slash.
$folder="../../../wp-content/gallery/";

// Use random file names? true=yes (recommended), false=use original file name.
// Random names will help prevent files being denied because a file with that name already exists.
$random_name=false;

// Types of files that are acceptiable for uploading. Keep the array structure.
$allow_types=array("jpg","png");

$allowed_types= "jpg png";

// Initialize variables
$error="";
$success="";
$display_message="";
$file_ext=array();

// Function to get the extension a file.
function get_ext($key) { 
$key=strtolower(substr(strrchr($key, "."), 1));
$key=str_replace("jpeg","jpg",$key);
return $key;
}

// Filename security cleaning. Do not modify.
function cln_file_name($string) {
$cln_filename_find=array("/\.[^\.]+$/", "/[^\d\w\s-]/", "/\s\s+/", "/[-]+/", "/[_]+/");
$cln_filename_repl=array("", ""," ", "-", "_");
$string=preg_replace($cln_filename_find, $cln_filename_repl, $string);
return trim($string);
}

if(isset($_POST['title'])){

$title = mysqli_real_escape_string($connect, $_POST['title']);
	
}

$countfiles = count($_FILES['file']['name']);

// Looping all files
for($i=0;$i<$countfiles;$i++){


// If a file actually exists in this key
if(($_FILES['file']['name'][$i])) {

//Get the file extension
$file_ext[$i]=get_ext($_FILES['file']['name'][$i]);

// Randomize file names
if($random_name){
$file_name[$i]=time()+rand(0,100000);
} else {
$file_name[$i]=cln_file_name($_FILES['file']['name'][$i]);
}
	
if($_FILES['file']['size'][$i] > 50000000) {
header('Location: gallery?size=uploads');
exit;
}

if(move_uploaded_file($_FILES['file']['tmp_name'][$i],$folder.$file_name[$i].".".$file_ext[$i])){
	
$upfile1 = $folder.$file_name[$i].".".$file_ext[$i];

$image = new SimpleImage();
$image->load($upfile1);
$image->resizeToWidth(700);
$image->resizeToHeight(700);
$image->save($upfile1);

$sql=mysqli_query($connect, "INSERT INTO gallery (title, picture) VALUES ('$title', '$file_name[$i].$file_ext[$i]');");	

header('Location: gallery?msg=uploads');
	
}else{

header('Location: gallery?fail=uploads');
	
}

}// If Files

} // For

?>