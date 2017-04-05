<?php
	//including the database connection file
	include_once("../config.php");

	$mysqli = mysqli_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);

	if ($mysqli->connect_error) {
	    die("Connection failed: " . $mysqli->connect_error);
	}	

	//fetching data in descending order (lastest entry first)
	$result = mysqli_query($mysqli, "SELECT * FROM country ORDER BY id"); // using mysqli_query instead

	$rows = array();
	while($row = $result->fetch_array(MYSQL_ASSOC)) {
	    $rows[] = $row;
	}
	echo json_encode($rows);	

?>


