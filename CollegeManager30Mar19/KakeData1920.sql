USE SchoolDB1920
go




INSERT into tblPerson (tid, pid, UserID, FirstName, MiddleName, LastName, Company
, Address, City, phone1, dept, personType, PersonImage
, dob
, AdharNO, Caste, Category, Religion
, state, country, pin, admissionNo, RegistrationNo, code1, code2, phone2, remarks
, dname, purpose, mother, boardsRollNo, whomToMeet
)
SELECT tid, pid, UserID, FirstName, MiddleName, LastName, Company
, Address, City, phone1, dept, personType, PersonImage
, dob
, AdharNO, Caste, Category, Religion
, state, country, pin, admissionNo, RegistrationNo, code1, code2, phone2, remarks
, dname, purpose, mother, boardsRollNo, whomToMeet
from SchoolDBTJ1819.dbo.tblPerson p2
WHERE p2.tid IN (SELECT MAX(tid) FROM SchoolDBTJ1819.dbo.tblPerson p3 GROUP BY p3.pid)
AND p2.personType = 2
go

--update tblPerson set state = '', country='', pin='', admissionNo='', RegistrationNo='', code1=''
--, code2='', phone2='', remarks='', dname='', purpose='', mother='', boardsrollNo='', whomToMeet=''
go

update tblPerson set Arrival='1901-01-01 10:10:00.000'
go

update tblPerson set opid=998
go


UPDATE tblGetID SET tid = (select tid from SchoolDBTJ1819.dbo.tblGetID)
GO

UPDATE tblGetID SET pid = (select pid from SchoolDBTJ1819.dbo.tblGetID)
GO

UPDATE tblGetID SET cid = (select cid from SchoolDBTJ1819.dbo.tblGetID)
GO

UPDATE tblGetID SET gid = (select gid from SchoolDBTJ1819.dbo.tblGetID)
GO

UPDATE tblGetID SET rid = (select rid from SchoolDBTJ1819.dbo.tblGetID)
GO


INSERT INTO tblDiscount(tid, DiscountHead, [DateTime], pid, DiscountPercent) 
SELECT tid, DiscountHead, [DateTime], pid, DiscountPercent FROM SchoolDBTJ1819.dbo.tblDiscount
go


--state, country, pin. admissionNo, RegistrationNo, code1, code2, phone2, remarks
--dname, purpose, mother, boardsRollNo, whomToMeet


--state, country, pin. admissionNo, RegistrationNo, code1, code2, phone2, remarks
--dname, purpose, mother, boardsRollNo, whomToMeet


UPDATE tblPerson 
set state = p2.state 
from SchoolDBTJ1819.dbo.tblPerson p2
WHERE tblPerson.pid = p2.pid

delete from tblRoute
go

INSERT INTO tblRoute(RouteName, RouteFee, VehicleNo)
select RouteName, RouteFee, VehicleNo from SchoolDBTJ1819.dbo.tblRoute
go

UPDATE tblPerson 
set RouteId = p2.RouteId 
from SchoolDBTJ1819.dbo.tblPerson p2
WHERE tblPerson.pid = p2.pid
