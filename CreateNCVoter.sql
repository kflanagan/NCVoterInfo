Create schema if not exists NCVoters charset ascii;
use NCVoters;
SET GLOBAL local_infile = 1;
set global sql_mode = '';
create table IF NOT Exists RegVoters  (`county_id`		    smallint(2),
	`county_desc`		    varchar	(15),
	`voter_reg_num`	            char	(32),
	`status_cd`		    char	(2),
	`voter_status_desc`	    varchar	(25),
	`reason_cd`		    char	(2),
	`voter_status_reason_desc`    varchar	(60),
	`absent_ind`		    char	(1),
	`name_prefx_cd`	            char	(4),
	`last_name`		    char	(25),
	`first_name`		    char	(20),
	`midl_name`		    char	(20),
	`name_sufx_cd`	            char	(3),
	`res_street_address`	    varchar	(63),
	`res_city_desc`	            varchar	(60),
	`state_cd`		    char	(2),
	`zip_code`		    char	(9),
	`mail_addr1`		    varchar	(40),
	`mail_addr2`		    varchar	(40),
	`mail_addr3`		    varchar	(40),
	`mail_addr4`		    varchar	(40),
	`mail_city`		    varchar	(30),
	`mail_state`		    char	(2),
	`mail_zipcode`	            char	(9),
	`full_phone_number`	    varchar	(12),
	`race_code`		    char	(3),
	`ethnic_code`		    char	(3),
	`party_cd`		    char	(3),
	`gender_code`		    varchar	(1),
	`birth_age`		    int         (4),
	`birth_place`		    char	(30),
	`drivers_lic`		    char        (1),
	`registr_dt`		    char	(10),
	`precinct_abbrv`	            char	(6),
	`precinct_desc`	            varchar	(60),
	`municipality_abbrv`	    char	(6),
	`municipality_desc`	    varchar	(60),
	`ward_abbrv`		    char	(6),
	`ward_desc`		    varchar	(60),
	`cong_dist_abbrv`	            char	(6),
	`super_court_abbrv`	    char	(6),
	`judic_dist_abbrv`	    char	(6),
	`nc_senate_abbrv`	            char	(6),
	`nc_house_abbrv`	            char	(6),
	`county_commiss_abbrv`        char	(6),
	`county_commiss_desc`	    varchar	(60),
	`township_abbrv`	            char	(6),
	`township_desc`	            varchar	(60),
	`school_dist_abbrv`	    char	(6),
	`school_dist_desc`	    varchar	(60),
	`fire_dist_abbrv`	            char	(6),
	`fire_dist_desc`	            varchar	(60),
	`water_dist_abbrv`	    char	(6),
	`water_dist_desc`	            varchar	(60),
	`sewer_dist_abbrv`	    char	(6),
	`sewer_dist_desc`	            varchar	(60),
	`sanit_dist_abbrv`	    char	(6),
	`sanit_dist_desc`	            varchar	(60),
	`rescue_dist_abbrv`	    char	(6),
	`rescue_dist_desc`	    varchar	(60),
	`munic_dist_abbrv`	    char	(6),
	`munic_dist_desc`	            varchar	(60),
	`dist_1_abbrv`	            char	(6),
	`dist_1_desc`		    varchar	(60),
	`dist_2_abbrv`	            char	(6),
	`dist_2_desc`		    varchar	(60),
	`Confidential_ind`	    char	(1),
	`birth_year`		    char        (4),
	`ncid` 		            char 	(12),
	`vtd_abbrv` 		    char 	(6),
	`vtd_desc` 		    char 	(60)
key = (voter_reg_num) );

use NCVoters;
-- LOAD DATA local INFILE 'ncvoter_Statewide.txt' INTO TABLE voters FIELDS enclosed by '"'  IGNORE 1 LINES ;
