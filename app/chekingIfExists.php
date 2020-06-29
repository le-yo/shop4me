<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	$id_to_chek = $_POST['id_to_chek'];
	$table = $_POST['table'];
	$id = $_POST['id'];


	$sql = "SELECT * FROM '$table' WHERE '$id_to_chek' = '$id'";
	
	$check = mysqli_fetch_array(mysqli_query($conn,$sql));
	//$result = $conn->query($sql);

	//$response = array();

	if(isset($check)) {

        /*$response["status"] = "0";
        $response["message"] = "Exixts.";*/
		echo '0';

	} else {
        /*$response["status"] = "1";
        $response["message"] = "Not there..!";*/
		echo '1';
	}
       // echo json_encode($response);

}

?>
