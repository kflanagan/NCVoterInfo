# This script assumes that it will be run out of a specific directory, edit
# the sql script to adjust that before running
# cleanup the compressed data file
# rm ncvoter_statewide.zip
#wget https://s3.amazonaws.com/dl.ncsbe.gov/data/ncvoter_Statewide.zip
# cleanup the uncompressed data file
#rm ncvoter_Statewide.txt
#unzip ncvoter_Statewide.zip
# for the sake of space cleanup again
#rm ncvoter_Statewide.zip
mysql -u kevin -p < reloadNC-Voters.sql



