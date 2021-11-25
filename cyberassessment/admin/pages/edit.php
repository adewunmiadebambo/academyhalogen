<?php
session_start();
include('connect.php');
include('administrator-session.php');
require_once('fns.php');


$id = $_GET['id'];

$qsHome = mysqli_query($connect, "select * from applicants where id = '$id'");
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
<title>Academy Halogen</title>

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
<h2>Applicants</h2>
</div>
</div>
<!-- /. ROW  -->
<hr />
	<a href="membership.php" class="btn btn-success">Go Back</a><br><br>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="panel-primary">
<div class="panel-heading" style="width: 100%;">
</div>
	
<?php $email = $row['email'];?>

<form action="#" method="post">
	
	<div class="row">
	
		<div class="col-md-6">
		
			<label>Surname</label>
			
			<input type="text" name="surname" value="<?php echo $row['lastname']; ?>" class="form-control" readonly>
		
		</div>
	
		<div class="col-md-6 form-group">
		
			<label>Firstname</label>
			
			<input type="text" name="firstname" value="<?php echo $row['firstname']; ?>" class="form-control" readonly>
		
		</div>
	
	</div>
	
	<div class="row">
	
		<div class="col-md-6">
		
			<label>Email</label>
			
			<input type="text" name="employer" value="<?php echo $row['email']; ?>" class="form-control" readonly>
		
		</div>
	
		<div class="col-md-6 form-group">
		
			<label>Gender</label>
			
			<input type="text" name="pemail" value="<?php echo $row['gender']; ?>" class="form-control" readonly>
		
		</div>
	
	</div>
	
	<div class="row">
	
		<div class="col-md-6">
		
			<label>Phone</label>
			
			<input type="text" name="email" value="<?php echo $row['phone']; ?>" class="form-control" readonly>
		
		</div>
	
		<div class="col-md-6 form-group">
		
			<label>--</label>
			
			<input type="text" name="phone" value="<?php echo $row['']; ?>" class="form-control">
		
		</div>
	
	</div>
	
	<div class="row">
	
		<div class="col-md-6">
		
			<?php 
	
			$video = $row['video'];

			if(is_null($video)){
				echo "<strong>Video Not Available For This Profile. Please Contact Applicant To Submit Their Video File</strong>";
			}
			else{
				echo('<video src="../../uploads/'.$video.'" width="480" height="320" controls></video>');
			}

			?>
		
		</div>
	
		<div class="col-md-6"></div>
	
	</div>
	
	
	
	<button class="btn btn-md"><a href="answers.php?email=<?php echo $row['email']; ?>" >View Answers</a></button>
	
	
	
	
	<br>
	
	<!--<input type="submit" value="Save" class="btn btn-success" onClick="return confirm('Are you sure you want to make this change?');">--><br>
	
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
