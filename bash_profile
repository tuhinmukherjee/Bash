certspotter(){
curl -s https://certspotter.com/api/v0/certs\?domain\=$1 | jq '.[].dns_names[]'$
} #h/t 

crtsh(){
curl -s "https://crt.sh/?q=%25.$1" | sed 's/<\/\?[^>]\+>//g' | sort -u | grep -$
}


for sub in $(cat domains.txt);do sudo python3 dirsearch.py -u https://$sub/ -e htm,html,js,zip,asp,aspx,php,bak,sql,old,txt,gz,gz.tar -w wordlist -x 301,404,400 -t100 >> output.txt; done
