<?php
include('../acms/pages/connect.php');
require_once('../acms/pages/fns.php');

$qsMedia = mysqli_query($connect, "select * from news_page order by id desc limit 4");
$nsMedia = mysqli_num_rows($qsMedia);

?>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">

<title>News</title>

<base target="_parent">

<link rel="stylesheet" href="news_scroll.css" type="text/css">

</head>

<body class="news-scroll" onMouseover="scrollspeed=0" onMouseout="scrollspeed=current" OnLoad="NewsScrollStart();">


<!-- START NEWS FEED -->
<div id="NewsDiv">
<div class="scroll-text-if">

<!-- SCROLLER CONTENT STARTS HERE -->



<?php for($n=0; $n<$nsMedia; $n++){ 
$rsMedia = mysqli_fetch_assoc($qsMedia);	
?>


<span class="scroll-title-if">
<?php echo date('d.m.y', strtotime($rsMedia['date'])) ?><br>
</span>

<?php echo $rsMedia['title']; ?>
<br>
<span style="float: right; font-size: 10px;"><a href="../read-more?article=<?php echo base64_encode($rsMedia['id']); ?>">Read more</a></span>

<br><br>

<hr>

<?php } ?>
<!-- END SCROLLER CONTENT -->

</div>
</div>
<!-- END NEWS FEED -->






</body>
</html>
