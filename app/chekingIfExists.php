<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	$driver_id = $_POST['driver_id'];
	$table = $_POST['table'];


	$sql = "SELECT * FROM '$table' WHERE driver_id = '$driver_id'";
	$result = $conn->query($sql);

	$response = array();

	if($result->num_rows >= 1) {

        $response["status"] = "0";
        $response["message"] = "Exixts.";

	} else {
        $response["status"] = "1";
        $response["message"] = "Not there..!";
	}
        echo json_encode($response);

}

?>
