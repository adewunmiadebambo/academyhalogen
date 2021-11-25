<?php 
session_start();
ob_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$qsCat = mysqli_query($connect, "SELECT * FROM events_page where event_type = 'picture' GROUP BY title HAVING COUNT(DISTINCT title) = 1");
$nsCat = mysqli_num_rows($qsCat);

$query = "SELECT * FROM events_page where event_type = 'picture' GROUP BY title HAVING COUNT(DISTINCT title) = 1 order by id desc limit 4";
$result = mysqli_query($connect, $query);
$nums = mysqli_num_rows($result);

if(isset($_GET['uploads']))
$file_uploads=$_GET['uploads'];

// Max size PER file in KB
$max_file_size="5MB";

// Max size for all files COMBINED in KB
$max_combined_size="10MB";

$allowed_types= "jpg,png";

?>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<link rel="shortcut icon" href="../../assets/resources/images/favicon.png" />
<title>Custom CMS - Aledoy Solutions Limited</title>

<!-- Bootstrap Core CSS -->
<link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

<!-- DataTables CSS -->
<link href="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link href="../bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<script language="JavaScript" type="text/javascript" src="openwysiwyg/wysiwyg.js"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<style type="text/css">

.message {
font-family: Verdana, Arial, sans-serif;
font-size: 11pt;
color: #000000;
background-color:#EBEBEB;
}

a:hover {
text-decoration:none;
color: #000000;
}

.table {
border-collapse:collapse;
border:1px solid #000000;
width:450px;
}

.table_header {
border:1px solid #000000;
background-color:#C03738;
font-family: Verdana, Arial, sans-serif;
font-size: 11pt;
font-weight:bold;
color: #FFFFFF;
text-align:center;
padding:2px;
}

.upload_info {
border:1px solid #000000;
background-color:#EBEBEB;
font-family: Verdana, Arial, sans-serif;
font-size: 8pt;
color: #000000;
padding:4px;
}

.table_body {
border:1px solid #000000;
background-color:#EBEBEB;
font-family: Verdana, Arial, sans-serif;
font-size: 10pt;
color: #000000;
padding:2px;
}

.table_footer {
border:1px solid #000000;
background-color:#C03738;
text-align:center;
padding:2px;
}

input,select,textarea {
font-family: Verdana, Arial, sans-serif;
font-size: 10pt;
color: #000000;
background-color:#AFAEAE;
border:1px solid #000000;
}

.copyright {
border:0px;
font-family: Verdana, Arial, sans-serif;
font-size: 9pt;
color: #000000;
text-align:right;
}

form {
padding:0px;
margin:0px;
}
</style>
</head>

<body>

<div id="wrapper">

<?php include('top-nav.php'); ?>

<?php include('my-nav.php'); ?>
<!-- /.navbar-static-side -->

<!-- Page Content -->
<div id="page-wrapper" >
<div id="page-inner">
<div class="row">
<div class="col-md-12">
<h2>Picture Event</h2>
</div>
</div>
<!-- /. ROW  -->
<hr />

<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
<div class="panel panel-primary">
<div class="panel-heading">
Recent Events
</div>
<div class="panel-body">
<?php if($nums > 0){ ?>
<?php for($k=0; $k<$nums; $k++){ 
$row = mysqli_fetch_assoc($result);
?>
<div class="col-md-6" style="height: 250px">
<img src="./events/<?php echo $row['banner_url']; ?>" class="img-responsive img-thumbnail" >
<p><?php echo $row['cover_name']; ?></p>
</div>
<?php } }else{ ?>
<p align="center" style="color:#c00">You havn't uploaded any picture yet</p>
<?php } ?>
</div>
</div>
</div>

<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
<div class="panel panel-primary">
<div class="panel-heading">
Add A New Picture
</div>

<?php if($_GET['msg']){ ?>
<div class="alert alert-success" role="alert">
<button class="close" data-dismiss="alert"></button>
<strong>Success: </strong>Uploads successful.
</div>
<?php } ?> 
<?php if($_GET['size']){ ?>
<div class="alert alert-danger" role="alert">
<button class="close" data-dismiss="alert"></button>
<strong>Sorry,</strong> your file is too large.
</div>
<?php } ?> 
<?php if($_GET['fail']){ ?>
<div class="alert alert-danger" role="alert">
<button class="close" data-dismiss="alert"></button>
<strong>Error</strong> picture not uploaded.
</div>
<?php } ?> 
<?php if(!isset($_GET['uploads'])) { ?>
<?php 

$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
$editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}

if (isset($_POST['uploads']) && ($_POST['folder1'] == "Select Folder...") && ($_POST['folder'] == "")) {

header("Location:picture-event");

}elseif (isset($_POST['uploads']) && (isset($_POST['folder1']) && ($_POST['folder1'] != "View Exisiting Event"))) {

header("Location: picture-event?uploads={$_POST['number']}&folder=".base64_encode($_POST['folder1']));

}elseif (isset($_POST['uploads']) && (isset($_POST['folder']) && ($_POST['folder1'] == "View Exisiting Event") && ($_POST['folder'] != "" ))) {

header("Location: picture-event?uploads={$_POST['number']}&folder=".base64_encode($_POST['folder']));

}
?>

<form action="<?php echo $editFormAction ?>" method="post" name="form1">
<table width="361" class="table table-striped table-responsive" align="center">
<tr>
<td width="141">Number of Pictures:</td>
<td width="208"><label for="number">
<select name="number" id="number" required>
<option value="">Choose number</option>
<?php for($p=1; $p<21; $p++){ ?>
<option value="<?php echo $p; ?>"><?php echo $p; ?></option>
<?php } ?>
</select>
</label></td>
</tr>
<tr>
<td>Existing Event:</td>
<td><select name="folder1" id="folder">
<option>View Exisiting Event</option>
<?php

$sql2 = mysqli_query($connect, "SELECT * FROM events_page where event_type = 'picture' GROUP BY title HAVING COUNT(DISTINCT title) = 1 order by id desc");
$num = mysqli_num_rows($sql2);

for($j=0; $j<$num; $j++){
$rw = mysqli_fetch_assoc($sql2);	
?>

<option><?php echo $rw['title']; ?></option>
<?php } ?>
</select>  OR</td>
</tr>
<tr>
<td>Enter Event Name:</td>
<td><label for="folder"></label>
<input type="text" name="folder" id="folder" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td><input type="submit" name="uploads" id="button" value="Submit" /></td>
</tr>
</table>

</form>
<?php }else { ?>
<form action="processPictures" method="post" enctype="multipart/form-data" name="phuploader">
<table align="center" class="table">


<tr>
<td colspan="2" class="upload_info">
<b>Allowed Types:</b> <?php echo $allowed_types;?><br />
<b>Max size per file:</b> <?php echo $max_file_size?><br />
<b>Max size for all files combined:</b> <?php echo $max_combined_size?><br />
<p style="color: #c00">Note in case of a heavy file, uploads might not be completed</p>
</td>
</tr>
<tr>
<td class="table_body" width="20%"><b>Event Name:</b> </td>
<td class="table_body" width="80%"><input name="folder" type="text"  size="30" value="<?php echo base64_decode($_GET['folder']) ?>" /></td>
</tr>
<tr>
<td class="table_body" width="20%"><b>Event Date:</b> </td>
<td class="table_body" width="80%"><input name="date" type="date" size="60" /></td>
</tr>
<tr>
<input type="hidden" name="type" value="picture" />
<?php for($i=0;$i <= $file_uploads-1;$i++) { ?>
<td class="table_body" width="20%"><b>Pictures:</b> </td>
<td class="table_body" width="80%"><input type="file" name="file[]" size="30" /></td>
</tr>
<?php } ?>	
<tr>
<td colspan="2" align="center" class="table_footer">
<input type="hidden" name="submit" value="true" />
<input type="submit" value=" Upload Picture(s) " /> &nbsp;
<input type="reset" name="reset" value=" Reset Form " onclick="window.location.reload(true);" />
</td>
</tr>
</table>
</form>
<?php } ?>
</div>
</div>

</div>
</div>
<!-- /.container-fluid -->



</div>
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

<!-- DataTables JavaScript -->
<script src="../bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
<script src="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../dist/js/sb-admin-2.js"></script>

<script>

$(function() {
$('#company').hide();

$('#yes').click(function(){
$('#company').show();
});

$('#no').click(function(){
$('#company').hide();
});

});
</script>
</body>

</html>
