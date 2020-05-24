<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['docRef']) && isset($_REQUEST['user_id']) 
    && isset($_REQUEST['order_no']) && isset($_REQUEST['date'])
    && isset($_REQUEST['amount']) && isset($_REQUEST['delivery_fee'])
    && isset($_REQUEST['driver_id']) && isset($_REQUEST['shipped_status']) 
    && isset($_REQUEST['delivery_details']) && isset($_REQUEST['shop_id'])
    && isset($_REQUEST['mpesa_code']) && isset($_REQUEST['deleted'])){
        
        	//Getting post data 
		$docRef = $_REQUEST['docRef'];
		$user_id = $_REQUEST['user_id'];
		$order_no = $_REQUEST['order_no'];
		$date = $_REQUEST['date'];
		$amount = $_REQUEST['amount'];
		$mpesa_code = $_REQUEST['mpesa_code'];
		$delivery_fee = $_REQUEST['delivery_fee'];
		$driver_id = $_REQUEST['driver_id'];
		$shipped_status = $_REQUEST['shipped_status'];
		$delivery_details = $_REQUEST['delivery_details'];
		$shop_id = $_REQUEST['shop_id'];
		$deleted = $_REQUEST['deleted'];

        $adding = "INSERT INTO orders (docRef,user_id,order_no,date,amount,delivery_fee,driver_id,shipped_status,delivery_details,shop_id,mpesa_code,deleted) VALUES ('$docRef','$user_id','$order_no','$date','$amount','$delivery_fee','$driver_id','$shipped_status','$delivery_details','$shop_id','$mpesa_code','$deleted')";
       
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
