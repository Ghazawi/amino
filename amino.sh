#!/bin/bash

# By dev GHAZAWIVIP
#-----------------------------------
#sudo snap install jq #----install--
#-----------------------------------
clear

BLACK='\e[30m'
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
PURPLE='\e[35m'
CYAN='\e[36m'
WHITE='\e[37m'
NC='\e[0m'
echo ""
echo -e "${RED} ~ Tools for amino by GHAZAWIVIP ${NC}"
echo ""
echo -e "${YELLOW} Telegram|@invietamino|Invitation ${NC} "
echo ""
echo "------------------------------------"
echo ""
echo -e "${RED}[!] This Tool Must Run As ROOT [!] ${NC}"
echo ""
echo -e "${CYAN}[>] Press ENTER to Install amino, CTRL+C to Abort.${NC}"
read INPUT
echo ""

echo -e "${RED} [1] ${NC}  ${CYAN} id amino     ${NC}     "  
echo -e "${RED} [2] ${NC}  ${CYAN} Voice calls  ${NC}     "  
read -p  "        " NU
 echo -e  "\033[47mGet id amino By GAZAWIVIP-sors\033[m" 
URL_ID_API="https://dev-sors.pantheonsite.io/api/v1/link-resolution.php?q="
read -p  "add link profile amino:" PROFILEID
if [[ $PROFILEID == *"http://aminoapps.com/"* ]];  then
URL_PROFILE="$PROFILEID"
NDCID=$(wget -qO-    "$URL_ID_API$URL_PROFILE"|jq '.ndcId'   )
OBJECTID=$(wget -qO- "$URL_ID_API$URL_PROFILE"|jq '.objectId')
NICKNAME=$(wget -qO- "$URL_ID_API$URL_PROFILE"|jq '.nickname')

 echo -e  "\033[47mnickname\033[m" "\033[41m$NICKNAME\033[m"
 echo   ""
 echo -e  "\033[47mndcId\033[m   " " \033[41m$NDCID\033[m  "
 echo   ""
 echo -e  "\033[47mobjectId\033[m" "\033[41m$OBJECTID\033[m"
 echo   ""
else
   echo -e " ${RED} Not error url ${NC} "
fi
