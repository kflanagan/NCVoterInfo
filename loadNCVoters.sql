use NCVoters;
SET GLOBAL local_infile = 1;
set global sql_mode = '';
LOAD DATA local INFILE './ncvoter_Statewide.txt' INTO TABLE RegVoters FIELDS enclosed by '"'  IGNORE 1 LINES ;
select count(*) from RegVoters;
