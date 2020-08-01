<?php
if($_SERVER['REQUEST_METHOD']=='POST'){ 
  
  $strPhone = $_POST['strPhone'];
  $strAmount = $_POST['strAmount'];
  $strOrderId = $_POST['strOrderId'];  
    
  date_default_timezone_set('Africa/Nairobi');

  # access token
  $consumerKey = 'aLehRAMafEc4AMoKQRexcV3lK95qQbZ0'; //Fill with your app Consumer Key
  $consumerSecret = 'naEbwu4q1iZ52JBE'; // Fill with your app Secret

  # define the variales
  # provide the following details, this part is found on your test credentials on the developer account
  $BusinessShortCode = '174379';
  $Passkey = 'bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919';  

  
 
  $TransactionDesc = 'Goods Payment';
 
  # Get the timestamp, format YYYYmmddhms -> 20181004151020
  $Timestamp = date('YmdHis');    
  # Get the base64 encoded string -> $password. The passkey is the M-PESA Public Key
  $Password = base64_encode($BusinessShortCode.$Passkey.$Timestamp);

  # header for access token
  $headers = ['Content-Type:application/json; charset=utf8'];
    # M-PESA endpoint urls https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials
  $access_token_url = 'https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials';
  $initiate_url = 'https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest';

  # callback url
  $CallBackURL = 'https://pre-raphaelite-midw.000webhostapp.com/NyumbaDbScripts/M_pesa_APi/Tutorial%209/callback_url.php?strOrderId='.$strOrderId;  

  $curl = curl_init($access_token_url);
  curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
  curl_setopt($curl, CURLOPT_HEADER, FALSE);
  curl_setopt($curl, CURLOPT_USERPWD, $consumerKey.':'.$consumerSecret);
  $result = curl_exec($curl);
  $status = curl_getinfo($curl, CURLINFO_HTTP_CODE);
  $result = json_decode($result);
  $access_token = $result->access_token; 
  echo $access_token;
  curl_close($curl);

  # header for stk push
  //$stkheader = ['Content-Type:application/json','Authorization:Bearer'.$access_token];

  # initiating the transaction
  $curl = curl_init();
  curl_setopt($curl, CURLOPT_URL, $initiate_url);
  //curl_setopt($curl, CURLOPT_HTTPHEADER,$stkheader);
    curl_setopt($curl, CURLOPT_HTTPHEADER, array('Content-Type:application/json','Authorization:Bearer '.$access_token));//setting custom header

  $curl_post_data = array(
    //Fill in the request parameters with valid values
    'BusinessShortCode' => $BusinessShortCode,
    'Password' => $Password,
    'Timestamp' => $Timestamp,
    'TransactionType' => 'CustomerPayBillOnline',
    'Amount' => $strAmount,
    'PartyA' => $strPhone,
    'PartyB' => $BusinessShortCode,
    'PhoneNumber' => $strPhone,
    'CallBackURL' => $CallBackURL,
    'AccountReference' => $strPhone,
    'TransactionDesc' => $TransactionDesc
  );

  $data_string = json_encode($curl_post_data);
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
  curl_setopt($curl, CURLOPT_POST, true);
  curl_setopt($curl, CURLOPT_POSTFIELDS, $data_string);
  $curl_response = curl_exec($curl);
  print_r($curl_response);

  echo $curl_response;
  
}
?>
