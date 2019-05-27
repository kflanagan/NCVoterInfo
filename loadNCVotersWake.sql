use NCVoters;
SET GLOBAL local_infile = 1;
set global sql_mode = '';
LOAD DATA local INFILE './ncvoter92.txt' INTO TABLE VoterHistoryWake FIELDS enclosed by '"'  IGNORE 1 LINES ;
select count(*) from voters;
