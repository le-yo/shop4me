<?php

// check for required fields
if($_SERVER['REQUEST_METHOD']=='POST'){
require_once('dbConnect.php');


// array for JSON response
$response = array();
$strUserId = $_POST['strUserId'];
 $look =mysqli_query($conn,"SELECT FROM p_users WHERE strUserId ='$strUserId'");
    
  $check = mysqli_fetch_array($look);
   
 if( $check !==0){

    $response["status"] = 0;
    $response["message"] = "User already exists! :-(";
    echo json_encode($response);
} else {

    $response["status"] = 1;
    $response["message"] = "User not existing! :-(";
    echo json_encode($response);
}
}

?>
