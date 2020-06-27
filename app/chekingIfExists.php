<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	$id_to_chek = $_POST['id_to_chek'];
	$table = $_POST['table'];
	$id = $_POST['id'];


	$sql = "SELECT * FROM '$table' WHERE '$id_to_chek' = '$id'";
	$result = $conn->query($sql);

	$response = array();

	if($result->num_rows >0) {

        $response["status"] = "0";
        $response["message"] = "Exixts.";

	} else {
        $response["status"] = "1";
        $response["message"] = "Not there..!";
	}
        echo json_encode($response);

}

?>
