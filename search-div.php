<?php
$q = $_GET['q'];

$query_q = "select * from master_page where content like '%$q%'";
$result_q = mysqli_query($connect, $query_q);
$num_q = mysqli_num_rows($result_q);

$query_s = "select * from sub_page where content like '%$q%'";
$result_s = mysqli_query($connect, $query_s);
$num_s = mysqli_num_rows($result_s);

$num_res = $num_q+$num_s;

?>


Number of result found for <strong><?php echo $q; ?></strong>: <?php echo $num_res; ?>
<br><br>

<?php if($num_res > 0)
{
	?>
<div class="list-group" style="font-family: afont">
	
	<?php for($i=0; $i<=$num_q; $i++)
{
	$row_q = mysqli_fetch_array($result_q);
	?>
				<li class="list-group-item list-group-item-success" style="margin-bottom: 20px;">
					<h3><?php echo $row_q['title']; ?></h3>
					<h5><a style="color:#000" href="page.php?mp=<?php echo $row_q['title']; ?>"><?php echo substr(strip_tags($row_q['content']),0,400); ?></a></h5>
	</li>
	<?php } ?>
	
	
	
	<?php for($i=0; $i<=$num_s; $i++)
{
	$row_s = mysqli_fetch_array($result_s);
	?>
				<li class="list-group-item list-group-item-success" style="margin-bottom: 20px;">
					<h3><?php echo $row_s['title']; ?></h3>
					<h5><a style="color:#000" href="page.php?mp=<?php echo $row_s['mp_title']; ?>&pid=<?php echo $row_s['id']; ?>&ptitle=<?php echo $row_s['title']; ?>"><?php echo substr(strip_tags($row_s['content']),0,400); ?></a></h5>
	</li>
	<?php } ?>
	
			</div>
<?php
}
?>