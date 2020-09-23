<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    //Getting post data 
		$strDocumentId = isset($_POST['strDocumentId']) ? $_POST['strDocumentId'] : null;
		$strUserId = isset($_POST['strUserId']) ? $_POST['strUserId'] : null;
		$strOrderNumber = isset($_POST['strOrderNumber']) ? $_POST['strOrderNumber'] : null;
		$strDate = isset($_POST['strDate']) ? $_POST['strDate'] : null;
		$strAmount = isset($_POST['strAmount']) ? $_POST['strAmount'] : null;
		$strDeliveryFee =isset($_POST['strDeliveryFee']) ? $_POST['strDeliveryFee'] : null;
		$strDeleted = isset($_POST['strDeleted']) ? $_POST['strDeleted'] : null;
		$strShippedStatus = isset($_POST['strShippedStatus']) ? $_POST['strShippedStatus'] : null;
		$strMpesaCode = isset($_POST['strMpesaCode']) ? $_POST['strMpesaCode'] : null;
		$strLatLng = isset($_POST['strLatLng']) ? $_POST['strLatLng'] : null;
		$strPaymentMethod = isset($_POST['strPaymentMethod']) ? $_POST['strPaymentMethod'] : null;

        $adding = "INSERT INTO c_orders (strDocumentId,strUserId,strOrderNumber,strDate,strAmount,strDeliveryFee,strDeleted,strShippedStatus,strMpesaCode,strLatLng,strPaymentMethod) VALUES ('$strDocumentId','$strUserId','$strOrderNumber','$strDate','$strAmount','$strDeliveryFee','$strDeleted','$strShippedStatus','$strMpesaCode','$strLatLng','$strPaymentMethod')";
       
       $result = mysqli_query($conn,$adding);
        
    if ($result>0) {
        // successfully inserted into database
        $response["status"] = "0";
        $response["message"] = "Successfuly sents.";
    } else {
        // failed to insert row
        $response["status"] = "1";
        $response["message"] = "Error: ".mysqli_error($adding);
    }
    // echoing JSON response
    echo json_encode($response);
?>
