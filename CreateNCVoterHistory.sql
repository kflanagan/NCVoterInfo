use NCVoters;
SET GLOBAL local_infile = 1;
set global sql_mode = '';
create table IF NOT Exists VoterHistoryWake  (
`county_id`          	    int(4),
`county_desc`        	    varchar(60),
`voter_reg_num`      	    varchar(12),
`election_lbl`       	    varchar(10),
`election_desc`      	    varchar(230),
`voting_method`      	    varchar(10),
`voted_party_cd`     	    varchar(3),
`voted_party_desc`   	    varchar(60),
`pct_label`          	    varchar(6),
`pct_description`    	    varchar(60),
`ncid`               	    varchar(12),
`voted_county_id`    	    varchar(3),
`voted_county_desc`  	    varchar(60),
`vtd_label`          	    varchar(6),
`vtd_description`		    varchar(60)
key = (voter_reg_num)
);
