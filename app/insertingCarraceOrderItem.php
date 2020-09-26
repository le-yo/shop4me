<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['strDocumentId']) && isset($_REQUEST['strUserId']) 
    && isset($_REQUEST['strOrderNumber']) && isset($_REQUEST['strDate'])
    && isset($_REQUEST['strAmount']) && isset($_REQUEST['strDeliveryFee'])
    && isset($_REQUEST['strDeleted']) && isset($_REQUEST['strShippedStatus']) 
    && isset($_REQUEST['strMpesaCode']) && isset($_REQUEST['strLatLng'])
    && isset($_REQUEST['strPaymentMethod'])){
        
        	//Getting post data 
		$strDocumentId = $_REQUEST['strDocumentId'];
		$strUserId = $_REQUEST['strUserId'];
		$strOrderNumber = $_REQUEST['strOrderNumber'];
		$strDate = $_REQUEST['strDate'];
		$strAmount = $_REQUEST['strAmount'];
		$strDeliveryFee = $_REQUEST['strDeliveryFee'];
		$strDeleted = $_REQUEST['strDeleted'];
		$strShippedStatus = $_REQUEST['strShippedStatus'];
		$strMpesaCode = $_REQUEST['strMpesaCode'];
		$strLatLng = $_REQUEST['strLatLng'];
		$strPaymentMethod = $_REQUEST['strPaymentMethod'];

        $adding = "INSERT INTO c_orders (strDocumentId,strUserId,strOrderNumber,strDate,strAmount,strDeliveryFee,strDeleted,strShippedStatus,strMpesaCode,strLatLng,strPaymentMethod) VALUES ('$strDocumentId','$strUserId','$strOrderNumber','$strDate','$strAmount','$strDeliveryFee','$strDeleted','$strShippedStatus','$strMpesaCode','$strLatLng','$strPaymentMethod')";
       
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
