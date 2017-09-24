#! /bin/bash


TXT=ncvoter_Statewide.txt
if [ -f $TXT ]; then
   rm $TXT
fi


ZIP=ncvoter_Statewide.zip
if [ -f $ZIP ]; then
   rm $ZIP
   wget https://s3.amazonaws.com/dl.ncsbe.gov/data/ncvoter_Statewide.zip

else
   wget https://s3.amazonaws.com/dl.ncsbe.gov/data/ncvoter_Statewide.zip
fi

 if [ -f $ZIP ]; then
   unzip $ZIP

fi


mysql -u user -p < reloadNC-Voters.sql

