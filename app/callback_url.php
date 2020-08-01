<?php


 include 'dbConnect.php' ;

  header("Content-Type: application/json");
  $stkCallbackResponse = file_get_contents('php://input');
  
  $logFile = "stkPushCallbackResponse.json";
  $log = fopen($logFile, "a");
  fwrite($log, $stkCallbackResponse);
  fclose($log);

  $AccountReference = $_GET['strOrderId']; //getting the order id from stkinitiate file

  $jsonMpesaResponse = json_decode($stkCallbackResponse, true);

  $json_data = json_encode($jsonMpesaResponse);

  //initialiing response
  $response = array(); 


  //getting the decoded values
  $ResultCode=$jsonMpesaResponse["Body"]["stkCallback"]["ResultCode"];
  $MerchantRequestID=$json_data["Body"]["stkCallback"]["MerchantRequestID"];//confirmed
  $CheckoutRequestID=$jsonMpesaResponse["Body"]["stkCallback"]["CheckoutRequestID"];
  $ResultDesc=$jsonMpesaResponse["Body"]["stkCallback"]["ResultDesc"];
  $Amount=$jsonMpesaResponse["Body"]["stkCallback"]["CallbackMetadata"]["Item"][0]["Value"];
  $ReceiptNumber=$jsonMpesaResponse["Body"]["stkCallback"]["CallbackMetadata"]["Item"]["stk_initiate"][1]["Value"];
  $TransactionDate=$jsonMpesaResponse["Body"]["stkCallback"]["CallbackMetadata"]["Item"][3]["Value"];
  $PhoneNumber=$jsonMpesaResponse["Body"]["stkCallback"]["CallbackMetadata"]["Item"][4]["Value"];
   
   //checking if transaction was successful
   if($ResultCode == 0){  	
	$query = "INSERT INTO mpesa_account (strOrderId,strPhone,strAmount) VALUES ('$AccountReference','$PhoneNumber','$Amount')";
	$result = mysqli_query($conn,$adding);//inserting transaction to db after a=successul transaction
	   
	$response["status"] = "0";
        $response["message"] = "Successfuly sents.";
	   
   }else {
	   
	//the transaction was not successfull...
	$response["status"] = "1";
        $response["message"] = "Successfuly sents.";
   }
 
  echo json_encode($response);

?>
