<?php

include('acms/pages/connect.php');

require_once('acms/pages/fns.php');

$qsNews = mysqli_query($connect, "select * from events_page where event_type = 'event' GROUP BY title HAVING COUNT(DISTINCT title) = 1 order by date desc limit 3");
$nsNews = mysqli_num_rows($qsNews);

$qsMedia = mysqli_query($connect, "select * from news_page where category = 'Videos' order by id desc");
$rsMedia = mysqli_fetch_assoc($qsMedia);

$qsProg = mysqli_query($connect, "select * from school");
$rsProg = mysqli_fetch_assoc($qsProg);

$qsProg2 = mysqli_query($connect, "select * from school where title <> '{$rsProg['title']}'");
$rsProg2 = mysqli_fetch_assoc($qsProg2);

$qsProg3 = mysqli_query($connect, "select * from school where title <> '{$rsProg['title']}' && title <> '{$rsProg2['title']}'");
$rsProg3 = mysqli_fetch_assoc($qsProg3);

$qsProg4 = mysqli_query($connect, "select * from school where title <> '{$rsProg['title']}' && title <> '{$rsProg2['title']}' && title <> '{$rsProg3['title']}'");
$rsProg4 = mysqli_fetch_assoc($qsProg4);

$qsCourse = mysqli_query($connect, "select * from programs where ext_link = 'yes' order by rand() limit 0,8");
$nsCourse = mysqli_num_rows($qsCourse);

$qsCourse2 = mysqli_query($connect, "select * from programs where ext_link = 'yes' order by rand() limit 0,8");
$nsCourse2 = mysqli_num_rows($qsCourse2);

?>

<!doctype html>

<html>

<head>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-160598319-1"></script>
<script>
window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());

gtag('config', 'UA-160598319-1');
</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Security Training Institution in Nigeria</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="Description" content=" Academy Halogen is an institution that demonstrably shapes the agenda for risk management and security practice
across the industry???s value chain."/>

<meta name="keywords" content="security academy in nigeria,lagos,abuja,port harcourt,safety training in Nigeria, security training institution in nigeria, cybersecurity training in nigeria, forensic training in nigeria,enterprise security risk management, Professional MBA in Security Management,Certi???cate in Security Management,Diploma in Security Management" />

<link rel="stylesheet" href="dist/css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css" />

<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.min2.js"></script>


<link href="dist/style2.css" rel="stylesheet" type="text/css" media="all">

<link href="dist/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<link href="dist/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">

<link rel="icon" href="images/favicon.png" />

<link href="dist/css/animate.css" rel="stylesheet">

<link href="dist/css/owl.carousel.css" rel="stylesheet">

<link href="dist/css/owl.transitions.css" rel="stylesheet">

<link href="dist/css/owl.theme.css" rel="stylesheet">

<script type="text/javascript" src="dist/js/move-top.js"></script>

<script type="text/javascript" src="dist/js/easing.js"></script>

<style>
body{
overflow-x: hidden;
}
.testimonial_subtitle{
color: #0aaa7a;
font-size: 12px;
}
.testimonial_btn{
background-color: #373d4b !important;
color: #fff !important;
}
.seprator {
height: 2px;
width: 56px;
background-color: #0aaa7a;
margin: 7px 0 10px 0;
}
/*Cookie Consent Begin*/
#cookieConsent {
background-color: rgba(20,20,20,0.8);
min-height: 26px;
font-size: 14px;
color: #ccc;
line-height: 26px;
padding: 8px 0 8px 30px;
font-family: "Trebuchet MS",Helvetica,sans-serif;
position: fixed;
bottom: 0;
left: 0;
right: 0;
display: none;
z-index: 9999;
}
#cookieConsent a {
color: #4B8EE7;
text-decoration: none;
}
#closeCookieConsent {
float: right;
display: inline-block;
cursor: pointer;
height: 20px;
width: 20px;
margin: -15px 0 0 0;
font-weight: bold;
}
#closeCookieConsent:hover {
color: #FFF;
}
#cookieConsent a.cookieConsentOK {
background-color: #F1D600;
color: #000;
display: inline-block;
border-radius: 5px;
padding: 0 20px;
cursor: pointer;
float: right;
margin: 0 10px 0 10px;
}
#cookieConsent a.cookieConsentOK:hover {
background-color: #E0C91F;
}
/*Cookie Consent End*/


.grid {

clear: both;

margin: 0 auto;

list-style: none;

text-align: center;

}

.video { position: relative; }

.video a {
position: absolute;
display: block;
height: 100%;
width: 100%;
top: 35%;
left: 45%;
color: #fff;
}

.tour{
position: absolute;
display: block;
height: 100%;
width: 100%;
top: 75%;
left: 75%;
color: #fff;
}

.swaps {

margin-bottom: 35px;

padding-bottom: 10px;

}

.news {

background: #212282;

border-bottom-left-radius: 15px;

border-bottom-right-radius: 15px;

height: 120px;

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

<div id="fb-root"></div>

<script>(function(d, s, id) {

var js, fjs = d.getElementsByTagName(s)[0];

if (d.getElementById(id)) return;

js = d.createElement(s); js.id = id;

js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.1&appId=1226495947438266&autoLogAppEvents=1';

fjs.parentNode.insertBefore(js, fjs);

}(document, 'script', 'facebook-jssdk'));</script>

<?php include('inc/header.php'); ?>

<section>
<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
<div class="carousel-inner">

<div class="carousel-item active">
<img src="images/slider/slider5.jpg" class="d-block w-100" alt="...">
</div>
<div class="carousel-item">
<img src="images/slider/slider1.jpg" class="d-block w-100" alt="...">
</div>
<div class="carousel-item">
<img src="images/slider/slider2.jpg" class="d-block w-100" alt="...">
</div>
<div class="carousel-item">
<img src="images/slider/slider3.jpg" class="d-block w-100" alt="...">
</div>
<div class="carousel-item">
<a href="https://halogenintel.com.ng/" target="_blank"><img src="images/slider/slider4.jpg" class="d-block w-100" alt="..."></a>
</div>
</div>
<a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
<span class="carousel-control-prev-icon" aria-hidden="true"></span>
<span class="sr-only">Previous</span>
</a>
<a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
<span class="carousel-control-next-icon" aria-hidden="true"></span>
<span class="sr-only">Next</span>
</a>
</div>
</section>
<!--slide end-->

<script src="dist/js/carmain.js"></script>

<br><br>
<div class="container">
<div class="row">
<div class="col-md-6" style="margin-bottom:30px;">
<div style="background:url('acms/pages/<?php echo $rsProg['banner_url']; ?>') no-repeat; background-size:cover; background-position: center; height:220px;"></div>

<div style="background:#010736;color:#fff; padding:20px;">
<h3><?php echo $rsProg['title']; ?></h3>

<p><?php echo $rsProg['summary']; ?></p>
<p style="padding-bottom:8px">&nbsp;</p>
<a href="school/<?php echo str_replace(' ','-',$rsProg['title']); ?>"><i class="fa fa-arrow-right"></i></a>
</div>
</div>
<div class="col-md-6" style="margin-bottom:30px;">
<div style="background:url('acms/pages/<?php echo $rsProg4['banner_url']; ?>') no-repeat; background-size:cover; background-position: center; height:220px;"></div>

<div style="background:#012E33;color:#fff; padding:20px;">
<h3><?php echo $rsProg4['title']; ?></h3>

<p><?php echo $rsProg4['summary']; ?></p>
<a href="school/<?php echo str_replace(' ','-',$rsProg4['title']); ?>"><i class="fa fa-arrow-right"></i></a>

</div>
</div>

<div class="col-md-6" style="margin-bottom:30px;">
<div style="background:url('acms/pages/<?php echo $rsProg3['banner_url']; ?>') no-repeat; background-size:cover; background-position: center; height:220px;"></div>

<div style="background:#012336;color:#fff; padding:20px;">
<h3><?php echo $rsProg3['title']; ?></h3>

<p><?php echo $rsProg3['summary']; ?></p><br>

<a href="school/<?php echo str_replace(' ','-',$rsProg3['title']); ?>"><i class="fa fa-arrow-right"></i></a>
</div>
</div>
<div class="col-md-6" style="margin-bottom:30px;">
<div style="background:url('acms/pages/<?php echo $rsProg2['banner_url']; ?>') no-repeat; background-size:cover; background-position: center; height:220px;"></div>

<div style="background:#010C1E;color:#fff; padding:20px;">
<h3><?php echo $rsProg2['title']; ?></h3>

<p><?php echo $rsProg2['summary']; ?></p><br>
<a href="school/<?php echo str_replace(' ','-',$rsProg2['title']); ?>"><i class="fa fa-arrow-right"></i></a>
</div>
</div>
</div>
</div>



<div id="home3">

<div class="container">

<div class="row">

<div class="col-12">

<h3>News/Events</h3>

</div>

<div class="col-md-6">

<div class="events">

<?php for($n=0; $n<$nsNews; $n++){
$rsNews = mysqli_fetch_assoc($qsNews);
?>

<div class="event">

<div class="row">

<div class="col-md-3">

<a href="view-event?article=<?php echo base64_encode($rsNews['id']) ?>">
<div style="background:url('acms/pages/<?php echo $rsNews['banner_url']; ?>') no-repeat; background-size:cover; height:80px;"></div>
</a>
</div>

<div class="col-md-9">

<div class="title"><a href="view-event?article=<?php echo base64_encode($rsNews['id']) ?>"><?php echo $rsNews['title']; ?></a></div>

<div class="content"><?php echo substr(strip_tags($rsNews['content']),0,150); ?></div>

</div>
</div>
</div>

<?php } ?>
</div>

</div>

<div class="col-md-6">

<div class="video" style="background:url('acms/pages/<?php echo $rsMedia['banner_url'] ?>') no-repeat; background-size:cover; height:400px;"><a href="<?php echo $rsMedia['link'] ?>" target="_blank"><i class="fa fa-play-circle fa-5x"></i></a></div>

<h4 style="padding-left:15px;"><?php echo $rsMedia['title']; ?></h4>

</div>

</div>

</div>

</div>

<div id="home5" class="course_slide">

<div class="container-fluid">

<div class="row">
<div class="col-md-3">
<h2>Our <br>Programmes</h2><br>
<a href="school/School-of-Security-Management"><button class="btn1">See all our programmes</button></a>
</div>
<div class="col-md-9">

<div class="accordian">
<ul>
<?php for($i=0; $i<$nsCourse; $i++){
$rsCourse = mysqli_fetch_assoc($qsCourse);
?>
<li>
<div class="image_title">
<a href="courses/<?php echo str_replace(' ','-',$rsCourse['title']); ?>"><?php echo $rsCourse['title'] ?></a>
</div>
<a href="courses/<?php echo str_replace(' ','-',$rsCourse['title']); ?>">
<div style="background:url('acms/pages/<?php echo $rsCourse['banner_url']; ?>') no-repeat; background-size:cover; height:300px;"></div></a>
</li>
<?php } ?>
</ul>
</div>
</div>

</div>

</div>

</div>


<div id="acc_info" class="course_grid">
<div class="container">
<div class="row">
<?php for($c=0; $c<$nsCourse2; $c++){
$rsCourse2 = mysqli_fetch_assoc($qsCourse2);
?>
<div class="col-md-3" style="margin-bottom:30px;">
<div style="background:url('acms/pages/<?php echo $rsCourse2['banner_url']; ?>') no-repeat; background-size:cover; height:200px;"></div>

<div class="details">

<div class="content">

<?php echo $rsCourse2['title'] ?>

</div>

<div class="duration">

<div class="row">

<div class="col-6" style="padding-left:15px">&nbsp;</div>

<div class="col-6" style="padding-right:15px" align="right"><a href="courses/<?php echo str_replace(' ','-',$rsCourse2['title']); ?>"><button class="btn1">Learn more</button></a></div>

</div>

</div>

</div>

</div>
<?php } ?>
</div>
</div>
</div>

<div style="background: #fafafa; padding-top: 50px;">

<div class="container">

<div class="row">

<div class="col-md-4">

<div class="fb-page" data-href="https://www.facebook.com/academyhalogen" data-tabs="timeline" data-width="" data-height="558" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/academyhalogen" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/academyhalogen">Academy Halogen</a></blockquote></div>

</div>

<div class="col-md-4">

<a class="twitter-timeline" data-height="558" href="https://twitter.com/academyhalogen?ref_src=twsrc%5Etfw">Tweets by academyhalogen</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

</div>

<div class="col-md-4">

<blockquote class="instagram-media" data-instgrm-permalink="https://www.instagram.com/p/CLUyw5Mlctv/?utm_source=ig_embed&amp;utm_campaign=loading" data-instgrm-version="12" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:540px; min-width:326px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:16px;"> <a href="https://www.instagram.com/p/CLUyw5Mlctv/?utm_source=ig_embed&amp;utm_campaign=loading" style=" background:#FFFFFF; line-height:0; padding:0 0; text-align:center; text-decoration:none; width:100%;" target="_blank"> <div style=" display: flex; flex-direction: row; align-items: center;"> <div style="background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 40px; margin-right: 14px; width: 40px;"></div> <div style="display: flex; flex-direction: column; flex-grow: 1; justify-content: center;"> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 100px;"></div> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 60px;"></div></div></div><div style="padding: 19% 0;"></div> <div style="display:block; height:50px; margin:0 auto 12px; width:50px;"><svg width="50px" height="50px" viewBox="0 0 60 60" version="1.1" xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g transform="translate(-511.000000, -20.000000)" fill="#000000"><g><path d="M556.869,30.41 C554.814,30.41 553.148,32.076 553.148,34.131 C553.148,36.186 554.814,37.852 556.869,37.852 C558.924,37.852 560.59,36.186 560.59,34.131 C560.59,32.076 558.924,30.41 556.869,30.41 M541,60.657 C535.114,60.657 530.342,55.887 530.342,50 C530.342,44.114 535.114,39.342 541,39.342 C546.887,39.342 551.658,44.114 551.658,50 C551.658,55.887 546.887,60.657 541,60.657 M541,33.886 C532.1,33.886 524.886,41.1 524.886,50 C524.886,58.899 532.1,66.113 541,66.113 C549.9,66.113 557.115,58.899 557.115,50 C557.115,41.1 549.9,33.886 541,33.886 M565.378,62.101 C565.244,65.022 564.756,66.606 564.346,67.663 C563.803,69.06 563.154,70.057 562.106,71.106 C561.058,72.155 560.06,72.803 558.662,73.347 C557.607,73.757 556.021,74.244 553.102,74.378 C549.944,74.521 548.997,74.552 541,74.552 C533.003,74.552 532.056,74.521 528.898,74.378 C525.979,74.244 524.393,73.757 523.338,73.347 C521.94,72.803 520.942,72.155 519.894,71.106 C518.846,70.057 518.197,69.06 517.654,67.663 C517.244,66.606 516.755,65.022 516.623,62.101 C516.479,58.943 516.448,57.996 516.448,50 C516.448,42.003 516.479,41.056 516.623,37.899 C516.755,34.978 517.244,33.391 517.654,32.338 C518.197,30.938 518.846,29.942 519.894,28.894 C520.942,27.846 521.94,27.196 523.338,26.654 C524.393,26.244 525.979,25.756 528.898,25.623 C532.057,25.479 533.004,25.448 541,25.448 C548.997,25.448 549.943,25.479 553.102,25.623 C556.021,25.756 557.607,26.244 558.662,26.654 C560.06,27.196 561.058,27.846 562.106,28.894 C563.154,29.942 563.803,30.938 564.346,32.338 C564.756,33.391 565.244,34.978 565.378,37.899 C565.522,41.056 565.552,42.003 565.552,50 C565.552,57.996 565.522,58.943 565.378,62.101 M570.82,37.631 C570.674,34.438 570.167,32.258 569.425,30.349 C568.659,28.377 567.633,26.702 565.965,25.035 C564.297,23.368 562.623,22.342 560.652,21.575 C558.743,20.834 556.562,20.326 553.369,20.18 C550.169,20.033 549.148,20 541,20 C532.853,20 531.831,20.033 528.631,20.18 C525.438,20.326 523.257,20.834 521.349,21.575 C519.376,22.342 517.703,23.368 516.035,25.035 C514.368,26.702 513.342,28.377 512.574,30.349 C511.834,32.258 511.326,34.438 511.181,37.631 C511.035,40.831 511,41.851 511,50 C511,58.147 511.035,59.17 511.181,62.369 C511.326,65.562 511.834,67.743 512.574,69.651 C513.342,71.625 514.368,73.296 516.035,74.965 C517.703,76.634 519.376,77.658 521.349,78.425 C523.257,79.167 525.438,79.673 528.631,79.82 C531.831,79.965 532.853,80.001 541,80.001 C549.148,80.001 550.169,79.965 553.369,79.82 C556.562,79.673 558.743,79.167 560.652,78.425 C562.623,77.658 564.297,76.634 565.965,74.965 C567.633,73.296 568.659,71.625 569.425,69.651 C570.167,67.743 570.674,65.562 570.82,62.369 C570.966,59.17 571,58.147 571,50 C571,41.851 570.966,40.831 570.82,37.631"></path></g></g></g></svg></div><div style="padding-top: 8px;"> <div style=" color:#3897f0; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:550; line-height:18px;"> View this post on Instagram</div></div><div style="padding: 12.5% 0;"></div> <div style="display: flex; flex-direction: row; margin-bottom: 14px; align-items: center;"><div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(0px) translateY(7px);"></div> <div style="background-color: #F4F4F4; height: 12.5px; transform: rotate(-45deg) translateX(3px) translateY(1px); width: 12.5px; flex-grow: 0; margin-right: 14px; margin-left: 2px;"></div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(9px) translateY(-18px);"></div></div><div style="margin-left: 8px;"> <div style=" background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 20px; width: 20px;"></div> <div style=" width: 0; height: 0; border-top: 2px solid transparent; border-left: 6px solid #f4f4f4; border-bottom: 2px solid transparent; transform: translateX(16px) translateY(-4px) rotate(30deg)"></div></div><div style="margin-left: auto;"> <div style=" width: 0px; border-top: 8px solid #F4F4F4; border-right: 8px solid transparent; transform: translateY(16px);"></div> <div style=" background-color: #F4F4F4; flex-grow: 0; height: 12px; width: 16px; transform: translateY(-4px);"></div> <div style=" width: 0; height: 0; border-top: 8px solid #F4F4F4; border-left: 8px solid transparent; transform: translateY(-4px) translateX(8px);"></div></div></div> <div style="display: flex; flex-direction: column; flex-grow: 1; justify-content: center; margin-bottom: 24px;"> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 224px;"></div> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 144px;"></div></div></a><p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;"><a href="https://www.instagram.com/p/B_MbZKiFCe1/?utm_source=ig_embed&amp;utm_campaign=loading" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none;" target="_blank">A post shared by Academy Halogen (@academyhalogen1)</a> on <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2020-04-20T07:24:20+00:00">Apr 20, 2020 at 12:24am PDT</time></p></div></blockquote> <script async src="//www.instagram.com/embed.js"></script>

</div>

</div>

</div>
<br><br>

</div>


<?php if(isset($_COOKIE['vAcademyYes']) || isset($_COOKIE['vAcademyNo'])){ }else{ ?>

<!-- <div id="cookieConsent">
<div id="closeCookieConsent">x</div>
This website uses cookies to optimize your experience and to provide us insight on how you interact with the Site. A Cookie is a small text file sent to your device, to allow our website to recognise your device and save preferences, as well as provide the website with information on your use of the website.  All information shared with us through Cookies is secure and covered by our Data Privacy obligations. Follow the link to access our <a href="data-privacy-policy" target="_blank">Data Privacy Policy</a>.<br> <a class="cookieConsentOK" id="no">No</a> <a class="cookieConsentOK" id="yes">Yes</a>
</div> -->
<?php } ?>

<?php include('inc/footer2.php'); ?>

<!-- Slider-JavaScript -->

<script src="dist/js/responsiveslides.min.js"></script>

<script>

$(function () {

$("#slider4").responsiveSlides({

auto: true,

pager: true,

nav: true,

speed: 3500,

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



<script type="text/javascript">



jQuery(document).ready(function($) {



$(".scroll").click(function(event){



event.preventDefault();



$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);



});



});



</script>



<!-- <script src="dist/js/bootstrap.min.js"></script> -->



<script src="dist/js/owl.carousel.min.js"></script>

<script src="dist/js/wow.min.js"></script>

<script src="dist/js/main.js"></script>

<script>
 $('#myCarousel').carousel({
    interval: 30000,
 })
$(document).ready(function(){
setTimeout(function () {
$("#cookieConsent").fadeIn(200);
}, 4000);
$("#closeCookieConsent, .cookieConsentOK").click(function() {
$("#cookieConsent").fadeOut(200);
});

$("#yes").click(function() {
var yes = 'yes';
$.ajax({
url: "set-cookie.php",
type: "POST",
data:  {yes:yes},
success: function(response)
{
}
});
});

$("#no").click(function() {
var no = 'no';
$.ajax({
url: "set-cookie.php",
type: "POST",
data:  {no:no},
success: function(response)
{
}
});
});

});
</script>

</body>

</html>
