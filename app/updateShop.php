<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['user_id']) && isset($_REQUEST['email'])
    && isset($_REQUEST['name']) && isset($_REQUEST['till'])
    && isset($_REQUEST['phone']) && isset($_REQUEST['account_no'])){
        
        	//Getting post data 
		$strUserId = $_REQUEST['user_id'];
		$strName = $_REQUEST['name'];
		$strEmail = $_REQUEST['email'];
		$strPhone = $_REQUEST['phone'];
		$strTill = $_REQUEST['till'];
		$account_no = $_REQUEST['account_no'];

        $adding = "UPDATE shops SET name = '$strName', email = '$strEmail', till = '$strTill', phone = '$strPhone' ,account_no = '$account_no' WHERE user_id = '$strUserId'";
       
       $result = mysqli_query($conn,$adding);
        
    if ($result) {
        // successfully inserted into database
        $response["status"] = "0";
        $response["message"] = "Saved.";
    } else {
        // failed to insert row
        $response["status"] = "1";
        $response["message"] = "Error: ".mysqli_error($con);
    }
    // echoing JSON response
    echo json_encode($response);
        
    }
?>
