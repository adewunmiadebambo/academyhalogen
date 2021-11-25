<?php
session_start();
include('connect.php');
$data = $_POST['file'];
$handle = fopen($data, "r");
$test = file_get_contents($data);
if ($handle) {
    $counter = 0;
    //instead of executing query one by one,
    //let us prepare 1 SQL query that will insert all values from the batch
    $sql ="INSERT INTO alumni(name, matric, email, password, phone, sex, class_year, course, passport, date) VALUES ";
	
    while (($line = fgets($handle)) !== false) {
      $sql .= "($line),";
      $counter++;
    }
	
    $sql = substr($sql, 0, strlen($sql) - 1);	
     if ((mysqli_query($connect, $sql) === TRUE)) {

    } else {
     }
    fclose($handle);
} else {  
} 
//unlink CSV file once already imported to DB to clear directory
unlink($data);
?>