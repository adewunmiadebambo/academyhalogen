<?php
include('acms/pages/connect.php');
require_once('acms/pages/fns.php');

$ip = getenv("REMOTE_ADDR");

$art = base64_decode($_GET['article']);

$qsReg = mysqli_query($connect, "select * from eventreg where ip = '$ip'");
$nsReg = mysqli_num_rows($qsReg);

$qsCour = mysqli_query($connect, "select * from events_page where id = '$art'");
$rsCour = mysqli_fetch_assoc($qsCour);

$qsEvent = mysqli_query($connect, "select * from events_page where id <> '$art' order by id desc limit 10");
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
<link rel="stylesheet" href="dist/css/flipclock.css">

<link rel="stylesheet" href="dist/css/bootstrap.css">
<script src="dist/js/jquery-2.2.js"></script>
<link href="dist/style.css" rel="stylesheet" type="text/css" media="all">
<link href="dist/style2.css" rel="stylesheet" type="text/css" media="all">

<link href="dist/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="dist/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">
<link rel="icon" href="images/favicon.png" />






<style>
body {
	background: none;
	background-size: contain;
}
#header  {
	background: #FFF;
}
</style>

<script src="dist/js/flipclock.js"></script>

<script type="text/javascript">
var clock;

$(document).ready(function() {
// Set dates.
var futureDate  = new Date("<?php echo date('F d, Y', strtotime($rsCour['date'])); ?> 07:00 AM");
var currentDate = new Date();

// Calculate the difference in seconds between the future and current date
var diff = futureDate.getTime() / 1000 - currentDate.getTime() / 1000;

// Calculate day difference and apply class to .clock for extra digit styling.
function dayDiff(first, second) {
return (second-first)/(1000*60*60*24);
}

if (dayDiff(currentDate, futureDate) < 100) {
$('.clock').addClass('twoDayDigits');
} else {
$('.clock').addClass('threeDayDigits');
}

if(diff < 0) {
diff = 0;
$('#regBTN').hide();
}

// Instantiate a coutdown FlipClock
clock = $('.clock').FlipClock(diff, {
clockFace: 'DailyCounter',
countdown: true
});
});
</script>

</head>
<body>


<?php include('inc/header.php'); ?>

<div id="inner">

<div class="container">

<div class="row">

<div class="col-12">
<h3 align="center"><?php echo $rsCour['title']; ?></h3>
</div>

</div>

</div>

</div>




<div id="h_banner">

<div class="about" style="background-image: url('acms/pages/<?php echo $rsCour['banner_url']; ?>'); background-position:center; height:250px">
<div class="about-info">
<div class="row">
<div class="col-md-7">

</div>
<div class="col-md-5">

</div>
</div>
</div>
</div>
</div>


<div id="serv" style="padding-top: 70px; background: #EDEDED;">
<div class="container" style="background: #fff;">

<div id="acc_info" style="margin-top: 30px;">
<div class="col-md-12"><br><br>
<!--<h1 style="margin: 0px; margin-bottom: 30px;"></h1>-->
<strong>Date:</strong> <?php echo date('F d, Y', strtotime($rsCour['date'])); ?><br><br>
<strong>Venue:</strong> <?php echo $rsCour['banner_text']; ?><br><br>
<strong>Time:</strong> <?php echo $rsCour['time']; ?>
<br>
<br>
</div>

<div style="padding-top: 40px; margin-bottom: 0px">
<div class="col-md-8">
<div align="center">
<div class="clock" style="margin-top:1em" ></div>
</div>
<br>
<br>
</div>
<div class="col-md-4" style="margin-top: 10px;">
<?php if($nsReg > 0){ ?>

<?php }else{ ?>
<a href="#" id="regBTN" data-toggle="modal" data-target="#myModal4" class="btn btn-sm button-white">Register for this event</a>
<?php } ?>
</div>

<div class="col-md-12">
<p align="justify"><?php echo $rsCour['content']; ?></p>
<br>
<br>
</div>
</div>
</div>
<br><br>
<br><br>
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
