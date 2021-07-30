#!/bin/bash

nameDb=testDB
userDb=roman
pwDb=Lada_2108

curentdatatime=`date +%d%m%Y_%H%M`
fnamePrefix=$nameDb"_"
fileName=$fnamePrefix$curentdatatime".sql"

stMysql=`systemctl status mysql | grep active`

if [[ ${stMysql} == 0 ]];
then 
    echo "The MySQL is not active " 
    exit 1
else
    echo "The MySQL have status active"

    mysqldump  -u $userDb -p$pwDb $nameDb > $fileName
    fi
    
