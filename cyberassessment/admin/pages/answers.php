<?php 
session_start();
include('connect.php');
include('administrator-session.php');
require_once('fns.php');

$get = $_GET['token'];

$email = $_GET['email'];

$qsHome = mysqli_query($connect, "select * from answers where user_email = '$email'");
$nsHome = mysqli_num_rows($qsHome);
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
<h2>Applicants Answers</h2>
</div>
</div>
	
	<?php echo $row['ans1']; ?>
<!-- /. ROW  -->
<hr />
<!--<a href="export.php" class="btn btn-success">Export All</a><br><br>-->
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="panel-primary">
<div class="panel-heading" style="width: 100%;">
Details on homepage <br><br>

</div>


	<div class="row">
	
		<div class="col-md-6">
		
			<label>Q1</label>
			
			<input type="text" name="email" value="<?php echo $row['ans1']; ?>" class="form-control" readonly >
		
		</div>
	
		<div class="col-md-6 form-group">
		
			<label>Q2</label>
			
			<input type="text" name="phone" value="<?php echo $row['ans2']; ?>" class="form-control" readonly>
		
		</div>
	
	</div>

	<div class="row">
	
		<div class="col-md-6">
		
			<label>Q3</label>
			
			<input type="text" name="email" value="<?php echo $row['ans3']; ?>" class="form-control" readonly >
		
		</div>
	
		<div class="col-md-6 form-group">
		
			<label>Q4</label>
			
			<input type="text" name="phone" value="<?php echo $row['ans4']; ?>" class="form-control" readonly>
		
		</div>
	
	</div>

	<div class="row">
	
		<div class="col-md-6">
		
			<label>Q5</label>
			
			<input type="text" name="email" value="<?php echo $row['ans5']; ?>" class="form-control" readonly >
		
		</div>
	
		<div class="col-md-6 form-group">
		
			<label>Q6</label>
			
			<input type="text" name="phone" value="<?php echo $row['ans6']; ?>" class="form-control" readonly>
		
		</div>
	
	</div>

	<div class="row">
	
		<div class="col-md-6">
		
			<label>Q7</label>
			
			<input type="text" name="email" value="<?php echo $row['ans7']; ?>" class="form-control" readonly >
		
		</div>
	
		<div class="col-md-6 form-group">
		
			<label>Q8</label>
			
			<input type="text" name="phone" value="<?php echo $row['ans8']; ?>" class="form-control" readonly>
		
		</div>
	
	</div>

	<div class="row">
	
		<div class="col-md-6">
		
			<label>Q9</label>
			
			<input type="text" name="email" value="<?php echo $row['ans9']; ?>" class="form-control" readonly >
		
		</div>
	
		<div class="col-md-6 form-group">
		
			<label>Q10</label>
			
			<input type="text" name="phone" value="<?php echo $row['ans10']; ?>" class="form-control" readonly>
		
		</div>
	
	</div>

	<div class="row">
	
		<div class="col-md-6">
		
			<label>Q11</label>
			
			<input type="text" name="email" value="<?php echo $row['ans11']; ?>" class="form-control" readonly >
		
		</div>
	
		<div class="col-md-6 form-group">
		
			<label>Q12</label>
			
			<input type="text" name="phone" value="<?php echo $row['ans12']; ?>" class="form-control" readonly>
		
		</div>
	
	</div>

	<div class="row">
	
		<div class="col-md-6">
		
			<label>Q13</label>
			
			<input type="text" name="email" value="<?php echo $row['ans13']; ?>" class="form-control" readonly >
		
		</div>
	
		<div class="col-md-6 form-group">
		
			<label>Q14</label>
			
			<input type="text" name="phone" value="<?php echo $row['ans14']; ?>" class="form-control" readonly>
		
		</div>
	
	</div>

	<div class="row">
	
		<div class="col-md-6">
		
			<label>Q15</label>
			
			<input type="text" name="email" value="<?php echo $row['ans15']; ?>" class="form-control" readonly >
		
		</div>
	
		<div class="col-md-6 form-group">
		
			<label>Q16</label>
			
			<input type="text" name="phone" value="<?php echo $row['ans16']; ?>" class="form-control" readonly>
		
		</div>
	
	</div>

	<div class="row">
	
		<div class="col-md-6">
		
			<label>Q17</label>
			
			<input type="text" name="email" value="<?php echo $row['ans17']; ?>" class="form-control" readonly >
		
		</div>
	
		<div class="col-md-6 form-group">
		
			<label>Q18</label>
			
			<input type="text" name="phone" value="<?php echo $row['ans18']; ?>" class="form-control" readonly>
		
		</div>
	
	</div>

	<div class="row">
	
		<div class="col-md-6">
		
			<label>Q19</label>
			
			<input type="text" name="email" value="<?php echo $row['ans19']; ?>" class="form-control" readonly >
		
		</div>
	
		<div class="col-md-6 form-group">
		
			<label>Q20</label>
			
			<input type="text" name="phone" value="<?php echo $row['ans20']; ?>" class="form-control" readonly>
		
		</div>
	
	</div>
	
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
