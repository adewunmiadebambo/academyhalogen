<?php
session_start();
include("Connection/connect.php");
include('fns.php');
require_once('acms/pages/fns.php');

if(!$_SESSION['alumni']){
header('Location: member-login');
exit;	
}

$qsProfile = mysqli_query($connect, "select * from alumni where email = '".$_SESSION['alumni']."'");
$rsProfile = mysqli_fetch_assoc($qsProfile);

if($_GET['topic']){
	
$topic = mysqli_real_escape_string($connect, base64_decode($_GET['topic']));
	
$qsTopic = mysqli_query($connect, "select * from topic where topic = '$topic'");
$rsTopic = mysqli_fetch_assoc($qsTopic);	
	
$qsComment = mysqli_query($connect, "select * from comments where topic = '$topic' order by id desc");
$nsComment = mysqli_num_rows($qsComment);
	
	
}

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

<link href="dist/autoptimize.css" rel="stylesheet" type="text/css" media="all">
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


<div id="alumni_banner">
<div class="container">
<div class="row">
<div class="col-md-10">
<h1 style="color: white;">Dashboard</h1>
</div>
<div class="col-md-1"></div>
</div>
</div>
</div>


<div id="alumni_tab">
<div class="container">
<div class="breadcrumbs">
<ol class="breadcrumb">
<li><a href="./">Home</a></li>
<li>Alumni</li>
</ol>
</div>
</div>




<div class="alumni_info" style="background: #FFF;">

<div class="tops-bottom">
<div class="container">	
<ul class="nav nav-tabs" style="background: #fff">
<li class="active"><a data-toggle="tab" href="#v_collections">Topics</a></li>
<li><a href="alumni-dashboard">Back to Dashboard</a></li>
</ul>
</div>


<div class="container-fluid tab-content" style="background: #F0F0F0; margin-left: -20px; margin-right: -9px;">
<!-- /#Vintage Collections Starts-->
<div id="v_collections" class="tab-pane fade in active">   
<?php if($_GET['topic']){ ?>
<div class="container" style="margin-top: 50px;">
<?php if($_GET['post']){ ?>
<div class="alert alert-success alert-dismissible" role="alert">
<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
</button>
<strong>Well done!</strong> You successfully posted your comment.
</div>
<?php } ?>
<?php if($_GET['error']){ ?>
<div class="alert alert-info alert-dismissible" role="alert">
<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
</button>
<strong>Error!</strong> comment not posted.
</div>
<?php } ?>
<p style="margin-bottom: 50px;"><span style="font-size: 40px;"><?php echo $topic; ?></span> <span class="pull-right"><?php echo $rsProfile['name']; ?><br><?php echo date('F d, Y', strtotime($rsTopic['date'])); ?></span></p>	
<?php for($c=0; $c<$nsComment; $c++){ 
$rsComment = mysqli_fetch_assoc($qsComment);	
?>
<div style="margin-bottom: 70px;">
<p style="font-weight: lighter"><?php echo $rsComment['comment']; ?><br><br><?php echo $rsComment['name']; ?><br><?php echo date('F d, Y', strtotime($rsComment['date'])); ?></p>		
</div>
<?php } ?>

<form method="post" action="processComment" style="margin-bottom: 70px;">
<div class="form-group">
<input type="text" name="name" class="form-control" value="<?php echo $rsProfile['name']; ?>" />	
</div>
<div class="form-group">
<textarea name="comment" class="form-control" rows="3"></textarea>
</div>	
<div class="form-group">
<input type="hidden" name="topic" value="<?php echo $topic; ?>" />
<input type="submit" name="submitComment" value="Submit">
</div>
</form>
</div>

<?php } ?>			
</div>
<!-- /#Vintage Collections Ends Here-->

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