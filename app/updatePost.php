<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['documentId']) && isset($_REQUEST['title']) && isset($_REQUEST['brand']) && isset($_REQUEST['price']) && isset($_REQUEST['descr']) && isset($_REQUEST['qty']) && isset($_REQUEST['dateCreated']) && isset($_REQUEST['size']) && isset($_REQUEST['category'])){

        
        	//Getting post data 
		$documentId = $_REQUEST['documentId'];
		$title = $_REQUEST['title'];
		$brand = $_REQUEST['brand'];
		$price = $_REQUEST['price'];
		$descr = $_REQUEST['descr'];
		$qty = $_REQUEST['qty'];
		$dateCreated = $_REQUEST['dateCreated'];
		$size = $_REQUEST['size'];
		$category = $_REQUEST['category'];

        $adding = "UPDATE posts SET title = '$title',brand = '$brand',price = '$price',
descr = '$descr',qty = '$qty',dateCreated = '$dateCreated',size = '$size'
,category = '$category' WHERE documentId = '$documentId'";
       
       $result = mysqli_query($conn,$adding);
        
    if ($result) {
        // successfully inserted into database
        $response["status"] = "0";
        $response["message"] = "Changes made successfully.";
    } else {
        // failed to insert row
        $response["status"] = "1";
        $response["message"] = "Error: ".mysqli_error($con);
    }
    // echoing JSON response
    echo json_encode($response);
        
    }
?>
