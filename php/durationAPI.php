<?php

header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
include_once('confi.php');


//setting parameters
$minDuration = $_GET['minDuration'];
$maxDuration = $_GET['maxDuration'];

//SQL query
$sql = "
SELECT s.title, s.artist, s.duration, g.name as genre FROM songs s INNER JOIN genres g WHERE g.id = s.genre AND s.duration>='$minDuration' AND s.duration<='$maxDuration'
";
    
 
$result = $mysqli->query($sql);

//Validating connectiom
if (mysqli_connect_errno()) {
        $response["success"] = 0;
		$response["message"] = "Error connection";
}else{
   
    if ($result->num_rows > 0) {
        // Fetching all the data
        $array = NULL;
        while($row = $result->fetch_assoc())
            $array[] = $row;
         
         
        $response["success"] = 1;
        $response["data"]= $array;
		//encoding data
		echo json_encode($response["data"]);
		
    }else{ //getting error
            $response["success"] = 0;
            $response["message"] = "Error";;
    }
   
    mysqli_close($mysqli);
	
	}

?>