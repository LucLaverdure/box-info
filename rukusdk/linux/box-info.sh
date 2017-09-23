# Usage: ./box-info.sh
#
# Find Response in output.txt
#
echo -e "==========[ RUKUSDK - LINUX ]===============" >> output.txt
echo -e "----------[ Getting OS Info ]---------------" >> output.txt
cat /proc/version >> output.txt
echo -e "----------[ Getting Network Info ]---------------" >> output.txt
ifconfig -a | grep inet >> output.txt
curl ipinfo.io/ip >> output.txt
export a=$(curl ipinfo.io/ip)
nmap -sn --traceroute $a >> output.txt
echo -e "----------[ Getting Processor Info ]---------------" >> output.txt
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
echo -e "----------[ Getting Memory Info ]---------------" >> output.txt
cat /proc/meminfo | grep Mem >> output.txt
echo -e "----------[ Getting Mounted Disks Info ]---------------" >> output.txt
df -h >> output.txt
echo -e "----------[ Getting Logged In Users ]---------------" >> output.txt
who >> output.txt
_l="/etc/login.defs"
_p="/etc/passwd"
## get mini UID limit ##
l=$(grep "^UID_MIN" $_l)
## get max UID limit ##
l1=$(grep "^UID_MAX" $_l)
## use awk to print if UID >= $MIN and UID <= $MAX and shell is not /sbin/nologin   ##
echo -e "----------[ Getting Normal User Accounts ]---------------" >> output.txt
awk -F':' -v "min=${l##UID_MIN}" -v "max=${l1##UID_MAX}" '{ if ( $3 >= min && $3 <= max  && $7 != "/sbin/nologin" ) print $0 }' "$_p" >> output.txt
echo "" >> output.txt
echo "----------[ Getting System User Accounts ]---------------" >> output.txt
awk -F':' -v "min=${l##UID_MIN}" -v "max=${l1##UID_MAX}" '{ if ( !($3 >= min && $3 <= max  && $7 != "/sbin/nologin")) print $0 }' "$_p" >> output.txt
echo -e "----------[ Getting Open Ports  ]---------------" >> output.txt
nmap -A -T4 localhost | grep open >> output.txt
echo ------------------------------------- >> output.txt
cat output.txt
