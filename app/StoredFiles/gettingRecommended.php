<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	$strCat= $_POST['strCat'];	
	
	//$conn = mysqli_connect(HOST,USER,PASS,DB) or die('Unable to Connect');
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM c_posts WHERE strCat = '$strCat' ORDER BY RAND() DESC");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id,$strPostId,$strImageUrl,$strTitle,$strMl,$strPrice,$strQty,$strCat);
	
	$products['posts'] = array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();
		
		$temp['strImageUrl'] = $strImageUrl; 
		$temp['id'] = $id; 
		$temp['strPostId'] = $strPostId; 
		$temp['strPrice'] = $strPrice; 
		$temp['strQty'] = $strQty; 
		$temp['strTitle'] = $strTitle; 
		$temp['strCat'] = $strCat; 
		$temp['strMl'] = $strMl; 

		array_push($products['posts'], $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
	
}
	?>
