#!/bin/bash

IFS=,
while read AUDITID USERID ACTIVITYDATE ACTIVITYTYPE DOCUMENT DOCUMENTLINE CONSIGNEE SKU FROMLOAD TOLOAD FROMSTATUS TOSTATUS FROMLOC TOLOC FROMQTY TOQTY ACTIVITYTIME MHEID TERMINALTYPE FROMCONTAINER TOCONTAINER YARDEQUIPMENTID SEAL1 SEAL2 DRIVER1 DRIVER2 CARRIER DOOR NOTES ADDDATE ADDUSER EDITDATE EDITUSER

do

echo "INSERT INTO csvdata (AUDITID, USERID, ACTIVITYDATE, ACTIVITYTYPE, DOCUMENT, DOCUMENTLINE, CONSIGNEE, SKU, FROMLOAD, TOLOAD, FROMSTATUS, TOSTATUS, FROMLOC, TOLOC, FROMQTY, TOQTY, ACTIVITYTIME, MHEID, TERMINALTYPE, FROMCONTAINER, TOCONTAINER, YARDEQUIPMENTID, SEAL1, SEAL2, DRIVER1, DRIVER2, CARRIER, DOOR, NOTES, ADDDATE, ADDUSER, EDITDATE, EDITUSER) VALUES ('$AUDITID', '$USERID', '$ACTIVITYDATE', '$ACTIVITYTYPE', '$DOCUMENT', '$DOCUMENTLINE', '$CONSIGNEE', '$SKU', '$FROMLOAD', '$TOLOAD', '$FROMSTATUS', '$TOSTATUS', '$FROMLOC', '$TOLOC', '$FROMQTY', '$TOQTY', '$ACTIVITYTIME', '$MHEID', '$TERMINALTYPE', '$FROMCONTAINER', '$TOCONTAINER', '$YARDEQUIPMENTID', '$SEAL1', '$SEAL2', '$DRIVER1', '$DRIVER2', '$CARRIER', '$DOOR', '$NOTES', '$ADDDATE', '$ADDUSER', '$EDITDATE', '$EDITUSER');"

done < test.csv | mysql -u root -p db_name;


