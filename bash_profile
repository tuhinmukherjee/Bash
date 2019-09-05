certspotter(){
curl -s https://certspotter.com/api/v0/certs\?domain\=$1 | jq '.[].dns_names[]'$
} #h/t 

crtsh(){
curl -s "https://crt.sh/?q=%25.$1" | sed 's/<\/\?[^>]\+>//g' | sort -u | grep -$
}
