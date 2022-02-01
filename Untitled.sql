select  max(length(A2)) from district; #19
select * from district where length(A2)=19; 
select *, left(A2,4), RIGHT(A2,4), CONCAT(LEFT(A2,4), RIGHT(A2,4)) from district where length(A2)=19 ;
select * from card where issued=980000 and type='junior';
select * from trans where type='VYDAJ' limit 10;
select loan_id, account_id, amount, payments, amount-payments as debt
from loan 
where status='B' and amount-payments>1000;
select max(amount), min(amount) from trans where amount<>0; 
select*, concat('19', LEFT(date,2)) from account;
# convert ... Date Format
# substring_index()
select *, date_format(convert(a.date,Date),'%d-%d-%Y')as opendate from account as a ;
#date is a astring with empty time
select convert(substring_Index(issued,' ',1),Date) as issuedate from card;

# case statement to replace ABCD with business label:
Create view loan_statuses as 
select loan_id, account_id, 
case 
when status='A' then 'good - finished'
when status= 'B' then 'bad - unpaid'
when status= 'C' then 'good - running'
else 'default-running'
end
as status_description
from loan
where amount is not null; 

