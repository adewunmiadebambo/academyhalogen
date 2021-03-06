<?php 
session_start();
include('connect.php');
require_once('fns.php');

if(!$_SESSION['MM_Username']){
header('Location: ./');
exit;
}
?>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<link rel="icon" href="../../images/favicon.ico" />
<title>Academy Halogen</title>

<!-- Bootstrap Core CSS -->
<link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

</head>

<body>

<div id="wrapper">

<?php include('top-nav.php'); ?>

<?php include('my-nav.php'); ?>
<!-- /.navbar-static-side -->

<!-- Page Content -->
<div id="page-wrapper">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12">
<h1 class="page-header">Dashboard<br>
</h1>
</div>
<!-- /.col-lg-12 -->
</div>
<div class="row">
<div class="col-lg-3 col-md-6">
<div class="panel panel-info">
<div class="panel-heading">
<div class="row">
<div class="col-xs-3">
<i class="fa fa-users fa-5x"></i>
</div>
<div class="col-xs-9 text-right">
<div>Applicants</div>
</div>
</div>
</div>
<a href="applicants.php">
<div class="panel-footer">
<span class="pull-left">View page</span>
<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
<div class="clearfix"></div>
</div>
</a>
</div>
</div>
	
	


	
<!--<div class="col-lg-3 col-md-6">
<div class="panel panel-info">
<div class="panel-heading">
<div class="row">
<div class="col-xs-3">
<i class="fa fa-paperclip fa-5x"></i>
</div>
<div class="col-xs-9 text-right">
<div>Add Content</div>
</div>
</div>
</div>
<a href="add-content.php">
<div class="panel-footer">
<span class="pull-left">Update page</span>
<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
<div class="clearfix"></div>
</div>
</a>
</div>
</div>-->

</div>

<!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="../bower_components/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../dist/js/sb-admin-2.js"></script>

</body>

</html>
