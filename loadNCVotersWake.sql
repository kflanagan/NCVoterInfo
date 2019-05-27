<<<<<<< HEAD
use NCVoters;
SET GLOBAL local_infile = 1;
set global sql_mode = '';
LOAD DATA local INFILE './ncvoter92.txt' INTO TABLE VoterHistoryWake FIELDS enclosed by '"'  IGNORE 1 LINES ;
select count(*) from voters;
=======
use NCVoters;
SET GLOBAL local_infile = 1;
set global sql_mode = '';
LOAD DATA local INFILE './ncvhis92.txt' INTO TABLE VoterHistoryWake FIELDS enclosed by '"'  IGNORE 1 LINES ;
select count(*) from voters;
>>>>>>> 3860ff26d0ec7b970f7738f1f2b58d771bd5b9bf
