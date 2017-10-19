<?php
include('../includes/config.php');

$query="select distinct csv.AUDITID, csv.USERID, csv.ACTIVITYDATE, csv.ACTIVITYTYPE, csv.DOCUMENT, csv.DOCUMENTLINE, csv.CONSIGNEE, csv.SKU, csv.FROMLOAD, csv.TOLOAD, csv.FROMSTATUS, csv.TOSTATUS, csv.FROMLOC, csv.TOLOC, csv.FROMQTY, csv.TOQTY, csv.ACTIVITYTIME, csv.MHEID, csv.TERMINALTYPE, csv.FROMCONTAINER, csv.TOCONTAINER, csv.YARDEQUIPMENTID, csv.SEAL1, csv.SEAL2, csv.DRIVER1, csv.DRIVER2, csv.CARRIER, csv.DOOR, csv.DOOR, csv.NOTES, csv.ADDDATE, csv.ADDUSER, csv.EDITDATE, csv.EDITUSER from csvdata csv order by csv.AUDITID";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$arr = array();
if($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		$arr[] = $row;	
	}
}
# JSON-encode the response
$json_response = json_encode($arr);

// # Return the response
echo $json_response;
?>
