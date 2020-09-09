<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	$strPostId = $_POST['strPostId'];
	
if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}

// $sql = "SELECT*, SUM(strRate) AS 'sum' FROM c_ratings WHERE strPostId = '$strPostId'";
// $result = $conn->query($sql);
// $rows = array();
//     while($temp = mysqli_fetch_assoc($result)) {
//         $rows[] = $temp;
// }
	
	$stmt = $conn->prepare("SELECT * FROM c_ratings WHERE strPostId = '$strPostId' ORDER BY id DESC");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id,$strDocumentId,$strUserId,$strComment,$strDate,$strRate,$strPostId);
	
	$products['rates'] = array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();
		
		$temp['strDocumentId'] = $strDocumentId; 
		$temp['id'] = $id; 
		$temp['strUserId'] = $strUserId; 
		$temp['strComment'] = $strComment; 
		$temp['strDate'] = $strDate; 
		$temp['strRate'] = $strRate; 
		$temp['strPostId'] = $strPostId; 

		array_push($products['rates'], $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
}
?>
