
echo Starting RD_SYS_INFO for Linux
echo **LINUX** >> output.txt
echo Getting OS Info...
cat /proc/version >> output.txt
echo Getting Processor Info...
lscpu >> output.txt
grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}' >> output.txt
sleep 1
grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}' >> output.txt
sleep 1
grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}' >> output.txt
sleep 1
grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}' >> output.txt
sleep 1
grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}' >> output.txt
sleep 1
grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}' >> output.txt
echo Getting Memory Info...
cat /proc/meminfo | grep Mem >> output.txt
echo Getting Mounted Disks Info...
df -h >> output.txt
echo ------------------------------------- >> output.txt

