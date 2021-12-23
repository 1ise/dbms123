         insurance
***** 1st QUERY *****
 update Participated
 set Damageamount=25000
 where Regno='KA04Q2301' and Reportno=12;
 
 
 
 ***** 2ND QUERY *****
 insert into Person values ('6666','Bunty','Jayanagar');



***** 3RD QUERY *****
select count(*) from Accident where Accdate like '__-___-02';


***** 4TH QUERY *****
select count(*) from Car C,Participated P
 where C.Regno=P.Regno and C.Model='Ford';
 
       
       order
 select C.Cname,count(CO.orderno),
Avg(CO.Orderamount) from Customer C,corder CO
where C.custno=CO.custno 
group by C.Cname,CO.custno;

select orderno,warehouseno 
from shipment
where warehouseno in 
(select warehouseno 
from warehouse
where city='New York');

delete from order_item where itemno=102;

      
      
       student
3)))
 insert into text values(2953,'dbms','penguin','elamsri');
 insert into bookadoption values(11,5,2953);
4)))
select distinct(c.cno), t.book_isbn,t.book_title
from course c,text t,bookadoption b
where c.cno = b.cno and b.book_isbn = t.book_isbn and c.dept='CS'
and c.cno in (select cno
from bookadoption
group by cno
having count(cno)>=2)
order by c.cname;

5)) select c.dept
 from course c
 where c.cno = any (select b.cno
 from bookadoption b
 where b.book_isbn=any(select t.book_isbn
 from text t
 where publisher='pearson'));
 
 
      book
select a.aname from author a,catalog c,order_details o where
a.authorid=c.authorid and
c.bookid=o.bookid and
o.quantity in(select max(quantity) from order_details);

update catalog
set price=price*1.10
where publisherid in(
select publisherid from publisher where
pname='sapna');
 
 select C.Authorid,A.Aname
 from Catalog C,Author A
 where A.Authorid=C.Authorid and C.Year>2000 and C.Price>(Select
Avg(Price) from Catalog)
 group by C.Authorid,A.Aname
 having count(C.Authorid)>=2;
 
 
      bank
 1st query

SELECT customername
FROM depositor d,accnt a
WHERE d.accountno=a.accountno
AND a.branchname='Jayanagar'
GROUP BY d.customername
HAVING COUNT(d.customername)>=1;

2nd query

SELECT d.customername
FROM accnt a,branch b,depositor d
WHERE b.branchname=a.branchname AND
a.accountno=d.accountno AND
b.branchcity='Delhi'
GROUP BY d.customername
HAVING COUNT(distinct b.branchname)=(
SELECT COUNT(branchname)
FROM branch
WHERE branchcity='Delhi');

3rd query

DELETE FROM accnt WHERE 
branchname IN(SELECT branchname FROM 
branch WHERE branchcity='DELHI');
 
