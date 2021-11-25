<?php

session_start();

include('acms/pages/connect.php');

include('fns.php');

require_once('acms/pages/fns.php');



if(!$_SESSION['alumni']){

header('Location: member-login');

exit;

}



$qsProfile = mysqli_query($connect, "select * from alumni where email = '".$_SESSION['alumni']."'");

$rsProfile = mysqli_fetch_assoc($qsProfile);



$qsMate = mysqli_query($connect, "select * from alumni where course = '{$rsProfile['course']}' && class_year = '{$rsProfile['class_year']}' && id <> '{$rsProfile['id']}' order by rand() limit 3;");

$nsMate = mysqli_num_rows($qsMate);



$num_page=9;

if (isset($_GET["page"])) { $page  = $_GET["page"]; } else { $page=1; };

$start_from = ($page-1) * $num_page;

$query = "select * from topic order by id asc LIMIT $start_from, $num_page";

$result = mysqli_query($connect, $query);

$num = mysqli_num_rows($result);



$sql= "select * from topic order by id asc";

$rs_result = mysqli_query($connect, $sql); //run the query

$total_records = mysqli_num_rows($rs_result);  //count number of records

$total_pages = ceil($total_records / $num_page);





$num_news=9;

if (isset($_GET["news"])) { $news  = $_GET["news"]; } else { $news=1; };

$start_news = ($news-1) * $num_news;

$queryNews = "select * from news_page order by id asc LIMIT $start_news, $num_news";

$resultNews = mysqli_query($connect, $queryNews);

$numNews = mysqli_num_rows($resultNews);



$sqlNews= "select * from news_page order by id asc";

$rsNews = mysqli_query($connect, $sqlNews); //run the query

$totalNew = mysqli_num_rows($rsNews);  //count number of records

$totalNews = ceil($totalNew / $num_news);



if($_GET['topic']){



$topic = mysqli_real_escape_string($connect, base64_decode($_GET['topic']));



$qsComment = mysqli_query($connect, "select * from comments where topic = '$topic' order by id desc");

$nsComment = mysqli_num_rows($qsComment);



}



$numJob=9;

if (isset($_GET["job"])) { $job  = $_GET["job"]; } else { $job=1; };

$startJob = ($job-1) * $numJob;

$queryJob = "select * from job order by id asc LIMIT $startJob, $numJob";

$resultJob = mysqli_query($connect, $queryJob);

$nsJob = mysqli_num_rows($resultJob);



$sqlJob= "select * from job order by id asc";

$rsJob = mysqli_query($connect, $sqlJob); //run the query

$totalJob = mysqli_num_rows($rsJob);  //count number of records

$totalJobs = ceil($totalJob / $numJob);



$qsJob = mysqli_query($connect, "select * from job limit 6");

$nsJobs = mysqli_num_rows($qsJob);



$qsMedia = mysqli_query($connect, "select * from news_page order by id desc limit 4");

$nsMedia = mysqli_num_rows($qsMedia);



$qsEvent = mysqli_query($connect, "select * from events_page order by id desc limit 4");

$nsEvent = mysqli_num_rows($qsEvent);



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



<link href="dist/autoptimize2.css" rel="stylesheet" type="text/css" media="all">

<style>

body {

background: url(images/inner_banner.jpg) center 100px no-repeat;

background-size: contain;

}

#header  {

background: #FFF;

}



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

<li class="active"><a data-toggle="tab" href="#v_collections">Dashboard</a></li>

<li><a data-toggle="tab" href="#forum_tab">Forum</a></li>

<li><a data-toggle="tab" href="#profile_tab">Profile</a></li>

<li><a data-toggle="tab" href="#news_tab">News</a></li>

<li><a data-toggle="tab" href="#job_tab">Job Vacancies</a></li>

<li><a href="logout">Logout</a></li>

</ul>

</div>





<div class="container-fluid tab-content" style="background: #F0F0F0; margin-left: -20px; margin-right: -9px;">



<!-- /#Vintage Collections Starts-->

<div id="v_collections" class="tab-pane fade in active">

<div class="row">



<div class="col-md-8">

<div class="dashboard_info">



<div class="row">

<div class="col-md-1"></div>

<div class="col-md-11">



<h2>Hi <?php echo ucwords($rsProfile['name']); ?>!</h2>



<p>Update Status</p>



<form class="form-inline" method="post" action="processForum">

<?php if($_GET['topic']){ ?>

<div class="alert alert-success alert-dismissible" role="alert">

<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>

</button>

<strong>Well done!</strong> You successfully posted your status.

</div>

<?php } ?>

<?php if($_GET['post']){ ?>

<div class="alert alert-info alert-dismissible" role="alert">

<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>

</button>

<strong>Status!</strong> not updated.

</div>

<?php } ?>

<div class="form-group">

<input type="text" name="topic" class="input-lg form-control cust_input" placeholder=" Update Status..." required>

<button type="submit" name="submitForum" class="btn btn-info btn-lg btn_1">Submit</button>

</div>

</form>

<p>&nbsp;</p>

</div>

</div>







<div class="row text-center">

<div class="col-md-1"></div>

<div class="col-md-9">

<h2>Connect with course mates</h2></div>

</div>

<?php if($nsMate > 0){ ?>

<div class="row text-center">

<div class="col-md-1" align="center"></div>

<?php for($i=0; $i<$nsMate; $i++){

$rsMate = mysqli_fetch_assoc($qsMate);

?>

<div class="col-md-3" align="center">

<?php if($rsMate['passport']){ ?>

<img src="images/<?php echo $rsMate['passport']; ?>" width="100" class="img-responsive img-circle">

<?php }else{ ?>

<img src="images/icon.jpg" width="100" class="img-responsive img-circle">

<?php } ?>

<h4><?php echo ucwords($rsMate['name']); ?></h4>

</div>

<?php } ?>

<div class="col-md-2" align="center"></div>

</div>

<?php }else{ ?>

<p align="center" style="margin-top: 30px;">No course mate found</p>

<?php } ?>

</div>

</div>









<div class="col-md-4 side_accordion">

<h2 style="margin-bottom: 30px;color: white; padding-top: 50px;">New Training Opportunities?</h2>

<a style="color: #fff;" href="programmes" >Click here now</a>

</div>









</div>

</div>

<!-- /#Vintage Collections Ends Here-->







<!-- /#Vintage Top Starts Here -->

<div id="forum_tab" class="tab-pane fade">

<div class="courses">

<div class="container">

<h5 class="main-w3l-title">Topics</h5>

<?php if($num > 0){ ?>

<?php for($a=0; $a<$num; $a++){

$rsTopic = mysqli_fetch_assoc($result);

?>

<div class="col-md-4 courses-info">

<h5><a href="view-topic?topic=<?php echo base64_encode($rsTopic['topic']); ?>"><?php echo $rsTopic['topic']; ?></a></h5>

<div class="c-image">

<p class="batch">Posted by <?php echo ucwords(find_value('alumni', 'email', 'name', $rsTopic['alum'])); ?> <span><?php echo date('F d, Y', strtotime($rsTopic['date'])); ?></span></p>

</div>

</div>

<?php } ?>

<?php }else{ ?>

<p align="center" style="margin-top: 30px;">No topic posted</p>

<?php } ?>

<?php if($total_records > 9){ ?>

<div class="container" align="center">

<ul class="pagination">

<li><a href="?page=1">First</a></li>

<li class="<?php if($page <= 1){ echo 'disabled'; } ?>">

<a href="<?php if($page <= 1){ echo '#'; } else { echo "?page=".($page - 1); } ?>">Prev</a>

</li>

<li class="<?php if($page >= $total_pages){ echo 'disabled'; } ?>">

<a href="<?php if($page >= $total_pages){ echo '#'; } else { echo "?page=".($page + 1); } ?>">Next</a>

</li>

<li><a href="?page=<?php echo $total_pages; ?>">Last</a></li>

</ul>

</div>

<?php } ?>

</div>

</div>

</div>

<!-- /#Vintage Tops Ends Here -->











<!-- /#Vintage Bottom Starts Here  -->

<div id="profile_tab" class="tab-pane fade">

<div class="row">

<div class="col-md-1"></div>

<div class="col-md-1" style="margin-top: 20px;">

<?php if($rsProfile['passport']){ ?>

<img src="images/<?php echo $rsProfile['passport']; ?>" class="img-responsive img-circle">

<?php }else{ ?>

<img src="images/icon.jpg" class="img-responsive img-circle">

<?php } ?>

</div>

<div class="col-md-5" style="margin-top: 50px;">

<form action="processProfile" method="post" enctype="multipart/form-data">

<?php if($error){ ?>

<div class="alert alert-info alert-dismissible" role="alert">

<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>

</button>

<strong>Error!</strong> <?php echo $error; ?>.

</div>

<?php } ?>

<div class="form-group">

<label>Name</label>

<input type="text" name="name" class="form-control"  value="<?php echo $rsProfile['name']; ?>" />

</div>



<div class="form-group">

<label>Phone Number</label>

<input type="text" name="phone" class="form-control" value="<?php echo $rsProfile['phone']; ?>" />

</div>



<div class="form-group">

<label>Password</label>

<input type="password" name="password" class="form-control" />

</div>



<div class="form-group">

<label>Confirm Password</label>

<input type="password" name="confirm" class="form-control" />

</div>



<div class="form-group">

<label>Change Picture</label>

<input type="file" name="image" class="form-control" />

</div>



<div class="form-group">

<input type="submit" name="submitProfile" value="Update" />

</div>

</form>

</div>



<div class="col-md-1"></div>





<div class="col-md-4 side_accordion">

<h2 style="margin-bottom: 30px;color: white; padding-top: 50px;">New Training Opportunities?</h2>

<a style="color: #fff;" href="programmes" >Click here now</a>

</div>









</div>

</div>

<!-- /#Vintage Bottom Ends Here  -->









<!-- /#Vintage Accessories Starts Here  -->

<div id="news_tab" class="tab-pane fade">

<div class="courses" style="padding-top: 70px;">

<div class="container">

<?php if($numNews > 0){ ?>

<?php for($n=0; $n<$numNews; $n++){

$rsNew = mysqli_fetch_assoc($resultNews);

?>

<div class="col-md-3 col-xs-12 col-lg-3 col-sm-6 animated wow fadeInUp animated" data-wow-delay=".5s" data-wow-offset="5" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;" >

<div class="swaps">

<img src="acms/pages/<?php echo $rsNew['banner_url'] ?>" alt="ovh" class="img-responsive grid">

<div class="news">

<p><?php echo date('d.m.y', strtotime($rsNew['date'])); ?></p>

<p><?php echo $rsNew['title'] ?></p>



<p> <a href="read-more?article=<?php echo base64_encode($rsNew['id']); ?>" style="color:#ea6224">Read More &gt;</a></p>

</div>

</div>

</div>

<?php } ?>

<?php }else{ ?>

<p align="center" style="margin-top: 60px; margin-bottom: 60px;">No news posted</p>

<?php } ?>

<?php if($totalNew > 5){ ?>

<div class="container" align="center">

<ul class="pagination">

<li><a href="?news=1">First</a></li>

<li class="<?php if($news <= 1){ echo 'disabled'; } ?>">

<a href="<?php if($news <= 1){ echo '#'; } else { echo "?news=".($news - 1); } ?>">Prev</a>

</li>

<li class="<?php if($news >= $totalNews){ echo 'disabled'; } ?>">

<a href="<?php if($news >= $totalNews){ echo '#'; } else { echo "?news=".($news + 1); } ?>">Next</a>

</li>

<li><a href="?news=<?php echo $totalNews; ?>">Last</a></li>

</ul>

</div>

<?php } ?>

</div>

</div>

</div>

<!-- /#Vintage Accessories Ends Here  -->









<!-- /#Vintage Accessories Starts Here  -->

<div id="job_tab" class="tab-pane fade">

<div class="container" style="padding-top:50px">

<div class="col-md-8">

<?php if($_GET['msg']){ ?>

<div class="alert alert-success alert-dismissible" role="alert">

<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>

</button>

<strong>Well done!</strong> Job was successfully posted.

</div>

<?php } ?>

<?php if($error){ ?>

<div class="alert alert-info alert-dismissible" role="alert">

<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>

</button>

<strong>Status!</strong> <?php echo $error; ?>.

</div>

<?php } ?>

<?php



if($totalJob > 0)

{

?>

<table width="800" border="0" cellpadding="3" cellspacing="3" class="table table-striped table-hover table-responsive">

<thead class="text-primary">

<tr>

<th width="35%">Job Title</th>

<th width="23%">Location</th>

<th width="24%">Qualification</th>

<th width="24%">Deadline</th>

<th width="50%">Send CV to</th>

<th width="20%">Posted by</th>

</tr>

</thead>

<?php

for($i=0; $i<$nsJob; $i++)

{

$row =mysqli_fetch_assoc($resultJob);



?>

<tr>

<td><?php echo $row['job_title']; ?></td>

<td><?php echo $row['location']; ?></td>

<td><?php echo $row['qualification']; ?></td>

<td><?php echo date('F d, Y', strtotime($row['deadline'])); ?></td>

<td><?php echo $row['send_to']; ?></td>

<td><?php echo $row['author'] ?></td>

</tr>

<?php } ?>

</table>

<?php  }else { echo 'No record found in database'; }?>

<?php if($totalJob > 5){ ?>

<div class="container" align="center">

<ul class="pagination">

<li><a href="?job=1">First</a></li>

<li class="<?php if($job <= 1){ echo 'disabled'; } ?>">

<a href="<?php if($job <= 1){ echo '#'; } else { echo "?job=".($job - 1); } ?>">Prev</a>

</li>

<li class="<?php if($job >= $totalJobs){ echo 'disabled'; } ?>">

<a href="<?php if($job >= $totalJobs){ echo '#'; } else { echo "?job=".($job + 1); } ?>">Next</a>

</li>

<li><a href="?job=<?php echo $totalJobs; ?>">Last</a></li>

</ul>

</div>

<?php } ?>

</div>

<div class="col-md-4 side_accordion">



<h2 style="margin-bottom: 20px;color: white;">Have any job openings?</h2>

<a style="color: #fff;" href="#" data-toggle="modal" data-target="#myModal1">Click to add job post</a>

</div>

<br /> <br />



</div>

</div>

<!-- /#Vintage Accessories Ends Here  -->



<div id="myModal1" class="modal fade" role="dialog">

<div class="modal-dialog">

<form action="processJob" method="post">



<div class="modal-content">

<div class="modal-header clearfix ">

<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="pg-close fs-14"></i>

</button>

<h4 class="p-b-5"><span class="semi-bold"><strong>Job</strong></span> Vacancy</h4>

</div>

<div class="modal-body">

<p class="small-text">Fill the form below</p>

<div class="row">

<div class="col-sm-6">

<div class="form-group form-group-default">

<label>Job Title</label>

<input name="title" type="text" class="form-control" required="required">

</div>

</div>

<div class="col-sm-6">

<div class="form-group form-group-default">

<label>Location</label>

<input name="location" type="text" class="form-control" required="required">

</div>

</div>

</div>

<div class="row">

<div class="col-sm-6">

<div class="form-group form-group-default">

<label>Qualification</label>

<select name="qualification" class="form-control" required>

<option value="">Choose one</option>

<option value="SSCE">SSCE</option>

<option value="OND">OND</option>

<option value="HND">HND</option>

<option value="BSC">Bsc</option>

<option value="Masters">Masters</option>

<option value="None">None</option>

</select></div>

</div>

<div class="col-sm-6">

<div class="form-group form-group-default">

<label>Deadline</label>

<input type="date" name="deadline" class="form-control" />

</div>

</div>

</div>

<div class="row">

<div class="col-sm-12">

<div class="form-group form-group-default">

<label>Send CV to</label>

<input type="text" name="send_to" class="form-control" />

</div>

</div>

</div>

<div class="modal-footer">

<input type="hidden" name="alumni" value="<?php echo $rsProfile['name']; ?>" />

<input type="submit" class="btn btn-success" name="postJob" value="Post Job">

<button type="button" class="btn btn-cons" data-dismiss="modal">Close</button>

</div>



</div>

</form>



</div>

</div>





</div>











</div>

</div>



</div>

















<div id="alumni_news_area">

<div id="panel-2146-0-0-3" class="so-panel widget_sayidan_blocks_widget" data-index="3" >

<div class="so-widget-sayidan_blocks_widget so-widget-sayidan_blocks_widget-default-d75171398898">

<div class="block-links">

<div class="container">

<div class="row">

<div class="block-news col-md-4 col-sm-12 col-xs-12">

<div class="column-news">

<div class="title-links">

<h3 class="heading-regular">Latest News</h3>

</div>



<div class="post-wrapper">

<?php for($n=0; $n<$nsMedia; $n++){

$rsMedia = mysqli_fetch_assoc($qsMedia);

?>

<div class="post-item clearfix">



<div class="image-frame post-photo-wrapper">

<a href="">

<img width="262" height="179" src="acms/pages/<?php echo $rsMedia['banner_url'] ?>" class="img-responsive wp-post-image" alt="" />

</a>

</div>



<div class="post-desc-wrapper ">

<div class="post-desc">

<div class="post-title">

<h6 class="heading-regular">

<a href="#"><?php echo $rsMedia['title'] ?></a>

</h6>

</div>

<div class="post-excerpt">

<p><a href="read-more?article=<?php echo base64_encode($rsMedia['id']); ?>" style="color:#ea6224">Read More &gt;</a></p>

</div>

</div>

</div>

</div>

<?php } ?>

</div>

</div>

</div>



<div class="block-career col-md-4 col-sm-12 col-xs-12">

<div class="column-career">

<div class="title-links">

<h3 class="heading-regular">Career Opportunity</h3>

</div>

<div class="career-content">

<?php for($j=0; $j<$nsJobs; $j++){

$rsJobs = mysqli_fetch_assoc($qsJob);

?>

<div class="company-item clearfix">

<div class="company-logo">

<?php if(find_value('alumni', 'name', 'passport', $rsJobs['author']) != ""){ ?>

<img src="images/<?php echo (find_value('alumni', 'name', 'passport', $rsJobs['author'])); ?>">

<?php }else{ ?>

<img src="images/icon.jpg">

<?php } ?>

	</div>

<div class="company-desc-wrapper">

<div class="company-desc">

<div class="company-title">

<h6 class="heading-regular">

<?php echo $rsJobs['job_title']; ?>

</h6>

</div>

<div class="company-excerpt">

<p><?php echo $rsJobs['qualification']; ?><br>

<?php echo $rsJobs['location']; ?><br>

<?php echo date('F d, Y', strtotime($rsJobs['deadline'])); ?>&nbsp;<span style="color: #c00">(Deadline)</span></p>

</div>

</div>

</div>

</div>

<?php } ?>

</div></div></div>



<div class="block-event-calendar col-md-4 col-sm-12 col-xs-12">

<div class="column-calendar" >

<div class="title-links">

<h3 class="heading-regular">Event Calendar</h3></div>

<div class="content-calendar bg-calendar no-padding" style="background: #fff;">


<div class="list-view">
<?php for($n=0; $n<$nsEvent; $n++){

$rsEvent = mysqli_fetch_assoc($qsEvent);

?>

<div class="view-item">

<div class="date-item">

<span class="dates text-light"><?php echo date('D', strtotime($rsEvent['date']))?></span>

<span class="day text-bold color-theme"><?php echo date('d', strtotime($rsEvent['date']))?></span>

<span class="month text-light"><?php echo date('F', strtotime($rsEvent['date']))?></span>

</div>



<div class="date-desc-wrapper">

<div class="date-desc">

<div class="date-title">

<h6 class="heading-regular"><a href="#"><?php echo $rsEvent['title']; ?></a></h6>

</div>

<div class="place"> <span class="icon map-icon"></span> <span class="text-place"><?php echo $rsEvent['banner_text']; ?></span></div></div></div></div>
<?php } ?>
</div>



</div></div></div></div></div></div></div></div>









</div>









<?php include('inc/footer2.php'); ?>







<script src="dist/js/bootstrap.min.js"></script>



<script src="dist/js/owl.carousel.min.js"></script>

<script src="dist/js/wow.min.js"></script>

<script src="dist/js/main.js"></script>



</body>

</html>
