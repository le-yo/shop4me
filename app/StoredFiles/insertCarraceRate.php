<?php
   
   require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['strDocumentId']) && isset($_REQUEST['strUserId']) 
    && isset($_REQUEST['strComment']) && isset($_REQUEST['strDate']) 
    && isset($_REQUEST['strRate']) && isset($_REQUEST['strPostId'])){
        
        	//getting post data 
		$strDocumentId = $_REQUEST['strDocumentId'];
		$strUserId = $_REQUEST['strUserId'];
		$strComment = $_REQUEST['strComment'];
		$strDate = $_REQUEST['strDate'];
		$strRate = $_REQUEST['strRate'];
		$strPostId = $_REQUEST['strPostId'];

        $adding = "INSERT INTO c_ratings (strDocumentId,strUserId,strComment,strDate,strRate,strPostId) VALUES ('$strDocumentId','$strUserId','$strComment','$strDate','$strRate','$strPostId')";
       
       $result = mysqli_query($conn,$adding);
        
    if ($result>0) {
        // successfully inserted into database
        $response["status"] = "0";
        $response["message"] = "successfuly sents.";
    } else {
        // failed to insert row
        $response["status"] = "1";
        $response["message"] = "error: ".mysqli_error($conn);
    }
    // echoing json response
    echo json_encode($response);
        
    }
?>
