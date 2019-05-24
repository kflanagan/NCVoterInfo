use NCVoters;
SELECT r.first_name as 'First Name', r.last_name as 'Last Name', mail_addr1 as 'Street',
r.voter_reg_num as 'Registration' 

-- from VoterHistoryWake w
-- Left JOIN RegVoters r
-- on w.voter_reg_num = r.voter_reg_num

from RegVoters r
Left JOIN VoterHistoryWake w
on r.voter_reg_num = w.voter_reg_num 


where 1 = 1
and first_name like '%Kevin%'
and last_name LIKE 'Flanagan%'
-- AND birth_place NOT LIKE '%nc%'
