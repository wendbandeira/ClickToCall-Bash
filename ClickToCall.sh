#!/bin/bash
#GITHUB: wendbandeira@gmail.com
#17-10-2019


DB="clicktocal"
USER="clicktocall"
PASS=""
HOST=""
SQL="select ddd,number,department from register_numbers where carried_out=0;"
QUERY=$(mysql $DB -u$USER -p$PASS -h $HOST -Bse "$SQL")  


if [ -z $QUERY ]
then
	echo "${QUERY} is empty"
else
	for rows in "${QUERY[@]}"
	do
		fieldNumber=`echo ${rows}| awk '{print $2}'`;

		sh WriteFileCall.sh echo ${QUERY} 

		mysql $DB -u${USER} -p${PASS} -h ${HOST} -Bse "update register_numbers set carried_out=1 where number=${fieldNumber}"

	done
fi