<?php
include 'dbConnect.php' ;

  $conn =new mysqli($HostName,$HostUser,$HostPass,$DatabaseName);
  header("Content-Type: application/json");
  $stkCallbackResponse = file_get_contents('php://input');
  
  $logFile = "stkPushCallbackResponse.json";
  $log = fopen($logFile, "a");
  fwrite($log, $stkCallbackResponse);
  fclose($log);

  $AccountReference = $_GET['strOrderId'];
 
     $jsonMpesaResponse = json_decode($stkCallbackResponse, true);
     $KILI = json_encode($jsonMpesaResponse);
     $ResultCode=$jsonMpesaResponse["Body"]["stkCallback"]["ResultCode"];
    // $ResultCode=0;
    	 $MerchantRequestID=$KILI["Body"]["stkCallback"]["MerchantRequestID"];//confirmed
         $CheckoutRequestID=$jsonMpesaResponse["Body"]["stkCallback"]["CheckoutRequestID"];
         //$ResultCode=$jsonMpesaResponse["Body"]["stkCallback"]["ResultCode"];//confirmed
         $ResultDesc=$jsonMpesaResponse["Body"]["stkCallback"]["ResultDesc"];
         
         //$CallbackMetadata=$jsonMpesaResponse["Body"]["stkCallback"]["CallbackMetadata"]["Item"];
	    
	    $Amount=$jsonMpesaResponse["Body"]["stkCallback"]["CallbackMetadata"]["Item"][0]["Value"];
	    $ReceiptNumber=$jsonMpesaResponse["Body"]["stkCallback"]["CallbackMetadata"]["Item"]["stk_initiate"][1]["Value"];
	    $TransactionDate=$jsonMpesaResponse["Body"]["stkCallback"]["CallbackMetadata"]["Item"][3]["Value"];
	    $PhoneNumber=$jsonMpesaResponse["Body"]["stkCallback"]["CallbackMetadata"]["Item"][4]["Value"];

 if ($conn->connect_error)
 {
   $request['status']= 1;
  $request['message'] = "no connections to the server....";
	

  }
 else
 {
    $request['status']= 0;
    $request['message'] = "Connection was successfull...";

   if($ResultCode===0){  
	
	   $query = "INSERT INTO mpesa_account (strOrderId) VALUES ('$AccountReference')";
	   $query = mysqli_query($conn, $query);
}
else
{
	    //the transaction was not successfull...
	$request['status_transaction']= 1;
     	$request['message'] = "transaction failled";
     }
    
}

echo json_encode($request);
?>
