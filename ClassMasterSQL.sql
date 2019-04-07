-- select * from tblUserINfo
--select * from tblExamMarks

--delete from tblExamMarks
--select * from tblTerm
-- select * from tblExamMaster
-- Select * from tblUserInfo
-- select * from tblClassMaster

--BEGIN TRANSACTION 

DECLARE @UID Integer

-- White HAll 
SET @UID = 36

DECLARE @cOrder as INTEGER
SET @cOrder = 200

DELETE FROM TBLClassMaster

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('Nursery', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('LKG', @cOrder+ 10,  @UID, 2014)


SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('UKG', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('I A', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('I B', @cOrder+ 10,  @UID, 2014)


SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('I C', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('II A', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('II B', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('II C', @cOrder+ 10,  @UID, 2014)


SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('III A', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('III B', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('III C', @cOrder+ 10,  @UID, 2014)


SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('IV A', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('IV B', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('IV C', @cOrder+ 10,  @UID, 2014)


SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('V A', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('V B', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('V C', @cOrder+ 10,  @UID, 2014)




go