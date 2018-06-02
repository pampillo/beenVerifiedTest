<?php

header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header('Access-Control-Allow-Origin: *');
include_once('confi.php');

$sql = "
SELECT s.title, s.artist, s.duration, g.name as genre FROM songs s INNER JOIN genres g WHERE g.id = s.genre;
";
    
 
$result = $mysqli->query($sql);


if (mysqli_connect_errno()) {
        $response["success"] = 0;
		$response["message"] = "Error conection";
}else{
   
    if ($result->num_rows > 0) {
        // Fetching all
        $array = NULL;
        while($row = $result->fetch_assoc())
            $array[] = $row;
         
         
        $response["success"] = 1;
        $response["data"]= $array;
		
		echo json_encode($response["data"]);
		
    }else{
            $response["success"] = 0;
            $response["message"] = "Error";;
    }
   
    mysqli_close($mysqli);
}
?>