use NCVoters;
truncate table voters;
LOAD DATA local INFILE 'ncvoter_Statewide.txt' INTO TABLE voters FIELDS TERMINATED BY '	' enclosed by '"'  IGNORE 1 LINES ;
CREATE USER IF NOT Exists 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON NCVoters.voters TO 'user'@'localhost';
select * from voters limit 20
