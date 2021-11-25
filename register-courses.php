<?php
include('acms/pages/connect.php');
require_once('acms/pages/fns.php');

$title = base64_decode($_GET['course']);

$qsCour = mysqli_query($connect, "select * from courses where id = '$title'");
$rsCour = mysqli_fetch_assoc($qsCour);

?>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Academy Halogen</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="Description" content="">

<meta name="keywords" content="" />

<link rel="stylesheet" href="dist/css/bootstrap.css">
<script src="dist/js/jquery-2.2.js"></script>
<link href="dist/style.css" rel="stylesheet" type="text/css" media="all">

<link href="dist/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="dist/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">
<link rel="icon" href="images/favicon.png" />


<link href="dist/css/animate.css" rel="stylesheet">
<link href="dist/css/owl.carousel.css" rel="stylesheet">
<link href="dist/css/owl.transitions.css" rel="stylesheet">
<link href="dist/css/owl.theme.css" rel="stylesheet">


<style>

body {
	background: url(acms/pages/<?php echo $rsCour['banner_url']; ?>) no-repeat center 100px;;
	background-size: contain;
}
</style>




</head>
<body>


<?php include('inc/header.php'); ?>


<div id="h_banner">

<div class="about">
<div class="about-info">
<div class="row">
<div class="col-md-7">

</div>
<div class="col-md-5">
<div class='custom-about'>
<h3><?php echo $rsCour['title']; ?></h3>
</div>
</div>
</div>
</div>
</div>
</div>


<div id="services">
<div class="container">
<div class="breadcrumbs">
<ol class="breadcrumb">
<li><a href="./">Home</a></li>
<li class="active">Our Courses</li>
</ol>
</div>




	
<div id="acc_info">


<div class="row">
<div class="container">
<div class="col-md-2"></div>     

<div class="col-md-8">
	<h1 style="margin: 0px; margin-bottom: 30px;"><?php echo $rsCour['title']; ?></h1>

<form class="form-horizontal" action="#" method="post">
<div class="form-group">
<label>Name:</label>
<input type="text" class="form-control" name="name" value="<?php echo $name; ?>" required>
</div>
<div class="form-group">
<label>Email address:</label>
<input type="email" class="form-control" name="email" value="<?php echo $email; ?>" required>
</div>
<div class="form-group">
<label>Password:</label>
<input type="password" class="form-control" name="password" required>
</div>
<div class="form-group">
<label>Phone Number:</label>
<input type="text" class="form-control" name="phone" value="<?php echo $phone; ?>" required>
</div>
<div class="form-group">
<label>Programme:</label>
<input type="text" class="form-control" name="phone" value="<?php echo $rsCour['mp_title']; ?>" required>
</div>
<div class="form-group">
<label>Course:</label>
<input type="text" class="form-control" name="phone" value="<?php echo $rsCour['title']; ?>" required>
</div>
<div class="form-group">
<button type="submit" name="submitAlumni" class="btn btn-default">Register</button>
</div>
</form>
	
</div>

<div class="col-md-2"></div> 

</div>
</div>


	
</div>





</div>
</div>



<?php include('inc/footer2.php'); ?>
  
  
  
<script src="dist/js/bootstrap.min.js"></script>

<script src="dist/js/owl.carousel.min.js"></script>
<script src="dist/js/wow.min.js"></script>
<script src="dist/js/main.js"></script>
</body>
</html>