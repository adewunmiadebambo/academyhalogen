  <table class="table table-striped table-bordered table-hover" id="dataTables-example">
  <thead>
  <tr>
  <th>Image</th>
  <th>Title / Copy img URL</th>
  </tr>
  </thead>
  <tbody>

  <?php
  $query_pop = "select * from image_manager order by id desc";
  $result_pop = mysqli_query($connect, $query_pop);
  $num_pop = mysqli_num_rows($result_pop);
  for($p=0; $p<$num_pop; $p++)
  {
  $row_pop = mysqli_fetch_array($result_pop)
  ?>
  <tr class="odd gradeX">
  <td><img src="uploads/<?php echo $row_pop['filename']; ?>" class="img-responsive" width="200"></td>
  <td width="30%"><a href="edit_image.php?q=<?php echo base64_encode($row_pop['id']); ?>"><?php echo $row_pop['title']; ?></a>
  <br>
  <p id="ddd<?php echo $row_pop['id']; ?>">uploads/<?php echo $row_pop['filename']; ?><button title="Copy to clipboard" onclick="copyToClipboard('#ddd<?php echo $row_pop['id']; ?>')"><i class="fa fa-x2 fa-copy"></i></button></p>			
  </td>

  <script>
  function copyToClipboard(element) {
  var $temp = $("<input>");
  alert('Copied');
  $("body").append($temp);
  $temp.val($(element).text()).select();
  document.execCommand("copy");
  $temp.remove();
  }

  </script>
  </tr>
  <?php
  }
  ?>


  </tbody>
  </table>
