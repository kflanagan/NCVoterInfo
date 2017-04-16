use NCVoters;
-- Data source  http://msweb03.co.wake.nc.us/bordelec/downloads/data/vrdb.zip
-- On Linux host, with gnumeric installed, ssconvert the xlsx to a csv that gives you vrdb.csv for the load of data
-- create table WakeVoters (`county_name` varchar(16),`ReportDate` varchar(10) ,`voter_reg_num` int ,`status_lbl` varchar(6),`last_name` varchar(16),`first_name` varchar(12),`middle_name` varchar(12),`name_suffix_lbl` varchar(12),`house_num` int,`half_code`  varchar(12),`street_dir_lbl`  varchar(12),`street_name`  varchar(16),`street_type_lbl`  varchar(12),`street_suffix_lbl`  varchar(12),`unit_designator` varchar(12),`unit_num_str` varchar(12),`city` varchar(12),`state` varchar(12),`zip`  varchar(12),`mail_addr1`  varchar(32),`mail_addr2`  varchar(32),`mail_addr3`  varchar(32),`mail_addr4`  varchar(32),`mail_city`  varchar(12),`mail_state`  varchar(12),`mail_zip` varchar(12),`race_lbl` varchar(12),`party_lbl` varchar(12),`gender_lbl` varchar(12),`registration_dt` varchar(12),`eoy_age` varchar(12),`precinct_lbl` varchar(12),`municipality_lbl` varchar(12),`ward_lbl` varchar(12),`congressional_district_lbl` varchar(12),`superior_court_lbl` varchar(12),`judicial_district_lbl` varchar(12),`nc_senate_lbl` varchar(12),`nc_house_lbl` varchar(12),`county_commissioner_lbl` varchar(12),`school_lbl` varchar(12),`prosecutorial_lbl` varchar(12),`voting_district_lbl` varchar(12),`05/04/2010` varchar(1),`06/22/2010` varchar(1),`11/02/2010`varchar(1),`10/11/2011`varchar(1),`11/08/2011`varchar(1),`05/08/2012`varchar(1),`07/17/2012`varchar(1),`11/06/2012`varchar(1),`03/12/2013`varchar(1),`10/08/2013`varchar(1),`11/05/2013`varchar(1),`05/06/2014`varchar(1),`07/15/2014`varchar(1),`11/04/2014`varchar(1),`10/06/2015` varchar(1),`11/03/2015` varchar(1),`03/15/2016` varchar(1),`06/07/2016` varchar(1));
-- load data local infile '/home/kevin/Downloads/WakeVoter/vrdb.csv' INTO table WakeVoters fields terminated by ',' ignore 1 lines ;
-- select * from voters where first_name like 'bob' and last_name like 'smith' limit 10;
-- select count(*) from voters where precinct_lbl = 19-17 -- and party_lbl in ('UNA', 'Dem')
-- select count(*) from voters where precinct_lbl = 19-17 and party_lbl = 'UNA';
-- select count(*) from voters where precinct_lbl = 19-17 and party_lbl = 'REP';
-- select count(*) from voters where precinct_lbl = 19-17 and party_lbl = 'DEM';
-- SELECT * FROM voters where county_id = 92 and precinct_abbrv = 19-13;
select * from WakeVoters where precinct_lbl = '19-13' and party_lbl = 'DEM'
-- SELECT party_lbl, COUNT(*) FROM voters where party_lbl = 'DEM' or party_lbl = 'REP' or party_lbl = 'UNA' or party_lbl = 'Lib' GROUP BY party_lbl order by count(*) DESC;
-- drop table voters;
