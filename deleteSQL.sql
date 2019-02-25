


DECLARE @UID integer


SET @UID=15



delete from tblSMSSent

--select * from tblUserInfo where UserId NOT IN (@UID) 

delete from tblStudentMaster where UserId NOT IN (@UID) 

delete from tblAttendance where UserId NOT IN (@UID) 

delete from tblClassMaster where UserId NOT IN (@UID)

delete from tblExamMaster where UserId NOT IN (@UID) 
delete from tblSubjectMaster where UserId NOT IN (@UID) 
delete from tblExamMarks where UserId NOT IN (@UID) 

--delete from tblSubUser where UserId NOT IN (@UID) 


