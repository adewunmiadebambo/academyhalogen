<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');




    if(array_key_exists('import', $_POST))  {

        
        $filename=$_FILES["file"]["tmp_name"];
        if($_FILES["file"]["size"] > 0) {
            $file = fopen($filename, "r");
            while (($emapData = fgetcsv($file, 10000, ",")) !== FALSE)  {
                //print_r($emapData);
               $sql = "INSERT INTO activities (id, date, task, purpose, responsibility, deadline, unit, status) VALUES ('', '".today()."', '".$emapData[1]."', '".$emapData[2]."', '".$emapData[3]."', '".mydate($emapData[4])."', '".$emapData[5]."', 'undone')";
                mysqli_query($connect, $sql);
            }
            mysqli_query($connect, "delete from activities where task = 'Activity'");
            fclose($file);
            
            $correct = "Activity list has been successfully imported";
        }
        else    {
            $error = "Invalid file! Please upload CSV File";
        }
    }

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

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Task</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

                <h3>Bulk Upload Task</h3>
                   <br> 
                <div class="col-md-6 col-sm-12">
                Import CSV/Excel file. <a href="../template.csv">click here</a> to get template<br><br>
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
                    <form action="" method="post" enctype="multipart/form-data" >
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Upload Sheet</span>
                                            <input name="file" type="file" class="form-control" >
                                        </div>
                                        
                                        
                                        <div class="form-group input-group">
                                            <input type="submit" class="btn btn-primary" name="import" value="Import Sheet">
                                        </div>

                    </form>
                </div>

            </div>
            <!-- /.container-fluid -->

             <div class="row" style="margin-top:50px;">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Task List
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
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
$query = "select * from activities";
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
                                            <td><?php echo $row['status']; ?></td><td>
                                                <?php if($_GET['status']=='undone'){
                                                    ?>
                                                    <a href="status_btn.php?id=<?php echo base64_encode($row['id']) ?>&tab=<?php echo base64_encode('activities'); ?>&status=<?php echo base64_encode('done'); ?>&return_url=<?php echo base64_encode($_SERVER['PHP_SELF']); ?>"><input type="button" value="<?php echo status_change($_GET['status']); ?>" onclick="return confirm('Are you sure you want to change the status?');"></a>
                                                    <?php
                                                } ?>
                                            <a href="del_btn.php?id=<?php echo base64_encode($row['id']) ?>&tab=<?php echo base64_encode('activities'); ?>&return_url=<?php echo base64_encode($_SERVER['PHP_SELF']); ?>"><input type="button" value="Delete" onclick="return confirm('Are you sure you want to delete this order?');"></a>
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
