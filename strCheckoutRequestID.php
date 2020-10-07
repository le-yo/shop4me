<?php
   
    require_once('dbConnect.php');

    
    $response = array(); 
    
    if(isset($_REQUEST['strCheckoutRequestID']) && isset($_REQUEST['strResultCode'])){
        
        	//Getting post data 
		$strResultCode = $_REQUEST['strResultCode'];
		$strCheckoutRequestID = $_REQUEST['strCheckoutRequestID'];

        $adding = "INSERT INTO stk_initiate (strCheckoutRequestID,strResultCode) VALUES ('$strCheckoutRequestID','$strResultCode')";
       
       $result = mysqli_query($conn,$adding);
        
    if ($result>0) {
        // successfully inserted into database
        $response["status"] = "0";
        $response["message"] = "Saved.";
    } else {
        // failed to insert row
        $response["status"] = "1";
        $response["message"] = "Something went wrong..!";
    }
    // echoing JSON response
    echo json_encode($response);
        
    }
?>
