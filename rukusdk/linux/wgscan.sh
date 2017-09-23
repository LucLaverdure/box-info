# Usage Example: ./wgscan .pdf mysite.com
wget -e robots=off -nd -nv -r -A $1 http://$2
