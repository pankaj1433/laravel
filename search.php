<?php
/*
 * Require PDO Helper file to establish database connection using sigleton pattern.
 */
require_once('ConnectDb.php');

$app_id = $_POST["app_id"];
try {
    //create instance of the ConnectDb class.
    $instance = ConnectDb::getInstance();
    $conn = $instance->getConnection();
    //create a prepared statement.
	$result = $conn->query("SELECT * FROM application_form WHERE application_ID='$app_id'");
	if ($result)	{
        $rows = $result->fetchAll(PDO::FETCH_OBJ);
        //return result as response
        echo json_encode($rows);
	}
}
catch(PDOException $e)
{
    echo "Error: " . $e->getMessage();
}