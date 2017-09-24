@echo off
del tmp.txt
del tmp2.txt
del tmpnet.txt
del tmpipext.txt
del output.txt
echo ==========[ RUKUSDK – WINDOWS ]=============== >> output.txt
systeminfo > tmp.txt
echo ———-[ Getting OS Info ]————— >> output.txt
FINDSTR /i OS tmp.txt >> output.txt
echo ———-[ Getting Network Info ]————— >> output.txt
hostname >> output.txt
cscript /nologo wget.js http://ipinfo.io/ip >> tmpipext.txt
type tmpipext.txt >> output.txt
set /p _extip=<tmpipext.txt
tracert %_extip% >> output.txt
ipconfig /all >> tmpnet.txt
FINDSTR /i IPv4 tmpnet.txt >> output.txt
echo ———-[ Getting Processor Info ]————— >> output.txt
FINDSTR /i Proc tmp.txt >> output.txt
FINDSTR /i Intel tmp.txt >> output.txt
FINDSTR /i amd tmp.txt >> output.txt
FINDSTR /i Type tmp.txt >> output.txt
echo ———-[ Getting Processor Usage ]————— >> output.txt
echo Processor Usage... >> output.txt
wmic  /OUTPUT:tmp2.txt cpu get loadpercentage
type tmp2.txt >> output.txt
del tmp2.txt
wmic  /OUTPUT:tmp2.txt cpu get loadpercentage
type tmp2.txt >> output.txt
del tmp2.txt
wmic  /OUTPUT:tmp2.txt cpu get loadpercentage
type tmp2.txt >> output.txt
del tmp2.txt
wmic  /OUTPUT:tmp2.txt cpu get loadpercentage
type tmp2.txt >> output.txt
del tmp2.txt
wmic  /OUTPUT:tmp2.txt cpu get loadpercentage
type tmp2.txt >> output.txt
del tmp2.txt
echo ———-[ Getting Memory Info ]————— >> output.txt
FINDSTR /i Mem tmp.txt >> output.txt
echo ———-[ Getting Mounted Disks Info ]————— >> output.txt
call drives.cmd
echo ———-[ Getting Logged In Users ]————— >> output.txt
whoami >> output.txt
echo ———-[ Getting All Users ]————— >> output.txt
net user >> output.txt
echo ———-[ Getting Open Ports ]————— >> output.txt
netstat -a -n -p tcp -o >> output.txt
call wpush.cmd
del tmp.txt
del tmp2.txt
del tmpnet.txt
del tmpipext.txt
del output.txt
echo ———-[ Completed! ]————— >> output.txt
