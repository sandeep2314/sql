-- select * from tblUserINfo
--select * from tblExamMarks

--delete from tblExamMarks
--select * from tblTerm
-- select * from tblExamMaster
-- Select * from tblUserInfo
-- select * from tblClassMaster
-- select * from tblSectionMaster WHERE userID=36
-- DELETE from tblSectionMaster WHERE userID <> 36

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

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('VI A', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('VI B', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('VI C', @cOrder+ 10,  @UID, 2014)


SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('VII A', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('VII B', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('VII C', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('VIII A', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('VIII B', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('VIII C', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('IX A', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('IX B', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('IX C', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('X A', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('X B', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('X C', @cOrder+ 10,  @UID, 2014)


SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('XI A', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('XI B', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('XI C', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('XII A', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('XII B', @cOrder+ 10,  @UID, 2014)

SET @cOrder = @cOrder+ 10
INSERT INTO tblClassMaster (ClassName, ClassOrder, USERID, Fyear) 
VALUES('XII C', @cOrder+ 10,  @UID, 2014)




go