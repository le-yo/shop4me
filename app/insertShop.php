<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['id']) && isset($_REQUEST['image']) 
    && isset($_REQUEST['category']) && isset($_REQUEST['dateCreated'])
    && isset($_REQUEST['name']) && isset($_REQUEST['location'])
    && isset($_REQUEST['email']) && isset($_REQUEST['phone'])
    && isset($_REQUEST['user_id']) && isset($_REQUEST['city'])
    && isset($_REQUEST['till']) && isset($_REQUEST['status'])
    && isset($_REQUEST['account_no']) && isset($_REQUEST['latlng'])){
        
        	//Getting post data 
		$id = $_REQUEST['id'];
		$image = $_REQUEST['image'];
		$category = $_REQUEST['category'];
		$dateCreated = $_REQUEST['dateCreated'];
		$name = $_REQUEST['name'];
		$email = $_REQUEST['email'];
		$phone = $_REQUEST['phone'];
		$location = $_REQUEST['location'];
		$city = $_REQUEST['city'];
		$user_id = $_REQUEST['user_id'];
		$till = $_REQUEST['till'];
		$latlng = $_REQUEST['latlng'];
		$status = $_REQUEST['status'];
		$open = $_REQUEST['open'];
		$account_no = $_REQUEST['account_no'];

        $adding = "INSERT INTO shops (id,name,image,dateCreated,location,category,email,phone,city,user_id,till,status,open,account_no,latlng) VALUES ('$id','$name','$image','$dateCreated','$location','$category','$email','$phone','$city','$user_id','$till','$status','$open','$account_no','$latlng')";
       
       $result = mysqli_query($conn,$adding);
        
    if ($result>0) {
        // successfully inserted into database
        $response["status"] = "0";
        $response["message"] = "Successfuly uploaded.";
    } else {
        // failed to insert row
        $response["status"] = "1";
        $response["message"] = "Error: ".mysqli_error($con);
    }
    // echoing JSON response
    echo json_encode($response);
        
    }
?>
