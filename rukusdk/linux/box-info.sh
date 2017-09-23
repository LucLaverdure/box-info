echo ** Starting RD_SYS_INFO for Linux  >> output.txt
echo **LINUX** >> output.txt
echo ** Getting OS Info...  >> output.txt
cat /proc/version >> output.txt
echo ** Getting Processor Info...  >> output.txt
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
echo ** Getting Memory Info...  >> output.txt
cat /proc/meminfo | grep Mem >> output.txt
echo ** Getting Mounted Disks Info...  >> output.txt
df -h >> output.txt
echo ** Getting Logged In Users...  >> output.txt
who >> output.txt
echo ------------------------------------- >> output.txt

