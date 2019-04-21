use NCVoters;
select v.first_name as 'First Name', v.last_name as 'Last Name',
v.mail_addr1 as 'Street' v.county_desc as 'County';
v.voter_reg_num as 'Registration Number' VoterHistoryWake.voted_party_desc as 'Voted Party'
VoterHistoryWake.election_desc as 'Election Desc' VoterHistoryWake.Election as 'Election Date'
VoterHistoryWake.registr_dt as 'Registration Date'

from RegVoters Reg

left JOIN Reg.voters v on v.voter_reg_num = VoterHistoryWake.voter_reg_num

where 1 = 1
and county_desc like '%wake%' and last_name like '%flanagan%'
and first_name like '%kevin%'



select first_name, last_name, order_date, order_amount
from customers c
left join orders o
on c.customer_id = o.customer_id
where order_date is NULL

--------------
SELECT first_name as 'First Name', last_name as 'Last Name', mail_addr1 as 'Street',
w.voter_reg_num as 'Registration', election_desc as 'Election Date', registr_dt as 'Registration Date'

from VoterHistoryWake w
Left JOIN RegVoters r
on w.voter_reg_num = r.voter_reg_num

where 1 = 1
and first_name like '%kevin%'
and last_name like '%flanagan%'
