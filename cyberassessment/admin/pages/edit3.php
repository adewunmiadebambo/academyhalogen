<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$id = $_GET['id'];

$qsHome = mysqli_query($connect, "select * from events where id = '$id'");
$row = mysqli_fetch_array($qsHome);


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
<title>Category Edit</title>

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
<h2>Category Edit</h2>
</div>
</div>
<!-- /. ROW  -->
<hr />
	<a href="add-category.php" class="btn btn-success">Go Back</a><br><br>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="panel-primary">
<div class="panel-heading" style="width: 100%;">
Edit Details</div>
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
<form action="do-edit3.php" method="post" role="form" enctype="multipart/form-data">
	
	<div class="row">
		
		
	
		<div class="col-md-6">
		
			<label>Name</label>
			
			<input type="text" name="event_name" value="<?php echo $row['event_name']; ?>" class="form-control">
		
		</div>
	
		<div class="col-md-6">
		
			<label>Name</label>
			
			<input type="file" name="banner_img" value="<?php echo $row['banner_img']; ?>" class="form-control">
		
		</div>
		
		<div class="form-group input-group">
					
			<span><b>Event Content</b> <br></span>
						
			<textarea name="content" placeholder="content" id="content"><?php echo $row['content']; ?></textarea>
			
			<script language="JavaScript" type="text/javascript">
								
				generate_wysiwyg('content');
							
			</script>
		
		</div>
		
		<input type="hidden" name="id" value="<?php echo $row['id']; ?>">
	
		
	
	</div>
	
	
	
	
	
	<br>
	
	<input type="submit" value="Save" class="btn btn-success" onClick="return confirm('Are you sure you want to make this change?');" name="edit"><br>
	
	</form>
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
