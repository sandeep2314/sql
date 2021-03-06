-- select * from tblSubjectMaster
-- select * from tblExamMarks
-- select * from tblClassMaster
-- select * from tblSUbjectGroupMaster

DECLARE @UID as Integer

-- Little Angels School
--SET @UID = 12 

-- DPS Public School Bijnor
SET @UID = 36



DELETE FROM tblSUbjectGroupMaster



INSERT INTO tblSUbjectGroupMaster(SubjectGroupName, SubjectGroupType, userID, Fyear) VALUES('Scholastic', 'Marks', @UID, 2014)
INSERT INTO tblSUbjectGroupMaster(SubjectGroupName, SubjectGroupType, userID, Fyear) VALUES('CoScholastic', 'Grade', @UID, 2014)
INSERT INTO tblSUbjectGroupMaster(SubjectGroupName, SubjectGroupType, userID, Fyear) VALUES('Discipline', 'Grade', @UID, 2014)
INSERT INTO tblSUbjectGroupMaster(SubjectGroupName, SubjectGroupType, userID, Fyear) VALUES('Remarks', 'Grade', @UID, 2014)
INSERT INTO tblSUbjectGroupMaster(SubjectGroupName, SubjectGroupType, userID, Fyear) VALUES('Physical', 'Grade', @UID, 2014)





DECLARE @Scholastic_SubjectGroupMasterId as INteger
DECLARE @CoScholastic_SubjectGroupMasterId as INteger
DECLARE @Discipline_SubjectGroupMasterId as INteger

-- select * from tblSubjectGroupMaster

SELECT @Scholastic_SubjectGroupMasterId = subjectGroupMasterID 
FROM tblSubjectGroupMaster 
WHERE subjectGroupName='Scholastic'

SELECT @CoScholastic_SubjectGroupMasterId = subjectGroupMasterID 
FROM tblSubjectGroupMaster 
WHERE SUbjectGroupName='CoScholastic'

SELECT @Discipline_SubjectGroupMasterId = subjectGroupMasterID 
FROM tblSubjectGroupMaster 
WHERE SUbjectGroupName='Discipline'



DELETE FROM tblSUbjectMaster




/****** Object:  Table [dbo].[tblSubjectMaster]    Script Date: 02/11/2019 19:09:53 ******/

INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES (N'English', N'01', @Scholastic_SubjectGroupMasterId, 0, 0, 1, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Hindi', N'02', @Scholastic_SubjectGroupMasterId, 0, 0, 2, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Social studies', N'087', @Scholastic_SubjectGroupMasterId, 0, 0, 5, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Home Science', N'064', @Scholastic_SubjectGroupMasterId, 0, 0, 7, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Drawing', N'08', @CoScholastic_SubjectGroupMasterId, 0, 0, 49, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Science', N'043', @Scholastic_SubjectGroupMasterId, 0, 0, 3, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Maths', N'043', @Scholastic_SubjectGroupMasterId, 0, 0, 4, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'G.K.', N'00', @Scholastic_SubjectGroupMasterId, 0, 0, 9, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'EVS', N'10', @Scholastic_SubjectGroupMasterId, 0, 0, 10, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Computer', N'11', @Scholastic_SubjectGroupMasterId, 0, 0, 11, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Sociology', N'12', @Scholastic_SubjectGroupMasterId, 0, 0, 12, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Foundation of I.T.', N'13', @Scholastic_SubjectGroupMasterId, 143, 0, 13, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Physics', N'14', 14, 148, 0, @Scholastic_SubjectGroupMasterId, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Chemistry', N'15', @Scholastic_SubjectGroupMasterId, 148, 0, 15, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Biology', N'16', @Scholastic_SubjectGroupMasterId, 0, 0, @Discipline_SubjectGroupMasterId,@UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Physical Education', N'17', @Scholastic_SubjectGroupMasterId, 0, 0, 17, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Information Practice', N'18', @Scholastic_SubjectGroupMasterId, 148, 0, 18, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Computer Science', N'19', @Scholastic_SubjectGroupMasterId, 0, 0, 19, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Punjabi', N'20', @Scholastic_SubjectGroupMasterId, 0, 0, 20, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Sanskrit', N'21', @Scholastic_SubjectGroupMasterId, 0, 0, 21, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Accountancy', N'22', @Scholastic_SubjectGroupMasterId, 0, 0, 22, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES (N'Bussiness Studies', N'23', @Scholastic_SubjectGroupMasterId, 0, 0, 23, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES (N'Economics', N'24', @Scholastic_SubjectGroupMasterId, 0, 0, 24, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES (N'Political Science', N'25', @Scholastic_SubjectGroupMasterId, 0, 0, 25, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES (N'History', N'26', @Scholastic_SubjectGroupMasterId, 0, 0, 26, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES (N'Fine Arts', N'049', @Scholastic_SubjectGroupMasterId, 0, 0, 49, @UID, 2014)

INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Punctuality', N'Punctuality', @CoScholastic_SubjectGroupMasterId, 0, 0, 170, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Creativity', N'Creativity', @CoScholastic_SubjectGroupMasterId, 0, 0, 180, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Concern for Others', N'Concern for Others', @CoScholastic_SubjectGroupMasterId, 0, 0, 190, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Personal Hygiene', N'Personal Hygiene', @Discipline_SubjectGroupMasterId,0, 0, 200, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Sociability', N'Sociability', @CoScholastic_SubjectGroupMasterId, 0, 0, 210, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Initiative', N'Initiative', @CoScholastic_SubjectGroupMasterId, 0, 0, 220, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Attendance', N'Attendance', @Discipline_SubjectGroupMasterId,0, 0, 230, @UID, 2014)
INSERT [dbo].[tblSubjectMaster] ( [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear]) VALUES ( N'Promoted to Class', N'Promoted to Class', @Discipline_SubjectGroupMasterId,0, 0, 500, @UID, 2014)


UPDATE tblSubjectMaster SET SubjectCOde=SubjectName

go
