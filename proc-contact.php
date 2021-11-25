<?php





$name = addslashes($_POST['name']);


$email = addslashes($_POST['email']);


$phone = addslashes($_POST['phone']);


$message = addslashes($_POST['message']); 





$newemail = 'New email from Academy\'s website';








			$body = 'Name:' .$name."\n"





    	 	.'Email:' .$email."\n"





    		.'Phone:' .$phone."\n"





    		.'Message:' .$message."\n"; 





    mail("info@academyhalogen.com",$newemail,$body); 


   // mail("info@avant.com",$newemail,$body); 



?>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">





<html xmlns="http://www.w3.org/1999/xhtml">





<head>





<script>alert("Your message has been sent successfully. We will contact you shortly.");</script>





<meta HTTP-EQUIV="REFRESH" content="0; url=contact"> 











</head>


