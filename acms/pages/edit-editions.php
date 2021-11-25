<?php require_once('connect.php'); ?>
<?php
//initialize the session
if (!isset($_SESSION)) {
session_start();
}

if (!isset($_SESSION['MM_Username'])){

header('Location:./');
exit;

}


$album = mysqli_real_escape_string($connect, base64_decode($_GET['album']));
$pic = mysqli_real_escape_string($connect, base64_decode($_GET['picture']));

$query = "SELECT * FROM cartoons GROUP BY cover_name HAVING COUNT(DISTINCT cover_name) = 1 order by id desc";
$result = mysqli_query($connect, $query);
$num = mysqli_num_rows($result);

$query2 = "select * from cartoons where cover_name='$album'";
$result2 = mysqli_query($connect, $query2);
$row2 = mysqli_fetch_assoc($result2);

$qry = "select * from cartoons where cover_name='$pic'";
$res= mysqli_query($connect, $qry);
$nm = mysqli_num_rows($res);

$qs = mysqli_query($connect, "select * from cartoons where id='{$_GET['edit']}'");
$ns = mysqli_num_rows($qs);
$rs = mysqli_fetch_assoc($qs);

$qsCat = mysqli_query($connect, "select * from categories");
$nsCat = mysqli_num_rows($qsCat);
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
<title>Nnenna & Friends Cartoon Magazine</title>

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
<h2>Cartoon Magazine</h2>
</div>
</div>
<!-- /. ROW  -->
<hr />

<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="panel panel-primary">
<div class="panel-heading">
Live Edition
</div>
<div class="panel-body">

<?php if($num > 0){ ?>
<p align="center">Click on a magazine name to edit or delete magazine</p>
<p align="center">Click on a page cover to edit or delete pages in a magazines</p>
<table class="table table-striped table-bordered table-hover" id="dataTables-example">
<thead>
<tr>
<th>S/N</th>
<th>Magazine Name</th>
<th>Page</th>
<th>Category</th>
</tr>
</thead>
<tfoot>
<tr>
<th>Magazine Name</th>
<th>Page</th>
<th>Category</th>
</tr>
</tfoot>
<tbody>
<?php 
for($i=0; $i<$num; $i++){
$row = mysqli_fetch_assoc($result);

?>
<tr>
<td><?php echo $i + 1; ?></td>
<td><a href="edit-editions.php?album=<?php echo base64_encode($row['cover_name']); ?>"><?php echo $row['cover_name']; ?></a> </td>
<td><a href="edit-editions.php?picture=<?php echo base64_encode($row['cover_name']); ?>"><img src="../cartoons/<?php echo $row['picture']; ?>" width="100" height="100" class="img-responsive img-thumbnail"></a></td>
<td><?php echo $row['category']; ?></td>
</tr>
<?php } ?>
</tbody>
</table>

<?php }else{ ?>
<p align="center" style="color:#c00">You havn't uploaded any edition yet</p>
<?php } ?>
</div>
</div>
</div>

<?php if($_GET['album']){ ?>

<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="panel panel-primary">
<div class="panel-heading">
Edit Magazine Name
</div>
<form action="processAlbum3.php" method="post" name="upload">
<?php if($_GET['msg']){ ?>
<div class="alert alert-success" role="alert">
<button class="close" data-dismiss="alert"></button>
<strong>Success: </strong>Magazine edited.
</div>
<?php } ?> 
<?php if($_GET['delete']){ ?>
<div class="alert alert-success" role="alert">
<button class="close" data-dismiss="alert"></button>
<strong>Success: </strong>Magazine deleted.
</div>
<?php } ?>                            
<div class="panel-body">
<label>Magazine Name</label>

<div class="input-group">
<span class="input-group-addon"><i class="fa fa-folder-o"></i></span>
<input type="text" class="form-control" name="album" value="<?php echo $row2['cover_name']; ?>" />
</div>

</div>
<div class="panel-footer">
<input type="submit" class="btn btn-success btn-sm" value=" CHANGE MAGAZINE " />
<input type="submit" class="btn btn-danger btn-sm pull-right" name="delete" value=" DELETE MAGAZINE " onClick="return confirm('You are about to delete this magazine and every thing associated with it')"  />
<input type="hidden" name="old" value="<?php echo $row2['cover_name'] ?>">
</div>
</form>
</div>
</div>
<?php } ?>

<?php if($_GET['picture']){ ?>

<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="panel panel-primary">
<div class="panel-heading">
Edit Pages
</div>
<?php if($_GET['msg']){ ?>
<div class="alert alert-success" role="alert">
<button class="close" data-dismiss="alert"></button>
<strong>Success: </strong>Page edited.
</div>
<?php } ?> 
<?php if($_GET['delete']){ ?>
<div class="alert alert-success" role="alert">
<button class="close" data-dismiss="alert"></button>
<strong>Success: </strong>Page deleted.
</div>
<?php } ?>                            
<div class="panel-body">
<p align="center">Click on a page to edit or delete page</p>
<table class="table table-striped table-bordered table-hover" id="dataTables-example2">
<thead>
<tr>
<th>S/N</th>
<th>Magazine Name</th>
<th>Picture</th>
<th>Category</th>
</tr>
</thead>
<tbody>
<?php 
for($p=0; $p<$nm; $p++){
$rw = mysqli_fetch_assoc($res);

?>
<tr>
<td><?php echo $p + 1; ?></td>
<td><?php echo $rw['cover_name']; ?></td>
<td><a href="edit-editions.php?edit=<?php echo $rw['id']; ?>&album_name=<?php echo base64_encode($rw['cover_name']); ?>"><img src="../cartoons/<?php echo $rw['picture'] ?>" width="80" height="80" class="img-responsive img-thumbnail"></a></td>
<td><?php echo $row['category']; ?></td>
</tr>
<?php } ?>
</tbody>
</table>
</div>
</div>
</div>
<?php } ?>


<?php if($_GET['edit']){ ?>

<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="panel panel-primary">
<div class="panel-heading">
Edit Page
</div>
<form action="processPicture3.php" method="post" enctype="multipart/form-data">
<label>Magazine Name</label>
<div class="input-group">
<span class="input-group-addon"><i class="fa fa-folder-o"></i></span>
<input type="text" class="form-control" name="album" value="<?php echo $rs['cover_name']; ?>" />
</div>
<label>Pages</label>
<div class="input-group">
<span class="input-group-addon"><i class="fa fa-folder-o"></i></span>
<input type="file" class="form-control" name="image" />
</div>

<div class="panel-footer">
<input type="submit" class="btn btn-success btn-sm" value=" EDIT PAGE " />
<input type="submit" class="btn btn-danger btn-sm pull-right" name="delete" value=" DELETE PAGE " onClick="return confirm('You are about to delete this page and every thing associated with it')"  />
<input type="hidden" name="album_name" value="<?php echo $_GET['album_name']; ?>">
<input type="hidden" name="id" value="<?php echo $rs['id'] ?>">
</div>
</form>
</div>
</div>
<?php } ?>
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
