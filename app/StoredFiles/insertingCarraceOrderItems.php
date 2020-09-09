<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['strDocId']) && isset($_REQUEST['strOrderId']) 
    && isset($_REQUEST['strName']) && isset($_REQUEST['strQty'])
    && isset($_REQUEST['strPrice']) && isset($_REQUEST['strImageUrl'])){
        
        	//Getting post data 
		$strDocId = $_REQUEST['strDocId'];
		$strOrderId = $_REQUEST['strOrderId'];
		$strName = $_REQUEST['strName'];
		$strQty = $_REQUEST['strQty'];
		$strPrice = $_REQUEST['strPrice'];
		$strImageUrl = $_REQUEST['strImageUrl'];

        $adding = "INSERT INTO c_order_items (strDocId,strOrderId,strName,strQty,strPrice,strImageUrl) VALUES ('$strDocId','$strOrderId','$strName','$strQty','$strPrice','$strImageUrl')";
       
       $result = mysqli_query($conn,$adding);
        
    if ($result>0) {
        // successfully inserted into database
        $response["status"] = "0";
        $response["message"] = "Successfuly sents.";
    } else {
        // failed to insert row
        $response["status"] = "1";
        $response["message"] = "Error: ".mysqli_error($con);
    }
    // echoing JSON response
    echo json_encode($response);
        
    }
?>
