echo -e "** Starting RD_SYS_INFO for Linux"  >> output.txt
echo -e "**LINUX**" >> output.txt
echo -e "** Getting OS Info..."  >> output.txt
cat /proc/version >> output.txt
echo -e "** Getting Network Info..."  >> output.txt
ifconfig -a | grep inet >> output.txt
curl ipinfo.io/ip >> output.txt
export a=$(curl ipinfo.io/ip)
traceroute $a >> output.txt
echo -e "** Getting Processor Info..."  >> output.txt
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
echo -e "** Getting Memory Info..."  >> output.txt
cat /proc/meminfo | grep Mem >> output.txt
echo -e "** Getting Mounted Disks Info..."  >> output.txt
df -h >> output.txt
echo -e "** Getting Logged In Users..."  >> output.txt
who >> output.txt
echo ------------------------------------- >> output.txt
cat output.txt
