#!/bin/bash

#Get day, month, year. time
DD=$(date +%d)
MM=$(date +%m)
YYYY=$(date +%Y)
currenttime=$(date +%H:%M)

if [[ "$currenttime" > "02:00" ]] && [[ "$currenttime" < "03:00" ]]; then

#Backup directory
	BCK_DIR=/var/lib/backups
	if [ -d "$BCK_DIR" ]; then
		:
        else
	`mkdir -p $BCK_DIR`;
	fi

#Export local variables
        export REMOVE_AFTER=8

#Main Backup operation
	tar -zcvf /var/lib/backups/etc-backup-$YYYY-$MM-$DD.tar.gz /etc/

#Delete Old backups
	find /var/lib/backups -type f -mtime +$REMOVE_AFTER -name '*.gz' -execdir rm -- '{}' +

else
	echo "Not the right time for backup"

fi
 

