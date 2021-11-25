<?php

include('acms/pages/connect.php');

require_once('acms/pages/fns.php');

$mp = $_GET['mp'];

$pid = $_GET['pid'];

$ptitle = $_GET['ptitle'];

?>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo page_title($mp,$pid); ?> Academy Halogen</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="Description" content="">

<meta name="keywords" content="" />

<link rel="stylesheet" href="dist/css/bootstrap.css">
<!-- <script src="dist/js/jquery-2.2.js"></script> -->
<script src="dist/js/jquery.3.4.1.min.js"></script>
<script src="js/bootstrap.min2.js"></script>
<link href="dist/style.css" rel="stylesheet" type="text/css" media="all">
<link href="dist/style2.css" rel="stylesheet" type="text/css" media="all">

<link href="dist/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="dist/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">
<link rel="icon" href="images/favicon.png" />


<link href="dist/css/animate.css" rel="stylesheet">
<link href="dist/css/owl.carousel.css" rel="stylesheet">
<link href="dist/css/owl.transitions.css" rel="stylesheet">
<link href="dist/css/owl.theme.css" rel="stylesheet">

<style media="screen">

  #inner {
      padding-top: 120px;
      padding-bottom: 60px;
      color: #fff;
      background-image: url("<?php if($pid){echo get_content('sub_page', 'banner_url', $mp, $pid); }else{ echo get_content('master_page', 'banner_url', $mp); }  ?>");
      background-size: cover;
  }


.child {
  float: left;
}

.gallery img {
  width: 100%;
  border-radius: 10px;
  -webkit-transition: all .3s ease-in-out;
  transition: all .3s ease-in-out;
}
</style>

<script type="text/javascript">
$(document).ready(function () {
var data
$.ajax({
dataType: 'json',
url: 'https://halogen-group.com/all-clients.php',
data: data,
beforeSend: function(){
$("#loadingClient").css('display','block');
},
success: function (data) {
var results = data.clients;
var option='';
for(var i=0;i<results.length;i++)
{
option+='<div class="col-md-2 child" style="margin-bottom:20px;padding:20px"><img src="http://halogen-group.com/acms/pages/uploads/'+results[i].image_url+'" alt="" /></div>';
}
$("#loadingClient").css('display','none');
$("#allClients").html(option);
//console.log(option);
},
})
})
</script>

</head>
<body>


<?php include('inc/header.php'); ?>

<div id="inner">

<div class="container">

<div class="row">

<div class="col-12">
<!--<h3><?php echo $ptitle; ?></h3>-->
<h3>&nbsp;</h3>
</div>

</div>

</div>

</div>


<div id="service">
<div class="container">
<?php
if($mp == 'Careers')
{
include('career-div.php');
}
elseif($mp == 'Request a Quote')
{
include('quote-div.php');
}
elseif($ptitle == 'Contact Us')
{
include('contact-div.php');
}elseif($mp == 'Search')
{
include('search-div.php');
}
else{
?>
<?php if($_GET['ptitle'] == 'About Academy Halogen'){ ?>

<div class="row">

<div class="col-md-8 animated wow fadeInUp animated" data-wow-delay=".4s" data-wow-offset="4" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
<?php if($pid){echo get_content('sub_page', 'content', $mp, $pid); }else{ echo get_content('master_page', 'content', $mp); } ?>


</div>
<div class="col-md-4">
<div class="jumbotron" style="background:#FFC905;color:#fff;position:absolute;left:10%;top:10%">
<b><h5>Organisational Definition:</h5></b> <p style="font-size:17px">A learning institution that demonstrably shapes enterprise security risk management via education, research, strategy, policy and thought leadership</p><br><br>

<b><h5>Our Brand Proposition:</h5></b> <p style="font-size:17px"> We will create knowledge in pursuit of safety in an open world </p><br><br>

<h5><b>Our Strategic Imperatives:</h5></b> <p style="font-size:17px">Risk – Policy - Strategy </p></div></div>    
    
</div>
<?php }else{ ?>
<div class="row">
<div class="col-md-2"></div>

<div class="col-md-8 animated wow fadeInUp animated" data-wow-delay=".4s" data-wow-offset="4" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
<?php if($pid){echo get_content('sub_page', 'content', $mp, $pid); }else{ echo get_content('master_page', 'content', $mp); } ?>


<br><br><br><br><br><br>
<?php
if($_GET['ptitle'] == 'Our People'){ include('our-people2.php'); } ?>

</div>
<div class="col-md-2"></div>


</div>

<?php } ?>

<?php if($ptitle == 'Our Clients')

{

?>

<div class="gallery" style="margin-top:-60px;">
<div class="row">
<div id="allClients"></div>
</div>
</div>

<?php } ?>

<?php } ?>

<?php if($_GET['ptitle'] == 'About Academy Halogen'){ ?>
<br><br><br><br><br>
<div id="home15">
<div class="col-md-8">
</div>
</div>
<br><br><br><br>
<?php } ?>

</div>



</div>






</div>



<?php include('inc/footer2.php'); ?>




<!-- Slider-JavaScript -->
<script src="dist/js/responsiveslides.min.js"></script>
<script>
$(function () {
$("#slider4").responsiveSlides({
auto: true,
pager: true,
nav: true,
speed: 1000,
namespace: "callbacks",
before: function () {
$('.events').append("<li>before event fired.</li>");
},
after: function () {
$('.events').append("<li>after event fired.</li>");
}
});
});
</script>
<!-- //Slider-JavaScript -->

<!-- <script src="dist/js/bootstrap.min.js"></script> -->

<script src="dist/js/owl.carousel.min.js"></script>
<script src="dist/js/wow.min.js"></script>
<script src="dist/js/main.js"></script>
</body>
</html>
