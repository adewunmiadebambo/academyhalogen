<?php
include('acms/pages/connect.php');
require_once('acms/pages/fns.php');

$art = $_GET['article'];

$qsCour = mysqli_query($connect, "select * from news_page where id = '$art'");
$rsCour = mysqli_fetch_assoc($qsCour);

$qsEvent = mysqli_query($connect, "select * from news_page where id <> '$art' order by date desc limit 10");
$nsEvent = mysqli_num_rows($qsEvent);

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
<link href="dist/style2.css" rel="stylesheet" type="text/css" media="all">

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
	background: none;
	background-size: contain;
}
#header  {
	background: #FFF;
}
</style>




</head>
<body>


<?php include('inc/header.php'); ?>


<!--<div id="inner_banner">
    <div class="container">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">
            <h1>Our Courses</h1>
            <h2></h2>
            </div>
            <div class="col-md-1"></div>
        </div>
    </div>
</div>-->


<div id="" style="margin-top: 100px;">
<div class="container">
<div class="row" style="margin-top: 60px;">
<div class="col-md-3 recent">
<div id="alumni_news_area">
<div id="panel-2146-0-0-3" class="so-panel widget_sayidan_blocks_widget" data-index="3" >
<div class="so-widget-sayidan_blocks_widget so-widget-sayidan_blocks_widget-default-d75171398898">
<div class="block-links">
<div class="container">
<div class="row">
<div class="block-event-calendar col-md-4 col-sm-12 col-xs-12">
<div class="column-calendar" >
<div class="title-links">
<h3 class="heading-regular">Recent News</h3></div>
<div class="content-calendar bg-calendar no-padding" style="background: #fff;">
<div class="list-view">
<?php for($n=0; $n<$nsEvent; $n++){
$rsEvent = mysqli_fetch_assoc($qsEvent);
?>
<div class="view-item">
<div class="date-item">
<span class="dates text-light"><?php echo date('F', strtotime($rsEvent['date']))?></span>
<span class="day text-bold color-theme"><?php echo date('d', strtotime($rsEvent['date']))?></span>
<span class="month text-light"><?php echo date('Y', strtotime($rsEvent['date']))?></span>
</div>

<div class="date-desc-wrapper">
<div class="date-desc">
<div class="date-title">
<h6 class="heading-regular"><a href="#"><?php echo $rsEvent['title']; ?></a></h6>
</div>
<div class="place"> <span class="icon map-eye"></span> <span class="text-place"><a href="read-more?article=<?php echo $rsEvent['id']; ?>" style="color:#ea6224">Read More &gt;</a></span></div></div></div></div>
<?php } ?>
</div>

</div></div></div></div></div></div></div></div>




</div>

</div>
<div class="col-md-7">
<h1 style="margin: 0px; margin-bottom: 30px;"><?php echo $rsCour['title']; ?></h1>
<?php echo date('F d, Y', strtotime($rsCour['date'])); ?>
<br>
<br>
<br>
<img src="acms/pages/<?php echo $rsCour['banner_url']; ?>" class="img-responsive" width ="500" style="margin-bottom: 30px;">

<p align="justify"><?php echo $rsCour['content']; ?></p>
<br><br>

</div>
<div class="col-md-2"></div>
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
