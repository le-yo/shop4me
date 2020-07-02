<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	$id = $_POST['id'];


	$sql = "SELECT * FROM drivers WHERE driver_id = '$id'";
	
	$check = mysqli_fetch_array(mysqli_query($conn,$sql));

	if(isset($check)) {
		echo '0';

	} else {
		echo '1';
	}

}

?>
