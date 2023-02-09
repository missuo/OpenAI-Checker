#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
PLAIN='\033[0m'

SUPPORT_COUNTRY=(AL DZ AD AO AG AR AM AU AT AZ BS BD BB BE BZ BJ BT BA BW BR BG BF CV CA CL CO KM CR HR CY DK DJ DM DO EC SV EE FJ FI FR GA GM GE DE GH GR GD GT GN GW GY HT HN HU IS IN ID IQ IE IL IT JM JP JO KZ KE KI KW KG LV LB LS LR LI LT LU MG MW MY MV ML MT MH MR MU MX MC MN ME MA MZ MM NA NR NP NL NZ NI NE NG MK NO OM PK PW PA PG PE PH PL PT QA RO RW KN LC VC WS SM ST SN RS SC SL SG SK SI SB ZA ES LK SR SE CH TH TG TO TT TN TR TV UG AE US UY VU ZM BO BN CG CZ VA FM MD PS KR TW TZ TL GB )
echo "OpenAI Access Checker v0.0.1"
echo 
if [[ $(curl -sS https://chat.openai.com/ -I | grep "text/plain") != "" ]]
then
	echo "Your IP is BLOCKED!"
else
	iso2_code4=$(curl -4 -sS https://chat.openai.com/cdn-cgi/trace | grep "loc=" | awk -F= '{print $2}')
	iso2_code6=$(curl -6 -sS https://chat.openai.com/cdn-cgi/trace | grep "loc=" | awk -F= '{print $2}')
	echo -e "[IPv4]"
	if [[ "${SUPPORT_COUNTRY[@]}"  =~ "${iso2_code4}" ]]; 
	then
		echo -e "${GREEN}Your IP supports access to OpenAI.${PLAIN} Region: ${iso2_code4}" 
	else
		echo -e "Region: ${iso2_code4}. ${RED}Not support OpenAI at this time.${PLAIN}"
	fi
	echo -e "[IPv6]"
	if [[ "${SUPPORT_COUNTRY[@]}"  =~ "${iso2_code6}" ]]; 
	then
		echo -e "${GREEN}Your IP supports access to OpenAI.${PLAIN} Region: ${iso2_code6}" 
	else
		echo -e "Region: ${iso2_code6}. ${RED}Not support OpenAI at this time.${PLAIN}"
	fi
	
fi
echo 
echo "Made by Vincent."
echo "https://github.com/missuo/OpenAI-Checker"
