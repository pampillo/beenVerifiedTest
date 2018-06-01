<?php

header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header('Access-Control-Allow-Origin: *');
include_once('confi.php');

if (mysqli_connect_errno()) {
        $response["success"] = 0;
		$response["message"] = "Error conection";
}else{
   
    mysqli_close($mysqli);
}
echo json_encode($response);
?>