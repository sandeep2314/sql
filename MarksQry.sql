-- select * from tblExamMarks
-- select * from tblExamMaster
-- select * from tblSubjectMaster



--UPDATE tblSubjectMaster set SubjectName = UPPER(subjectName)

--select studentID
--, Marksobtained 
--, replace(Marksobtained, '.','')
--from tblExamMarks 
----where classID=246
--where MarksObtained like '%.00'


--Update tblExamMarks 
--SET Marksobtained = replace(Marksobtained, '.','')
----where classID=246
--where MarksObtained like '%.00'


--update tblExamMarks set 
--ExamID=192
--where classID=51 
--AND ExamID=190
--AND subjectID = 248
--Update tblExamMarks SET ExamID=95 where ExamId=99
--and SubjectID = 222 and ClassID = 525

--BEGIN TRANSaction
--commit 
--rollback

--update tblExamMarks set 
--MarksObtained=MarksObtained * 2
--where classID=51 
--AND ExamID IN (194,195, 196, 198)







select 
StudentID
, studentName
, em.classID
, ClassName
, SubjectID 
, SubjectName
, ExamId
, ExamName
, ExamCode
, MarksObtained
, MaxMarks
FROM tblExamMarks em
LEFT OUTER JOIN tblStudentMaster s ON s.studentMasterID=em.studentID
LEFT OUTER JOIN tblClassMaster c ON c.classMasterID = em.classID
LEFT OUTER JOIN tblExamMaster e ON e.ExamMasterID = em.ExamId
LEFT OUTER JOIN tblSubjectMaster sb ON sb.subjectMasterID=em.subjectID
WHERE studentID=49052
--WHERE className='XI COMMERCE' 
--AND SubjectName='english'
--AND ExamID=20

