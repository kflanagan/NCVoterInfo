use NCVoters;
select first_name, last_name, party_cd, precinct_abbrv, mail_addr1, mail_city from voters where county_desc like '%wake%' and last_name like '%flanagan%';
