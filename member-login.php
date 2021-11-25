<?php

include('acms/pages/connect.php');

require_once('acms/pages/fns.php');



?>

<!doctype html>

<html>

<head>
<?php include('analytics.php'); ?>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Alumni - Academy Halogen</title>

<meta name="viewport" content="width=device-width, initial-scale=1">



<meta name="Description" content="">



<meta name="keywords" content="" />



<link rel="stylesheet" href="dist/css/bootstrap.css">

<script src="dist/js/jquery-2.2.js"></script>

<link href="dist/style.css" rel="stylesheet" type="text/css" media="all">
<link href="dist/style2.css" rel="stylesheet" type="text/css" media="all">



<link href="dist/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<link href="dist/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">

<link rel="icon" href="images/favicon.png" />





<link href="dist/css/animate.css" rel="stylesheet">

<link href="dist/css/owl.carousel.css" rel="stylesheet">

<link href="dist/css/owl.transitions.css" rel="stylesheet">

<link href="dist/css/owl.theme.css" rel="stylesheet">





<style>

body {

	background: url(images/inner_banner.jpg) center 100px no-repeat;

	background-size: contain;

}

#header  {

	background: #FFF;

}

</style>







</head>

<body>





<?php include('inc/header.php'); ?>



<div id="e_learning2" style="margin-top: 100px;">

<div class="container-fluid">

<div class="row">

<div class="col-md-6">



</div>

<div class="col-md-1"></div>

<div class="col-md-4">

<h1 class="alum_log">Alumni Log in</h1>

<form class="form-horizontal" action="processLogin" method="post">

<div class="form-group">

<label>Reg No:</label>

<input type="text" class="form-control" name="matric" id="email">

</div>

<div class="form-group">

<label>Password:</label>

<input type="password" class="form-control" name="password" id="pwd">

</div>

<div class="form-group">

<div class="checkbox">

<label><input type="checkbox"> Remember me</label>

</div>

</div>

<div class="form-group">

<button type="submit" class="btn btn-default"> LOGIN </button>

</div>

</form>

</div>

<div class="col-md-1"></div>

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
