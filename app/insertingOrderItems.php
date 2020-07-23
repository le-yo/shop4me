<?php
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['strName']) && isset($_REQUEST['strQty']) 
    && isset($_REQUEST['strSize']) && isset($_REQUEST['strImageUrl'])
    && isset($_REQUEST['strPrice']) && isset($_REQUEST['strOrderId'])){
        
        	//Getting post data 
		$strName = $_REQUEST['strName'];
		$strQty = $_REQUEST['strQty'];
		$strSize = $_REQUEST['strSize'];
		$strImageUrl = $_REQUEST['strImageUrl'];
		$strPrice = $_REQUEST['strPrice'];
		$strOrderId = $_REQUEST['strOrderId'];

        $adding = "INSERT INTO order_items (strName,strQty,strSize,strImageUrl,strPrice,strOrderId) VALUES ('$strName','$strQty','$strSize','$strImageUrl','$strPrice','$strOrderId')";
       
       $result = mysqli_query($conn,$adding);
        
    if ($result>0) {
        // successfully inserted into database
        $response["status"] = "0";
        $response["message"] = "Successfuly uploaded.";
    } else {
        // failed to insert row
        $response["status"] = "1";
        $response["message"] = "Error: ".mysqli_error($conn);
    }
    // echoing JSON response
    echo json_encode($response);
        
    }
?>
