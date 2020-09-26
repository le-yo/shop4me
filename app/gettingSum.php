 <?php 
	
	require_once('dbConnect.php');
	
if($_SERVER['REQUEST_METHOD']=='POST'){
    
    $strDate = $_POST['strDate'];
	
if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}

// $sql = "SELECT SUM(strAmount) FROM cs_sales WHERE strDate = '$strDate'";
// $result = $conn->query($sql);
// $rows = array();
//     while($temp = mysqli_fetch_assoc($result)) {
//         $rows[] = $temp;
// }
   // echo json_encode($rows);
   
   //creating a query
	$stmt = $conn->prepare("SELECT * FROM cs_sales WHERE strDate = '$strDate';");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id,$strDocumentId,$strOrderNumber,$strAmount,$strDate);
	
	$products['items'] = array(); 
	$response = array();
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();		
		$temp['id'] = $id;
		$temp['strDocumentId'] = $strDocumentId;
		$temp['strOrderNumber'] = $strOrderNumber;
		$temp['strAmount'] = $strAmount;
		$temp['strDate'] = $strDate;

		array_push($products['items'], $temp);
	
	//displaying the result in json format 
	}
    	echo json_encode($products);
	
}
	

	?>