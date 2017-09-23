@echo off
echo **WINDOWS** >> output.txt
echo Starting RD_SYS_INFO for Windows
systeminfo > tmp.txt
echo Getting OS Info...
FINDSTR /i OS tmp.txt >> output.txt
echo Getting Processor Info...
FINDSTR /i Proc tmp.txt >> output.txt
FINDSTR /i Intel tmp.txt >> output.txt
FINDSTR /i amd tmp.txt >> output.txt
FINDSTR /i Type tmp.txt >> output.txt
echo Getting Processor Usage...
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
echo Getting Memory Info...
FINDSTR /i Mem tmp.txt >> output.txt
echo Getting Mounted Disks Info...
wmic  /OUTPUT:tmp.txt logicaldisk get size,freespace,caption
type tmp.txt >> output.txt
echo ------------------------------------- >> output.txt
echo House Keeping...
del tmp.txt
echo Completed!