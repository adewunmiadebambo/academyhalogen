<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$get = $_GET['token'];

$qsHome = mysqli_query($connect, "select * from events");
$nsHome = mysqli_num_rows($qsHome);


?>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<link rel="shortcut icon" href="../../images/favicon.ico" />
<title>Add Event</title>

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
<style>
#video{
object-fit: initial;
height: 80px;
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
<h2>Add Event</h2>
</div>
</div>
<!-- /. ROW  -->
<hr />
	
	<div class="col-md-7">
	<!--<a href="export.php" class="btn btn-success">Export All</a><br><br>-->
		
	<p><?php if($error_){ echo '<div class="alert alert-danger"><b>'.$error_.'</b></div>'; } ?></p>
	<p><?php if($correct_){ echo '<div class="alert alert-success"><b>'.$correct_.'</b></div>'; } ?></p>

	<form method="post" enctype="multipart/form-data" action="proc-event.php">
	
		<div class="form-group input-group">
			
			<span class="input-group-addon">Event Name</span>
			
			<input name="name" type="text" class="form-control" placeholder="Title" required="required">
			
		</div>
	
		<div class="form-group input-group">
			
			<span class="input-group-addon">Banner Image</span>
			
			<input name="userfile" type="file" class="form-control" required>
			
		</div>
		
		<div class="form-group input-group">
					
			<span><b>Event Content</b> <br></span>
						
			<textarea name="content" placeholder="content" id="content"></textarea>
			
			<script language="JavaScript" type="text/javascript">
								
				generate_wysiwyg('content');
							
			</script>
		
		</div>
	
		<div class="form-group input-group">
			
			<input type="submit" class="btn btn-primary" value="Add Event">
			
		</div>
	
	</form>
		
	</div>
	
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="panel-primary">
<div class="panel-heading" style="width: 100%; margin-top: 100px;">
Details on homepage <br><br>

</div>
	
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
		
	<?php if($_GET['saved'] == 'Y')
{
	echo '<br><br><div class="alert alert-success">You changes on '.$_GET['name'].'\'s profile have been made</div>';
}
	?>
	
<table class="table table-striped table-bordered table-hover" id="dataTables-example">
<thead>
<tr>
<th>S/N</th>
<th>Name</th>
<th>Banner Imgs</th>
<th>Action</th>
</tr>
</thead>
<tbody>
<?php 
for($i=0; $i<$nsHome; $i++){
$row = mysqli_fetch_assoc($qsHome);

?>
<tr>
<td><?php echo $i + 1; ?></td>
<td><?php echo $row['event_name']; ?></td>
<td><?php echo $row['banner_img']; ?></td>
	<td>
			<a href="edit3.php?id=<?php echo $row['id']; ?>" class="btn btn-warning">Edit</a>
			<a href="delete3.php?id=<?php echo $row['id']; ?>" class="btn btn-danger" onClick="return confirm('Are you sure you want to delete this record?');">Delete</a>
	
	</td>
</tr>
<?php } ?>
</tbody>
</table>
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
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
			 "language": {
    "paginate": {
      "previous": "<",
	   "next": ">"
    }
  },
                responsive: true,
				"lengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "All"]]
        });
    });
    </script>
        <script>
    $(document).ready(function() {
        $('#dataTables-example2').DataTable({
			 "language": {
    "paginate": {
      "previous": "<",
	   "next": ">"
    }
  },
                responsive: true,
				"lengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "All"]]
        });
    });
    </script>
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
