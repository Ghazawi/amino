#!/bin/bash

# By dev GHAZAWIVIP
#------------install-----------------
#sudo snap install jq              #|
#sudo apt-get install wget         #|
#------------------------------------
bash update.sh
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
echo -e "${RED}[!] First version 1.0[!] ${NC}"
echo " "
echo -e "${CYAN}[>] Always update the tool from a file update.sh ${NC}"
echo ""

echo -e "${RED} [1] ${NC}  ${CYAN} id amino     ${NC}     "  
echo -e "${RED} [2] ${NC}  ${CYAN} Voice calls  ${NC}     "  
read -p "$(echo -e $RED" imput "$NC)" NU
if [ $NU == 1 ]; then
 echo -e  "\033[47mGet id amino By GAZAWIVIP-sors\033[m" 
 NDCDEVICEID="42CBBA8E3D2DE693F7713F10C0587F29AEB3415C7558B75A96C43B14D0F41846C23128438CE4D6D597"
 URL_ID_API="https://service.narvii.com/api/v1/g/s/link-resolution?q="
read  -p  "$(echo -e ${YELLOW}"input link profile amino:"$NC) " URLPROFILEID
fi
if [[ $URLPROFILEID == *"http://aminoapps.com/"* ]];  then
NDCDEVICEID="42CBBA8E3D2DE693F7713F10C0587F29AEB3415C7558B75A96C43B14D0F41846C23128438CE4D6D597"
MESSAGEURLPROFILEID=$(curl --request GET "${URL_ID_API}${URLPROFILEID}" \
--silent \
--header "NDCDEVICEID:$NDCDEVICEID" \ | jq '{"api:message"}' )
#-----------------GET VALUES ID AMINO---------------------------------------------------
#            -----------GHAZAWI VIP-----------                     |                   #|
#-----------------GET objectId -------------------------------------                   #|
#         linkInfoV2.extensions.linkInfo.objectId                  |                   #|
#-------------------------------------------------------------------                   #|
OBJECTID=$(curl --request GET "${URL_ID_API}${URLPROFILEID}" \
--silent \
--header "NDCDEVICEID:$NDCDEVICEID" \ | jq '.linkInfoV2.extensions.linkInfo.objectId') #| 
#-----------------GET objectId -------------------------------------                   #|
#         linkInfoV2.extensions.linkInfo.ndcId                     |                   #|
#-------------------------------------------------------------------                   #|
NDCID=$(curl --request GET "${URL_ID_API}${URLPROFILEID}" \
--silent \
--header "NDCDEVICEID:$NDCDEVICEID" \ | jq ".linkInfoV2.extensions.linkInfo.ndcId" )   #|

#---------------------------------------------------------------------------------------

 echo   " "
 echo -e  "\033[47mndcId\033[m   " " \033[41m$NDCID\033[m  "
 echo   " "
 echo -e  "\033[47mobjectId\033[m" "\033[41m$OBJECTID\033[m"
 fi
 
 if [ $NU == 2 ];then
 echo  -e  "\033[47m login amino By GAZAWIVIP-sors\033[m" 
 read  -p  "$(echo -e ${YELLOW}"input sid amino login:"$NC) " SID
 read  -p  "$(echo -e ${YELLOW}"input link chat host:"$NC) " CHAT
 read  -p  "$(echo -e ${YELLOW}"input link profile amino:"$NC) " URLPROFILEIDHOST

if [[ ${URLPROFILEIDHOST} == *"http://aminoapps.com/"* && ${CHAT} == *"http://aminoapps.com/"* && ${SID} == *"sid="* ]];  then
NDCDEVICEID="42CBBA8E3D2DE693F7713F10C0587F29AEB3415C7558B75A96C43B14D0F41846C23128438CE4D6D597"
 URL_ID_API="https://service.narvii.com/api/v1/g/s/link-resolution?q="

NDCID=$(curl --request GET "${URL_ID_API}${CHAT}" \
--silent \
--header "NDCDEVICEID:$NDCDEVICEID" \ | jq ".linkInfoV2.extensions.linkInfo.ndcId")

OBJECTID2=$(curl --request GET "${URL_ID_API}${CHAT}" \
--silent \
--header "NDCDEVICEID:$NDCDEVICEID" \ | jq ".linkInfoV2.extensions.linkInfo.objectId")

MESSAGE_chat=$(wget  -qO- "${URL_ID_API}${CHAT}" |jq '{"api:message"}' )

OBJECTID=$(curl --request GET "${URL_ID_API}${URLPROFILEIDHOST}" \
--silent \
--header "NDCDEVICEID:$NDCDEVICEID" \ | jq  ".linkInfoV2.extensions.linkInfo.objectId" )


OBJECT_ID=`echo $OBJECTID  | tr -d '"'`
OBJECT_ID2=`echo $OBJECTID2  | tr -d '"'`

sleep 2
service="https://service.narvii.com/api/v1/x${NDCID}/s/chat/thread/${OBJECT_ID2}/co-host/${OBJECT_ID}"

COHOST=$(curl --request DELETE \
--silent \
--header "NDCAUTH:${SID}" \
--header "NDCDEVICEID:$NDCDEVICEID" \
$service | jq '{"api:message"}')
echo $COHOST
if [[ ${COHOST} == *"OK"* ]];  then
for (( ; ; ))
do
COHOST=$(curl --request DELETE \
--silent \
--header "NDCAUTH:${SID}" \
--header "NDCDEVICEID:${NDCDEVICEID}" \
$service | jq '{"api:message"}')
  echo -e "[${YELLOW}OK${NC}] ${COHOST} "
done
 else 
 echo "${RED}$COHOST${RED}"
fi
fi
fi
