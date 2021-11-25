<?php /*  session_save_path("/home/users/web/b777/ipw.peopleserve/public_html/cgi-bin/tmp"); */session_start();

	//create MySQL connection

$connect = mysqli_connect('localhost', 'oandocoo_loan', 'certification231', 'oandocoo_loan');
$db = mysql_select_db('oandocoo_loan');

$result = mysql_query($connect, "select * from signup_application");
$file_ending = "xls";
$filename = 'applicant';

header("Content-Type: application/xls");
header("Content-Disposition: attachment; filename=$filename.xls");
header("Pragma: no-cache");
header("Expires: 0");

$sep = "\t";


for ($i = 0; $i < mysqli_num_fields($result); $i++) {
echo mysql_field_name($result,$i) . "\t";
}
print("\n");

    while($row = mysqli_fetch_row($result))
    {
        $schema_insert = "";
        for($j=0; $j<mysqli_num_fields($result);$j++)
        {
            if(!isset($row[$j]))
                $schema_insert .= "NULL".$sep;
            elseif ($row[$j] != "")
                $schema_insert .= "$row[$j]".$sep;
            else
                $schema_insert .= "".$sep;
        }
        $schema_insert = str_replace($sep."$", "", $schema_insert);
 $schema_insert = preg_replace("/\r\n|\n\r|\n|\r/", " ", $schema_insert);
        $schema_insert .= "\t";
        print(trim($schema_insert));
        print "\n";
    }
?>