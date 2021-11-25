<?php
session_start();
include('connect.php');
require_once('fns.php');

if(!$_SESSION['MM_Username']){
header('Location: ./');
exit;
}



$product_name = addslashes($_POST['product_name']);
$description = addslashes($_POST['description']);
$quantity = addslashes($_POST['quantity']);
$price = $_POST['price'];
$product_type = $_POST['product_type'];
$item_reference = mt_rand();
$date = today();




if(!$product_name || !$price)

{
	$error = 'All fields must be entered before submitting';
	include('add_product.php');
	exit;
}


$query = "insert into product set
			date = '$date',
			item_reference = '$item_reference',
			product_name = '$product_name',
			price = '$price',
			product_type = '$product_type',
			description = '$description',
			quantity = '$quantity'";
			
		
$result = mysqli_query($connect,$query);
if($result)
{
	/*if ($result)
	{
		$query = "select id from product order by id desc";
		$result = mysql_query($query);
		$row = mysql_fetch_array($result);
		$id = ($row['id']);
	}
  
  //add new sizes and quantity to the size_tab table
  update_size_tab($id,$size,$quantity);  
  
	//clear database of redudant rows without size
	mysql_query("delete from size_tab where size = ''");
	
	
	
	
$dbImage = $id.".jpg";




$upfile = 'gallery/'.$dbImage;
$thumbs = 'gallery/thumbs/'.$dbImage;
if(move_uploaded_file($userfile[0], $upfile));
{
		
					
	  // Resize Thumbnail from Template Image
		    require_once('SimpleImage.php');

	 		$image = new SimpleImage();
   			$image->load($upfile);
  			$image->resizeToWidth(800);
			$image->resizeToHeight(945);
   			$image->save($upfile);
			
			$image2 = new SimpleImage();
   			$image2->load($upfile);
			$image2->resizeToWidth(270);
			$image2->resizeToHeight(287);
   			$image2->save($thumbs);

			
}

//Upload other images as well
for($i=1; $i<=7; $i++)
{
	if($userfile[$i])
	{
		$dbImage2 = $id."_".$i.".jpg";
		$upfile2 = 'gallery/'.$dbImage2;
		$thumbs2 = 'gallery/thumbs/'.$dbImage2;
		move_uploaded_file($userfile[$i], $upfile2);
		{		
	  		// Resize Thumbnail from Template Image
			require_once('SimpleImage.php');
	 		$image = new SimpleImage();
   			$image->load($upfile2);
  			$image->resizeToWidth(800);
			$image->resizeToHeight(945);
   			$image->save($upfile2);
			
			$image2 = new SimpleImage();
   			$image2->load($upfile2);
			$image2->resizeToWidth(270);
			$image2->resizeToHeight(287);
   			$image2->save($thumbs2);
		}
	}
		
}
*/

	$correct = 'OK! Product has been added Successfully.';		
	include('add_product.php');
	exit;
}
else
{
	$error = 'Sorry! Product name already exist.';
	include('add_product.php');	
	exit;
}

?>