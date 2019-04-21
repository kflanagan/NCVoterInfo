use NCVoters;
SELECT first_name as 'First Name', last_name as 'Last Name', mail_addr1 as 'Street',
w.voter_reg_num as 'Registration', age AS 'Birth year', birth_state AS 'Birth State' ,
election_desc as 'Election Date', voting_method AS 'Voting method' , voted_party_desc AS 'Party',
vtd_label AS 'Precienct',
registr_dt as 'Registration Date'

from VoterHistoryWake w
Left JOIN RegVoters r
on w.voter_reg_num = r.voter_reg_num

where 1 = 1
and first_name like '%David%'
and last_name LIKE 'Cox%'
AND birth_state NOT LIKE '%nc%'
