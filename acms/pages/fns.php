<?php

function today()
{
  return date('Y-m-d');
}

function year()
{
  return date('Y');
}

function week()
{
  return date('W');
}

function yesterday()
{
  return date("Y-m-d", strtotime("-1 day", strtotime(today())));
}

function long_date($date)
{
  return date('jS M Y',strtotime($date));
}
function ldate($date)
{
  return date('M, jS Y',strtotime($date));
}

function expire_time()
{
    return date("Y-m-d H:i:s", strtotime("+48 hours", strtotime(now())));
}

function mydate($date)
{
  $date = str_replace('/', '-', $date);

  return date('Y-m-d',strtotime($date));
}

function company_name(){
  return 'Academy';
}

function admin_name()
{
    return 'Academy';
}

function admin_email()
{
    return 'info@aledoy.com';
}

function root()
{
  return 'http://'.$_SERVER['HTTP_HOST'].dirname($_SERVER['REQUEST_URI']).'/';
}

function host_name(){
return 'http://'.$_SERVER['HTTP_HOST'].'/';
}

function domain(){
return $_SERVER['HTTP_HOST'];
}

function host() {
	return 'http://'.$_SERVER['HTTP_HOST'].dirname($_SERVER['REQUEST_URI']).'/';
}
function status_change($status)
{
  if($status == 'closed')
  {
    echo 'Pending';
  }
  else
  {
    echo 'Close';
  }
}

function status_blog($status)
{
  if($status == 'Ok')
  {
    return 'Delete';
  }
  else
  {
    return 'Activate';
  }
}

function status_blog_value($status)
{
	 if($status == 'Ok')
  {
    return 'Delete';
  }
  else
  {
    return 'Ok';
  }
}


function multiexplode($delimiters,$string,$currect_page) {
$ready = str_replace($delimiters, $delimiters[0], $string);
$url = explode($delimiters[0], $ready);
return $url[2];
}

function now()
{
	return date('Y-m-d H:i:s');
}

function count_tab($tab)
{
	global $connect;
	$query = "select * from $tab";
	$result = mysqli_query($connect, $query);
	$num=mysqli_num_rows($result);
	return $num;
}
function count_tab_status($tab,$status)
{
	global $connect;
  $query = "select * from $tab where status = '$status'";
  $result = mysqli_query($connect, $query);
  $num=mysqli_num_rows($result);
  return $num;
}


function checkfile($file, $file_type)
{
	$ext = get_extension($file);

	if($file_type == 'pics')
	{
		$compare = array('jpg','jpeg','png','gif');
		if (!in_array(strtolower($ext), $compare))
		{
			return 'error';
		}
	}
}

function breadcrumb($mp,$ptitle)
{
	if($ptitle)
	{
		echo '<li><a href="./">Home</a></li>
		<li><a href="#">'.$mp.'</a></li>
		<li class="active">'.$ptitle.'</li>';
	}
	else{
		echo '<li><a href="./">Home</a></li><li class="active">'.$mp.'</li>';
	}
}

function sub_menu($mp,$ptitle='none')
{
	global $connect;
	$query = "select * from sub_page where mp_title = '$mp' order by id asc";
  	$result = mysqli_query($connect, $query);
  	$num = mysqli_num_rows($result);
	for($i=0; $i<$num; $i++)
	{
		if($ptitle == trim($row['title']))
		{
			$active = 'class="active"';
		}
		else{
			$active = '';
		}

		$row=mysqli_fetch_array($result);
		echo '<li '.$active.'><a href="page.php?mp='.$mp.'&pid='.$row['id'].'&ptitle='.$row['title'].'">'.$row['title'].'</a></li>';

		echo '<li class="divider"></li>';
	}

}

function prog_menu()
{
	global $connect;
	$query = "select * from programmes order by id asc";
  	$result = mysqli_query($connect, $query);
  	$num = mysqli_num_rows($result);
	for($i=0; $i<$num; $i++)
	{
		if($ptitle == trim($row['title']))
		{
			$active = 'class="active"';
		}
		else{
			$active = '';
		}

		$row=mysqli_fetch_array($result);
		echo '<li '.$active.'><a href="school?token='.base64_encode($row['title']).'">'.$row['title'].'</a></li>';

		echo '<li class="divider"></li>';
	}

}


function sub_page($mp,$ptitle='none')
{
	global $connect;
	$query = "select * from sub_page where mp_title = '$mp' order by id asc";
  	$result = mysqli_query($connect, $query);
  	$num = mysqli_num_rows($result);
	echo '<ul>';
	for($i=0; $i<$num; $i++)
	{
		if($ptitle == trim($row['title']))
		{
			$active = 'class="active"';
		}
		else{
			$active = '';
		}

		$row=mysqli_fetch_array($result);
		echo '<li '.$active.'><a href="page.php?mp='.$mp.'&pid='.$row['id'].'&ptitle='.$row['title'].'">'.$row['title'].'</a></li>';

	}
echo '</ul>';
}


function page_title($mp, $pid='none')
{
	global $connect;
	if($pid == 'none')
	{
		return $mp.' - ';
	}
	else
	{
		$query = "select * from sub_page where id = '$pid'";
  		$result = mysqli_query($connect, $query);
  		$row=mysqli_fetch_array($result);
  		return $row['title'].' - '.$mp.' - ';
	}
}


function get_content($tab, $col_name, $title, $id=0)
{
	global $connect;
  if($tab == 'master_page' || $tab == 'home_page')
  {
	   $query = "select * from $tab where title = '$title'";
  }
	else{

	  $query = "select * from $tab where id = '$id' or title = '$id'";
	}
  $result = mysqli_query($connect, $query);
  $row=mysqli_fetch_array($result);
  $content = str_replace('uploads/','acms/pages/uploads/',$row[$col_name]);
  return $content;
}

function get_extension($file)
{
      $extension = explode('.',$file);
      $ext = array_reverse($extension);
      return $ext[0];
}

function data_val($tab,$col,$val)
{
	global $connect;
  $query = "select * from $tab where $col = '$val'";
  $result = mysqli_query($connect, $query);
  $row=mysqli_fetch_array($result);
  return $row[1];
}

function get_team($col,$val)
{
  global $connect;
  $query = "select * from management_team where hierarchy = '$val'";
  $result = mysqli_query($connect, $query);
  $row=mysqli_fetch_array($result);
  return $row[$col];
}

function mp_list()
{
  	global $connect;
	$query = "select * from master_page order by id asc";
	$result = mysqli_query($connect, $query);
	$num = mysqli_num_rows($result);
	for($i=0; $i<$num; $i++)
	{
	$row = mysqli_fetch_array($result);
	echo '<option value="'.$row['title'].'">'.$row['title'].'</option>';

	}
}


function school_list()
{
  	global $connect;
	$query = "select * from school order by id asc";
	$result = mysqli_query($connect, $query);
	$num = mysqli_num_rows($result);
	for($i=0; $i<$num; $i++)
	{
	$row = mysqli_fetch_array($result);
	echo '<option value="'.$row['title'].'">'.$row['title'].'</option>';

	}
}

function course_list()
{
  	global $connect;
	$query = "select * from programs order by id asc";
	$result = mysqli_query($connect, $query);
	$num = mysqli_num_rows($result);
	for($i=0; $i<$num; $i++)
	{
	$row = mysqli_fetch_array($result);
	echo '<option value="'.$row['title'].'">'.$row['title'].'</option>';

	}
}

function album_list()
{
	global $connect;
	$query = "select * from gallery_album order by id asc";
	$result = mysqli_query($connect, $query);
	$num = mysqli_num_rows($result);
	for($i=0; $i<$num; $i++)
	{
	$row = mysqli_fetch_array($result);
	echo '<option value="'.$row['id'].'">'.$row['album_title'].'</option>';

	}
}

function get_album($id)
{
	global $connect;
	$query = "select * from gallery_album where id = '$id'";
	$result = mysqli_query($connect, $query);
	$row = mysqli_fetch_array($result);
 	return $row['album_title'];
}

function album_value($cat)
{
  $category = col_val('gallery_album', 'album_title', $cat);
  return $category;
}

function cat_value($cat)
{
  $category = col_val('master_page', 'title', $cat);
  return $category;
}

function col_val($tab, $col_name, $id)
{
	global $connect;
  $query = "select * from $tab where id = '$id'";
  $result = mysqli_query($connect, $query);
  $row=mysqli_fetch_array($result);
  return $row[$col_name];
}


function count_views($id)
{
	global $connect;
  $query = "select * from course_view where course = '$id'";
  $result = mysqli_query($connect, $query);
  $num=mysqli_num_rows($result);
  return $num;
}

function update_views($id)
{
	global $connect;
	$query = "insert into course_view set course = '$id'";
  	$result = mysqli_query($connect, $query);
}

function count_visit()
{
	global $connect;
	if(!isset($_SESSION['shopper']))
	{
		$_SESSION['shopper'] = getenv("REMOTE_ADDR");
		$query = "insert into counter set ip = '".$_SESSION['shopper']."'";
  		$result = mysqli_query($connect, $query);

	}
}

// Function to get country;
function ip_visitor_country()
{

    $client  = @$_SERVER['HTTP_CLIENT_IP'];
    $forward = @$_SERVER['HTTP_X_FORWARDED_FOR'];
    $remote  = $_SERVER['REMOTE_ADDR'];
    $country  = "Unknown";

    if(filter_var($client, FILTER_VALIDATE_IP))
    {
        $ip = $client;
    }
    elseif(filter_var($forward, FILTER_VALIDATE_IP))
    {
        $ip = $forward;
    }
    else
    {
        $ip = $remote;
    }
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, "http://www.geoplugin.net/json.gp?ip=".$ip);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
    $ip_data_in = curl_exec($ch); // string
    curl_close($ch);

    $ip_data = json_decode($ip_data_in,true);
    $ip_data = str_replace('&quot;', '"', $ip_data); // for PHP 5.2 see stackoverflow.com/questions/3110487/

    if($ip_data && $ip_data['geoplugin_countryName'] != null) {
        $country = $ip_data['geoplugin_countryName'];


    }

    return $country;
}

function candidate_status($col)
{
	global $connect;
  $query = "select * from cp_application where $col = 'yes'";
  $result = mysqli_query($connect, $query);
  $num=mysqli_num_rows($result);
  return $num;
}

function blogdate($id,$format)
{
	global $connect;
  $query = "select * from blog where id = '$id'";
  $result = mysqli_query($connect, $query);
  $row = mysqli_fetch_array($result);
  $date = $row['date'];

  if($format == 'd')
  {
	  return date('d',strtotime($date));
  }
  else
  {
	  return date('M',strtotime($date));
  }
}

function pending_all($date)
{
  return '00';
}

function count_comment($id)
{
	global $connect;
  $query = "select * from blog_comment where blog_id = '$id'";
  $result = mysqli_query($connect, $query);
  $num = mysqli_num_rows($result);
  return $num;
}

function pending_dept($type, $unit)
{

  return '00';
}


function clean($string)
{
	return preg_replace('/[^a-zA-Z0-9_%\[().\]\\/-]/s', '', $string);
}

function ezDate($d) {
        $ts = time() - strtotime(str_replace("-","/",$d));

        if($ts>31536000) $val = round($ts/31536000,0).' year';
        else if($ts>2419200) $val = round($ts/2419200,0).' month';
        else if($ts>604800) $val = round($ts/604800,0).' week';
        else if($ts>86400) $val = round($ts/86400,0).' day';
        else if($ts>3600) $val = round($ts/3600,0).' hour';
        else if($ts>60) $val = round($ts/60,0).' minute';
        else $val = $ts.' second';

        if($val>1) $val .= 's';
        return $val.' ago';
    }

  function time_diff($date_time, $diff)
  {
    //$lastlogin = date('Y-m-d H:i:s', strtotime("$lastlogin + 2 hours"));
    return $time_diff = date('Y-m-d H:i:s', strtotime("$date_time + $diff"));

  }



function get_page_content($page_title)
{
	global $connect;
	$query = "select * from masterpage where title = '$page_title'";

	$result = mysqli_query($connect, $query);
	$row = mysqli_fetch_array($result);
	return $row['content'];

}

function get_fullname($username)
{
	global $connect;
	$query = "select * from login where username = '$username'";

	$result = mysqli_query($connect, $query);
	$row = mysqli_fetch_array($result);
	return $row['fullname'];

}

function get_designation($username)
{
	global $connect;
	$query = "select * from login where username = '$username'";

	$result = mysqli_query($connect, $query);
	$row = mysqli_fetch_array($result);
	return $row['designation'];

}


function log_activity($user, $action)
{
	global $connect;
	$date = date("Y-m-d");
	$time = date('h:ia');

	$query = "insert log values ('', '".$user."', '".get_fullname($user)."', '".get_designation($user)."', '".$action."', '".$date."', '".$time."')";
	$result = mysqli_query($connect, $query);
}

function page_image($title)
{
	global $connect;
	$query = "select * from masterpage where title = '$title'";

	$result = mysqli_query($connect, $query);
	$row = mysqli_fetch_array($result);
	$filepath = 'admin/pages/uploads/pages/'.$row['filename'];
	return $filepath;
}



function list_column($col)
{
	global $connect;
	$query = "select distinct $col from cp_application order by $col";

	$result = mysqli_query($connect, $query);
	$num_result = mysqli_num_rows($result);
	for($i=0; $i<$num_result; $i++)
	{
	$row = mysqli_fetch_array($result);
	echo '<option value="'.$row[$col].'">'.$row[$col].'</option>';
	}
}




?>
