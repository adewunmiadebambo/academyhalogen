<?php
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<link rel="shortcut icon" href="favicon.ico" /><title>Custom CMS - Aledoy Solutions Limited</title>

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

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]--><script language="JavaScript" type="text/javascript" src="openwysiwyg/wysiwyg.js"></script>
</head>

<body>

<div id="wrapper">

<?php include('top-nav.php'); ?>

<?php include('my-nav.php'); ?>
<!-- /.navbar-static-side -->
</nav>

<!-- Page Content -->
<div id="page-wrapper">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12">
<h1 class="page-header">Programmes</h1>
</div>
<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
<div class="col-md-7 col-sm-12">
<?php if($error)
{
?>
<div class="text-danger" style="margin-bottom:10px;"><span class="glyphicon glyphicon-remove"></span> <?php echo $error; ?></div>
<?php } ?>

<?php if($correct)
{
?>
<div class="text-success" style="margin-bottom:10px;"><span class="glyphicon glyphicon-ok"></span> <?php echo $correct; ?></div>

<?php } ?>
<form action="proc-thought-leadership.php" method="post" enctype="multipart/form-data" >
<div class="form-group input-group">
<span class="input-group-addon">Document Title</span>
<input name="title" type="text" class="form-control" placeholder="Title" required="required">
</div>

<div class="form-group input-group">
<span class="input-group-addon">Date Published</span>

<select name="date_mm" class="form-control" style="width:100px;" required="required">
    <option value="">Choose Month</option>
    <option value="01">January</option>
    <option value="02">February</option>
    <option value="03">March</option>
    <option value="04">April</option>
    <option value="05">May</option>
    <option value="06">June</option>
    <option value="07">July</option>
    <option value="08">August</option>
    <option value="09">September</option>
    <option value="10">October</option>
    <option value="11">November</option>
    <option value="12">December</option>
</select>

<input name="date_yy" type="text" class="form-control" placeholder="<?php echo date('Y'); ?>" required="required" style="width:100px;">
</div>

<div class="form-group input-group">
<span class="input-group-addon">Upload Document</span>
<input name="doc_file" type="file" class="form-control">
</div>

<div class="form-group input-group">
<span class="input-group-addon">Upload Image Cover</span>
<input name="image_file" type="file" class="form-control">
</div>

<div class="form-group input-group">
<input type="submit" class="btn btn-primary" value="Submit">
</div>

</form>
</div>
<div class="col-md-5">
<?php include('pop-images.php'); ?>
</div>
</div>

</div>
<!-- /.container-fluid -->

<div class="row" style="margin-top:50px;">
<div class="col-lg-12">
<div class="panel panel-default">
<div class="panel-heading">
View Pages
</div>
<!-- /.panel-heading -->
<div class="panel-body">
<div class="dataTable_wrapper">
<table class="table table-striped table-bordered table-hover" id="dataTables-example2">
<thead>
<tr>
<th>Title</th>
<th>Date</th>
<th>Filepath</th>
<th>Action</th>
</tr>
</thead>
<tbody>

<?php
//Query based on button clicked abot

$query = "select * from thought_leadership order by id desc";
$result = mysqli_query($connect, $query);
$num=mysqli_num_rows($result);
for($i=0; $i<$num; $i++)
{
$row = mysqli_fetch_array($result)
?>
<tr class="odd gradeX">
<td><b><?php echo $row['title']; ?></b></td>
<td><?php echo $row['date']; ?></td>
<td><?php echo $row['filepath']; ?></td>
<td>


<a onClick="return confirm('Are you sure you want to delete this page');" href="del_btn.php?id=<?php echo base64_encode($row['id']); ?>&tab=<?php echo base64_encode('thought_leadership'); ?>&return_url=<?php echo base64_encode('add_thought_leadership.php'); ?>"><input type="button" value="Delete" /></a>

</td>
</tr>
<?php
}
?>


</tbody>
</table>
</div>
<!-- /.table-responsive -->

</div>
<!-- /.panel-body -->
</div>
</div>
<!-- /.col-lg-12 -->
</div>
<!-- /.col-lg-6 -->

</div>
<!-- /.col-lg-6 -->
</div>
<!-- /.row -->

</div>
<!-- /.row -->

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

<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
$(document).ready(function() {
$('#dataTables-example').DataTable({
responsive: true
});
$('#dataTables-example2').DataTable({
responsive: true
});
});
</script>

</body>

</html>
