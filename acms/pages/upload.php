<script src="../bower_components/jquery/dist/jquery.min.js"></script>
<script>
//Declaration of function that will insert data into database
function senddata(filename){
var file = filename;
$.ajax({
type: "POST",
url: "senddata.php",
data: {file},
async: true,
success: function(html){
$("#result").html(html);
}
})
}
</script>
<?php

$csv = array();
$batchsize = 1000; //split huge CSV file by 1,000, you can modify this based on your needs
if($_FILES['csv']['error'] == 0){
$name = $_FILES['csv']['name'];
$ext = strtolower(end(explode('.', $_FILES['csv']['name'])));
$tmpName = $_FILES['csv']['tmp_name'];
if($ext === 'csv'){ //check if uploaded file is of CSV format
if(($handle = fopen($tmpName, 'r')) !== FALSE) {
set_time_limit(0);
$row = 0;
fgetcsv($handle);
while(($data = fgetcsv($handle)) !== FALSE) {
$col_count = count($data);
//splitting of CSV file :
if ($row % $batchsize == 0):
$file = fopen("namedeptdesi$row.csv","w");
endif;
$csv[$row]['col1'] = $data[0];
$csv[$row]['col2'] = $data[1];
$csv[$row]['col3'] = $data[2];
$csv[$row]['col4'] = $data[3];
$csv[$row]['col5'] = $data[4];
$csv[$row]['col6'] = $data[5];
$csv[$row]['col7'] = $data[6];
$csv[$row]['col8'] = $data[7];
$csv[$row]['col9'] = $data[8];
$csv[$row]['col10'] = $data[9];

$name = strtolower(ucwords($data[0]));
$matric = $data[1];
$email = $data[2];
$pass = $data[3];
$phone = $data[4];
$sex = $data[5];
$class = $data[6];
$course = $data[7];
$passport = $data[8];
$date = $data[9];

$json = "'$name', '$matric', '$email', '$pass', '$phone', '$sex', '$class', '$course', '$passport', '$date'";

fwrite($file,$json.PHP_EOL);
//sending the splitted CSV files, batch by batch...
if ($row % $batchsize == 0):
echo "<script> senddata('namedeptdesi$row.csv'); </script>";
endif;
$row++; 
}
fclose($file);
fclose($handle);
}
}
else
{
echo "Only CSV files are allowed.";
}
//alert once done.
echo "<script> alert('CSV imported!') </script>";
echo "<script> window.location.href='alumni?bulk=yes' </script>";

}
?>