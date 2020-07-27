<?php
   
    require_once('dbConnect.php');

    
    $response = array(); 
    
    if(isset($_REQUEST['strUserId']) && isset($_REQUEST['strUsername']) 
    && isset($_REQUEST['strEmail']) && isset($_REQUEST['strPhone'])
    && isset($_REQUEST['strCounty']) && isset($_REQUEST['strLocation'])
    && isset($_REQUEST['strCity']) && isset($_REQUEST['strImageUrl'])
      && isset($_REQUEST['strPassword']) && isset($_REQUEST['strRole'])){
        
        	//Getting post data 
		$strUserId = $_REQUEST['strUserId'];
		$strUsername = $_REQUEST['strUsername'];
		$strEmail = $_REQUEST['strEmail'];
		$strPhone = $_REQUEST['strPhone'];
		$strCounty = $_REQUEST['strCounty'];
		$strLocation = $_REQUEST['strLocation'];
		$strCity = $_REQUEST['strCity'];
		$strImageUrl = $_REQUEST['strImageUrl'];
		$strRole = $_REQUEST['strRole'];
		$strPassword = $_REQUEST['strPassword'];

        $adding = "INSERT INTO users (strUserId,strUsername,strEmail,strPhone,strCounty,strLocation,strCity,strPassword,strRole,strImageUrl) VALUES ('$strUserId','$strUsername','$strEmail','$strPhone','$strCounty','$strLocation','$strCity','$strPassword','$strRole','$strImageUrl')";
       
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
