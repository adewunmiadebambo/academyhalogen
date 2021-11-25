<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$id = $_GET['id'];

$qsHome = mysqli_query($connect, "select * from member_update where id = '$id'");
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
<title>Oando cooperative</title>

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
<h2>Membership Applicants</h2>
</div>
</div>
<!-- /. ROW  -->
<hr />
	<a href="member-approval.php" class="btn btn-success">Go Back</a><br><br>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="panel-primary">
<div class="panel-heading" style="width: 100%;">
Edit Details</div>

<form action="do-approve.php" method="post">
	
	<div class="row">
	
		<div class="col-md-6">
		
			<label>Surname</label>
			
			<input type="text" name="surname" value="<?php echo $row['surname']; ?>" class="form-control" readonly>
		
		</div>
	
		<div class="col-md-6 form-group">
		
			<label>Firstname</label>
			
			<input type="text" name="firstname" value="<?php echo $row['firstname']; ?>" class="form-control" readonly>
		
		</div>
	
	</div>
	
	<div class="row">
	
		<div class="col-md-6">
		
			<label>Official Email</label>
			
			<input type="email" name="email" value="<?php echo $row['email']; ?>" class="form-control" readonly>
		
		</div>
	
		<div class="col-md-6 form-group">
		
			<label>Phone Number</label>
			
			<input type="text" name="phone" value="<?php echo $row['phone']; ?>" class="form-control" readonly>
		
		</div>
	
	</div>
	
	<div class="row">
	
		<div class="col-md-6">
		
			<label>Personal Email</label>
			
			<input type="email" name="pemail" value="<?php echo $row['p_email']; ?>" class="form-control" readonly>
		
		</div>
	
		<div class="col-md-6 form-group">
		
			<label>Name of Next Of Kin</label>
			
			<input type="text" name="kinname" value="<?php echo $row['kinname']; ?>" class="form-control" readonly>
		
		</div>
	
	</div>
	
	<div class="row">
	
		<div class="col-md-6">
		
			<label>Next Of Kin Phone</label>
			
			<input type="tel" name="kinphone" value="<?php echo $row['kinphone']; ?>" class="form-control" readonly>
		
		</div>
	
		<div class="col-md-6 form-group">
		
			<label>Employer</label>
			
			<input type="text" name="employer" value="<?php echo $row['employer']; ?>" class="form-control" readonly>
		
		</div>
	
	</div>
	
	<input type="hidden" name="id" value="<?php echo $row['id']; ?>">
	
	<input type="hidden" name="password" value="<?php echo $row['password']; ?>">
	
	<input type="hidden" name="code" value="<?php echo $row['code']; ?>">
	
	
	<br>
	
	<input type="submit" value="Approve" class="btn btn-success" onClick="return confirm('Are you sure you want to approve this account for login?');"><br>
	
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
