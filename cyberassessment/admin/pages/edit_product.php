<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


if($_GET['id'])
{

$query = "select * from product where id = '".$_GET['id']."'";
$result = mysqli_query($connect, $query);
$num = mysqli_num_rows($result);
$row = mysqli_fetch_array($result);

$product_name = $row['product_name'];
$price = $row['price'];
$description = $row['description'];
$product_type = $row['product_type'];
$item_reference = $row['item_reference'];
$quantity = $row['quantity'];
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

    <title>Oando Coop. |  Admin Area</title>
<link rel="icon" href="favicon.ico" />

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
    
<script language="javascript" src="jquery.js"></script>
    <script language="javascript">
$(document).ready(function() {

var MaxInputs       = 36; //maximum input boxes allowed
var InputsWrapper   = $("#InputsWrapper"); //Input boxes wrapper ID
var AddButton       = $("#AddMoreFileBox"); //Add button ID

var x = InputsWrapper.length; //initlal text box count
var FieldCount=1; //to keep track of text box added

$(AddButton).click(function (e)  //on add input button click
{
        if(x <= MaxInputs) //max input box allowed
        {
            FieldCount++; //text box added increment
            //add input box
           // $(InputsWrapper).append('<div><input type="text" name="mytext[]" id="field_'+ FieldCount +'" value="Text '+ FieldCount +'"/><a href="#" class="removeclass">&times;</a></div>');
		   
		   $(InputsWrapper).append('<div class="form-group input-group"><span class="input-group-addon">Size</span><input type="text" name="size[]" class="form-control small_text"><span class="input-group-addon">Quantity</span><input type="text" name="quantity[]" class="form-control small_text"></div>');   
            x++; //text box increment
        }
return false;
});

$("body").on("click",".removeclass", function(e){ //user click on remove text
        if( x > 1 ) {
                $(this).parent('div').remove(); //remove text box
                x--; //decrement textbox
        }
return false;
}) 

});
</script>


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
                        <h1 class="page-header">Product Management</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

                <h3>Edit Product</h3>


                <div class="col-md-6 col-sm-12">
                Upload new product<br><br>
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
                    <form action="proc-edit-product.php" method="post" enctype="multipart/form-data" >
                        <div class="form-group input-group">
                            <span class="input-group-addon">Product Name</span>
                            <input name="product_name" type="text" class="form-control" placeholder="Product Name" value="<?php echo $product_name; ?>">
                        </div>
						
						
                        <div class="form-group">
                            <label>Product Type</label>                            
							<select name="product_type" class="form-control">
								<?php if($product_type){ ?>
								<option value="<?php echo $product_type; ?>"><?php echo $product_type; ?></option>
								<?php } ?>
								<option value="">--- Select Procust Type ---</option>
								<option value="kongasales">Konga Sales</option>
								<option value="blackfriday">Black Friday Offer</option>
							</select>
                        </div>
                        
						
                        <div class="form-group input-group">
                            <span class="input-group-addon">Description</span>
                            <textarea name="description" class="form-control" placeholder="Description" rows="3"><?php echo $description; ?></textarea>
                            
                        </div>
						
                        <div class="form-group input-group">
                            <span class="input-group-addon">Price</span>
                            <input name="price" type="text" required class="form-control" placeholder="Price" value="<?php echo $price; ?>">
                        </div>
                        
						
                        <div class="form-group input-group">
                            <span class="input-group-addon">Quantity</span>
                            <input name="quantity" type="number" min="1" class="form-control" placeholder="Product Quantity" value="<?php echo $quantity; ?>">
                        </div>
                        

                        <div>
                               <input type="hidden" name="product_id" value="<?php echo $_GET['id']; ?>"> <br><br>
                        </div>
                        
                        <div class="form-group input-group">
                            <input type="submit" class="btn btn-primary" value="Edit Product">
                        </div>

                    </form>
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
