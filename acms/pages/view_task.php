<?php 
session_start();
include('connect.php');
include('fns.php');

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
    <![endif]-->

</head>

<body>

    <div id="wrapper">

         <?php include('top-nav.php'); ?>

            <?php include('my-nav.php'); ?>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Task</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          View Activity List
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        <div id="btn_filter">
                        <?php if(!$_GET['unit']) { ?>
                            <a href="?status=undone"><input type="button" value="Pending" class="btn btn-danger"></a>
                            <a href="?status=done"><input type="button" value="Closed" class="btn btn-success"></a>

                            <?php } ?>
                            <br><br>Click on the task you want to edit<br><br>
                        </div>
                            <div class="dataTable_wrapper">                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Task</th>
                                            <th>Purpose</th>
                                            <th>Responsibility</th>
                                            <th>Deadline</th>
                                            <th>Unit</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>

<?php
//Query based on button clicked abot 
if($_GET['status'])
{
   $query = "select * from activities where status = '".$_GET['status']."' and deadline < DATE('".yesterday()."')  order by id desc";
}
elseif($_GET['unit'])
{
   $query = "select * from activities where unit = '".$_GET['unit']."' and deadline < DATE('".yesterday()."') and status = 'undone'  order by id desc";
}
else
{
   $query = "select * from activities order by id desc";
}
$result = mysqli_query($connect, $query);
$num=mysqli_num_rows($result);
for($i=0; $i<$num; $i++)
{
    $row = mysqli_fetch_array($result)
?>
                                        <tr class="odd gradeX">
                                            <td><?php echo long_date($row['date']); ?></td>
                                            <td><a href="edit.php?id=<?php echo $row['id']; ?>"><?php echo $row['task']; ?></a></td>
                                            <td><?php echo $row['purpose']; ?></td>
                                            <td><?php echo $row['responsibility']; ?></td>
                                            <td><?php echo long_date($row['deadline']); ?></td>
                                            <td><?php echo $row['unit']; ?></td>
                                            <td><?php echo $row['status']; ?></td>
                                            <td>
                                                <?php if($row['status']=='undone'){
                                                    ?>
                                                    <a href="status_btn.php?id=<?php echo base64_encode($row['id']) ?>&tab=<?php echo base64_encode('activities'); ?>&status=<?php echo base64_encode('done'); ?>&return_url=<?php echo base64_encode($_SERVER['PHP_SELF']); ?>"><input type="button" value="<?php echo status_change($_GET['status']); ?>" onclick="return confirm('Are you sure you want to change the status?');"></a>
                                                    <?php
                                                } ?>
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
                    <!-- /.panel -->
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
            <!-- /.row -->
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
    });
    </script>

</body>

</html>
