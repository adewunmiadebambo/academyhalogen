<?php
	include('connect.php');
	$id = base64_decode($_GET['id']);
	
	$query = "update activities set status = 'done' where id ='$id'";	
	$result = mysql_query($query);
	
	
?>
<script>
	alert("Task has been remove from Worforce Tracker");
</script>