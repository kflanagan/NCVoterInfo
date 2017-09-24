echo " "
echo "This script will create a new schema and table, then it will create "
echo "a user named user, with a password of password."
echo " "
echo "When that is finished it will download the entire state voter" 
echo "registration database and load it into that table"
echo "it requires MySQL, wget and a database user root with full DBA rights"
echo "on the MySQL instance"
echo " "
echo " "

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




mysql -u kevin -p < CreateNCVoters.sql
