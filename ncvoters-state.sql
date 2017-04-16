-- drop schema NCVoters;
-- create schema NCVoters;
use NCVoters;
-- create table voters (`county_id` varchar(32),	`county_desc` varchar(32),	`voter_reg_num` varchar(32),	`status_cd` varchar(32),	`voter_status_desc` varchar(32),	`reason_cd` varchar(32),	`voter_status_reason_desc` varchar(32),	`absent_ind` varchar(32),	`name_prefx_cd` varchar(32),	`last_name` varchar(32),	`first_name` varchar(32),	`middle_name` varchar(32),	`name_suffix_lbl` varchar(32),	`res_street_address` varchar(32),	`res_city_desc` varchar(32),	`state_cd` varchar(32),	`zip_code` varchar(32),	`mail_addr1` varchar(32),	`mail_addr2` varchar(32),	`mail_addr3` varchar(32),	`mail_addr4` varchar(32),	`mail_city` varchar(32),	`mail_state` varchar(32),	`mail_zipcode` varchar(32),	`full_phone_number` varchar(32),	`race_code` varchar(32),	`ethnic_code` varchar(32),	`party_cd` varchar(32),	`gender_code` varchar(32),	`birth_age` varchar(32),	`birth_state` varchar(32),	`drivers_lic` varchar(32),	`registr_dt` varchar(32),	`precinct_abbrv` varchar(32),	`precinct_desc` varchar(32),	`municipality_abbrv` varchar(32),	`municipality_desc` varchar(32),	`ward_abbrv` varchar(32),	`ward_desc` varchar(32),	`cong_dist_abbrv` varchar(32),	`super_court_abbrv` varchar(32),	`judic_dist_abbrv` varchar(32),	`nc_senate_abbrv` varchar(32),	`nc_house_abbrv` varchar(32),	`county_commiss_abbrv` varchar(32),	`county_commiss_desc` varchar(32),	`township_abbrv` varchar(32),	`township_desc` varchar(32),	`school_dist_abbrv` varchar(32),	`school_dist_desc` varchar(32),	`fire_dist_abbrv` varchar(32),	`fire_dist_desc` varchar(32),	`water_dist_abbrv` varchar(32),	`water_dist_desc` varchar(32),	`sewer_dist_abbrv` varchar(32),	`sewer_dist_desc` varchar(32),	`sanit_dist_abbrv` varchar(32),	`sanit_dist_desc` varchar(32),	`rescue_dist_abbrv` varchar(32),	`rescue_dist_desc` varchar(32),	`munic_dist_abbrv` varchar(32),	`munic_dist_desc` varchar(32),	`dist_1_abbrv` varchar(32),	`dist_1_desc` varchar(32),	`dist_2_abbrv` varchar(32),	`dist_2_desc` varchar(32),	`confidential_ind` varchar(32),	`age` varchar(32),	`ncid` varchar(32),	`vtd_abbrv` varchar(32),	`vtd_desc` varchar(32) );
-- LOAD DATA local INFILE '/home/kevin/Downloads/NCVoters/ncvoter_Statewide.txt' INTO TABLE voters FIELDS TERMINATED BY '	' enclosed by '"'  IGNORE 1 LINES ;
-- select * from voters where county_desc like 'Franklin' limit 100;
-- select distinct county_desc from voters
-- drop table voters;
-- select count(*) from voters where precinct_abbrv = 19-17 and party_cd in ('UNA', 'Dem')
select * from voters limit 20