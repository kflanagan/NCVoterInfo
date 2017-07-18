use NCVoters;
truncate table voters;
LOAD DATA local INFILE 'ncvoter_Statewide.txt' INTO TABLE voters FIELDS TERMINATED BY '	' enclosed by '"'  IGNORE 1 LINES ;
select * from voters limit 20
