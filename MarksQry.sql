-- select * from tblExamMarks
-- select * from tblExamMaster
-- select * from tblSubjectMaster

--update tblExamMarks set 
--ExamID=95  -- PT2
--where classID=255 
--AND ExamID=99  -- PT3
-- AND subjectID = 222


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
--WHERE studentID=48515
--WHERE className='IX A' 
==AND SubjectName='Computer'
--AND ExamID=86

