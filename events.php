<?php

include('acms/pages/connect.php');

require_once('acms/pages/fns.php');



$title = mysqli_real_escape_string($connect, 'Events');



$qsMedia = mysqli_query($connect, "select * from master_page where title = '$title'");

$rsMedia = mysqli_fetch_assoc($qsMedia);



$num_news=12;

if (isset($_GET["news"])) { $news  = $_GET["news"]; } else { $news=1; };

$start_news = ($news-1) * $num_news;

$queryNews = "select * from events_page GROUP BY title HAVING COUNT(DISTINCT title) = 1 order by date desc LIMIT $start_news, $num_news";

$resultNews = mysqli_query($connect, $queryNews);

$numNews = mysqli_num_rows($resultNews);



$sqlNews= "select * from events_page GROUP BY title HAVING COUNT(DISTINCT title) = 1 order by date desc";

$rsNews = mysqli_query($connect, $sqlNews); //run the query

$totalNew = mysqli_num_rows($rsNews);  //count number of records

$totalNews = ceil($totalNew / $num_news);



?>

<!doctype html>

<html>

<head>
<?php include('analytics.php'); ?>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Events - Academy Halogen</title>

<meta name="viewport" content="width=device-width, initial-scale=1">



<meta name="Description" content="">

<meta name="keywords" content="" />

<link rel="stylesheet" href="dist/css/bootstrap.css">
<!-- <script src="dist/js/jquery-2.2.js"></script> -->
<script src="dist/js/jquery.3.4.1.min.js"></script>
<script src="js/bootstrap.min2.js"></script>
<link href="dist/style2.css" rel="stylesheet" type="text/css" media="all">

<link href="dist/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="dist/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">
<link rel="icon" href="images/favicon.png" />


<link href="dist/css/animate.css" rel="stylesheet">
<link href="dist/css/owl.carousel.css" rel="stylesheet">
<link href="dist/css/owl.transitions.css" rel="stylesheet">
<link href="dist/css/owl.theme.css" rel="stylesheet">





<style>

	body{background: none;}

.grid {

    clear: both;

    margin: 0 auto;

    list-style: none;

    text-align: center;

}

.swaps {

    margin-bottom: 35px;

    padding-bottom: 10px;

}

.news {

    background: #212282;

    border-bottom-left-radius: 15px;

    border-bottom-right-radius: 15px;

    height: 150px;

    padding: 15px;

    list-style: none;

    text-align: center;

	font-size: 13px;

	color: #FFF;

}

.swaps img {

    width: 100%;

    height: 180px;

    position: relative;

    -webkit-transition: all ease .5s;

    transition: all ease .5s;

    /* background-size: 100%; */

    overflow: hidden;

    margin-bottom: 5px;

}

</style>





</head>

<body>





<?php include('inc/header.php'); ?>









<div id="inner">

<div class="container">

<div class="row">

<div class="col-12">
<h3 align="center">Events</h3>
</div>

</div>

</div>

</div>













<div id="" class="service" style="margin-bottom: 0px;">
<br><br><br><br><br><br><br>



<!-- Start team Area -->

<section class="team-area section-gap" style="margin-bottom: 60px;">

<div class="container">

<div class="row">

<?php if($numNews > 0){ ?>

<?php for($n=0; $n<$numNews; $n++){

$rsNew = mysqli_fetch_assoc($resultNews);

?>

<div class="col-md-3 col-xs-12 col-lg-3 col-sm-6 animated wow fadeInUp animated" data-wow-delay=".5s" data-wow-offset="5" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;">

<?php if($rsNew['event_type'] == "event"){ ?>

<div class="swaps">

<?php if($rsNew['banner_url'] != ""){ ?>

<div class="" style="background:url('acms/pages/<?php echo $rsNew['banner_url'] ?>') no-repeat; background-size:cover; height:200px;"></div>

<?php }else{ ?>

<img src="acms/pages/uploads/event_placeholder.jpg" alt="ovh" class="img-responsive grid">

<?php } ?>

<div class="news">

<p><?php echo date('d.m.y', strtotime($rsNew['date'])); ?></p>

<p><?php echo $rsNew['title'] ?></p>

<p> <a href="view-event?article=<?php echo base64_encode($rsNew['id']); ?>" style="color:#ea6224">View &gt;</a></p>

</div>

</div>

<?php }elseif($rsNew['event_type'] == "picture"){ ?>

<div class="swaps">

<div class="" style="background:url('acms/pages/events/<?php echo $rsNew['banner_url'] ?>') no-repeat; background-size:cover; height:200px;"></div>

<div class="news">

<p><?php echo date('d.m.y', strtotime($rsNew['date'])); ?></p>

<p><?php echo $rsNew['title'] ?></p>

<p> <a href="view-picture-event?picture=<?php echo base64_encode($rsNew['title']); ?>" style="color:#ea6224">View &gt;</a></p>

</div>

</div>

<?php }elseif($rsNew['event_type'] == "video"){ ?>

<div class="swaps">

<div class="" style="background:url('acms/pages/events/<?php echo $rsNew['banner_url'] ?>') no-repeat; background-size:cover; height:200px;"></div>

<div class="news">

<p><?php echo date('d.m.y', strtotime($rsNew['date'])); ?></p>

<p><?php echo $rsNew['title'] ?></p>

<p> <a href="view-picture-event?picture=<?php echo base64_encode($rsNew['title']); ?>" style="color:#ea6224">View &gt;</a></p>

</div>

</div>

<?php } ?>

</div>

<?php } ?>

<?php }else{ ?>

<p> There are no events at the time</p>

 <?php } ?>

</div>

</div>

<?php if($totalNew > 12){ ?>

<div class="container" align="center">

<ul class="pagination">

<li><a href="?events=1">First</a></li>

<li class="<?php if($news <= 1){ echo 'disabled'; } ?>">

<a href="<?php if($news <= 1){ echo '#'; } else { echo "?events=".($news - 1); } ?>">Prev</a>

</li>

<li class="<?php if($news >= $totalNews){ echo 'disabled'; } ?>">

<a href="<?php if($news >= $totalNews){ echo '#'; } else { echo "?events=".($news + 1); } ?>">Next</a>

</li>

<li><a href="?events=<?php echo $totalNews; ?>">Last</a></li>

</ul>

</div>

<?php } ?>

</section>

<!-- End team Area -->

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
<!-- <script src="../js/bootstrap.min2.js"></script> -->


<script src="dist/js/owl.carousel.min.js"></script>

<script src="dist/js/wow.min.js"></script>

<script src="dist/js/main.js"></script>

</body>

</html>
