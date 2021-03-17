Bash Script:

size-validator.sh:
	-- takes a file path as an argument and outputs "OK" if the file size is less than or equal to 1024 bytes, and "FAIL" if the file size is greater than 1024 bytes.


unzipWithGrep.sh:
	-- takes two parameters as input - the file name (the first parameter) and the search pattern (the second parameter), after which it unzips the file and searches for a search pattern in it.


awk_parser.awk
	-- An example of AWK parser that perform conditional operation with data parsed

findReplace.sed
	-- Substitute all matches with a pattern inside a file using SED

sysBackup.sh
	-- The script makes backups (backup) at the night of the / etc directory and deletes old archives. The file name is in the format: etc-backup-YYY-MM-DD.tar.gz, where YYYYis the year of backups, MM is the month, DDis the day. The backup is performed only at night between 2:00 and 3:00 am, according to the time of your local time zone. The script deletes backups older than N days, the number of days is set by the REMOVE_AFTER environment variable when the script is run.

