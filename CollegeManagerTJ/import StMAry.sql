/**



select * from tblPerson2
select * from tblPerson

Absent ................done
Absent& New Adm
	1 Absent & New Type...done
	2 Asent VII-XII..done
	3 St Mary Bijnor...done
II-IV....Done
Ist.....Done
VII-XII Absent...Done
VII-XII....Done
VII-XII Cheenu...Done
V-VI...Done
staff 

Ab-1....Done
Ab-2
Holy + St Mary
L-U
Nursery



select dept,  * from tblPerson order by entertime
delete from tbl
Person where entertime > '2013-08-21 0:0:05.000'

delete from tblperson
select * from tblPerson
update tblPerson set pid = pid + 2000

update t1 set t1.tid = t2.tid
From tblPerson t1
INNER JOIN 
(
select  firstName, Company, dept, Phone1, Phone2, (row_number() over(order by tid)) as tid 
from tblPerson
) t2 ON t2.firstName = t1.firstName
and t2.company = t1.company
and t2.dept = t1.dept
and t2.phone1 = t1.phone1
and t2.phone2 = t1.phone2

update tblPerson set tid = tid + 4000
update tblPerson set pid = pid + 4000

**/



delete from tblPerson2 where tid is NULL
go

delete from tblPerson2 where tid NOT IN 
(select MAX(tid) FROM tblPerson2 Group By pid)
go


UPDATE tblperson2 set tid = tid + 
(
SELECT  isNull(MAX(tid), 1)MaxTid FROM tblPerson 
)
go

update tblPerson2 set pid = CAST(pid as int) +
(SELECT  
 isNull(MAX(CAST(pid as INT)), 1) MaxPid
FROM tblPerson)
GO




--INSERT INTO tblPerson SELECT * from tblPerson2 where FirstNAme NOT IN ('Admin','Principal')
GO
--drop table tblPerson2
Go


INSERT into tblPerson (tid, pid, UserID, FirstName, MiddleName, LastName, Company
, Address, City, phone1, dept, personType, PersonImage
, dob
, state, country, pin, admissionNo, RegistrationNo, code1, code2, phone2, remarks
, dname, purpose, mother, boardsRollNo, whomToMeet
)
SELECT tid, pid, UserID, FirstName, MiddleName, LastName, Company
, Address, City, phone1, dept, personType, PersonImage
, dob 
, state, country, pin, admissionNo, RegistrationNo, code1, code2, phone2, remarks
, dname, purpose, mother, boardsRollNo, whomToMeet
from tblPerson2 p2
go

drop table tblPerson2
Go
