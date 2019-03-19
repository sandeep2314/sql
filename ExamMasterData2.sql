--use AccountsDB_LittleAngels1819

--use GuruNanakDB

-- select * from tblUserINfo
--select * from tblExamMarks

--delete from tblExamMarks
--select * from tblTerm
-- select * from tblExamMaster

--BEGIN TRANSACTION 

DECLARE @UID Integer


-- Little Angels School
--SET @UID = 12 

-- HSM
SET @UID = 5 


-- Guru Nanak Kashipur
--SET @UID = 8 


DELETE FROM tblTERM


INSERT INTO tblTerm (TermName, TermSTartDate, TermEndDate, USERID, Fyear) VALUES('Term 1', '1/APR/18', '30/Sep/18', @UID, 2014)
INSERT INTO tblTerm (TermName, TermSTartDate, TermEndDate, USERID, Fyear) VALUES('Term 2', '1/OCT/18', '31/Mar/19', @UID, 2014)


DECLARE @classID as INTEGER
DECLARE @sectionID as INTEGER
--ALL classes
SET @classID = 0
SET @sectionID=0

DECLARE @term1ID  INTEGER
DECLARE @term2ID  INTEGER

SELECT @term1ID = termid from tblTerm where TermName='Term 1'
SELECT @term2ID = termid from tblTerm where TermName='Term 2'

DELETE FROM tblExamMaster

INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) VALUES (CAST(0x0000A9EC00000000 AS DateTime), N'PT1', N'Periodic Test', @term1ID, 0, 0, N'10', N'4', 0, NULL, 100, @UID, 2014)

INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) VALUES (CAST(0x0000A9EC00000000 AS DateTime), N'PT2', N'Periodic Test', @term1ID, 0, 0, N'10', N'4', 0, NULL, 200, @UID, 2014)
INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) VALUES (CAST(0x0000A9EC00000000 AS DateTime), N'NB1', N'Note Book', @term1ID, 0, 0, N'5', N'2', 0, NULL, 300, @UID, 2014)
INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) VALUES (CAST(0x0000A9EC00000000 AS DateTime), N'Half Yearly', N'Half Yearly', @term1ID, 0, 0, N'70', N'24', 0, NULL, 700, @UID, 2014 )
INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) VALUES (CAST(0x0000A9EC00000000 AS DateTime), N'SEA1', N'SEA', @term1ID, 0, 0, N'5', N'2', 0, NULL, 400, @UID, 2014)
INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) VALUES (CAST(0x0000A9EC00000000 AS DateTime), N'PT3', N'Periodic Test', @term2ID, 0, 0, N'10', N'4', 0, NULL, 600, @UID, 2014)
INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) VALUES (CAST(0x0000A9EC00000000 AS DateTime), N'PT4', N'Periodic Test', @term2ID, 0, 0, N'10', N'4', 0, NULL, 700, @UID, 2014)
INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) VALUES (CAST(0x0000A9EC00000000 AS DateTime), N'SEA2', N'SEA', @term2ID, 0, 0, N'5', N'2', 0, NULL, 700, @UID, 2014)
INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) VALUES (CAST(0x0000A9EC00000000 AS DateTime), N'NB2', N'Note Book', @term2ID, 0, 0, N'5', N'2', 0, NULL, 700, @UID, 2014)
INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) VALUES (CAST(0x0000A9EC00000000 AS DateTime), N'Yearly', N'Annual', @term2ID, 0, 0, N'70', N'24', 0, NULL, 1000, @UID, 2014)
INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks]
, [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) 
VALUES (CAST(0x0000A9EC00000000 AS DateTime), N'PT21', N'PT21', @term2ID, 0, 0, N'20', N'24', 0, NULL, 4000, @UID, 2014)



INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode]
, [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks]
, [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) 
VALUES (CAST(0x0000A9EC00000000 AS DateTime)
, N'PT21', N'PT2(20)', @term2ID, 0
, 0, N'20', N'24', 0, NULL, 4000, @UID, 2014)


INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode]
, [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks]
, [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) 
VALUES (CAST(0x0000A9EC00000000 AS DateTime)
, N'PT22', N'ORAL2(20)', @term2ID, 0
, 0, N'20', N'24', 0, NULL, 4100, @UID, 2014)


INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode]
, [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks]
, [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) 
VALUES (CAST(0x0000A9EC00000000 AS DateTime)
, N'PT23', N'HalfYearly(100)', @term2ID, 0
, 0, N'100', N'32', 0, NULL, 4200, @UID, 2014)


INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode]
, [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks]
, [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) 
VALUES (CAST(0x0000A9EC00000000 AS DateTime)
, N'PT24', N'Yearly(100)', @term2ID, 0
, 0, N'100', N'32', 0, NULL, 4300, @UID, 2014)




INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode]
, [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks]
, [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) 
VALUES (CAST(0x0000A9EC00000000 AS DateTime)
, N'PT25', N'PT1(25)', @term1ID, 0
, 0, N'25', N'32', 0, NULL, 5300, @UID, 2014)

INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode]
, [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks]
, [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) 
VALUES (CAST(0x0000A9EC00000000 AS DateTime)
, N'PT26', N'PT2(25)', @term1ID, 0
, 0, N'25', N'32', 0, NULL, 5400, @UID, 2014)

INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode]
, [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks]
, [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) 
VALUES (CAST(0x0000A9EC00000000 AS DateTime)
, N'PT27', N'PT3(25)', @term2ID, 0
, 0, N'25', N'32', 0, NULL, 5500, @UID, 2014)

INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode]
, [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks]
, [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) 
VALUES (CAST(0x0000A9EC00000000 AS DateTime)
, N'PT28', N'PT4(25)', @term2ID, 0
, 0, N'25', N'32', 0, NULL, 5600, @UID, 2014)

INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode]
, [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks]
, [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) 
VALUES (CAST(0x0000A9EC00000000 AS DateTime)
, N'PT29', N'Practical1(20)', @term1ID, 0
, 0, N'20', N'32', 0, NULL, 5700, @UID, 2014)


INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode]
, [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks]
, [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) 
VALUES (CAST(0x0000A9EC00000000 AS DateTime)
, N'PT30', N'Practical2(20)', @term2ID, 0
, 0, N'20', N'32', 0, NULL, 5800, @UID, 2014)

INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode]
, [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks]
, [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) 
VALUES (CAST(0x0000A9EC00000000 AS DateTime)
, N'PT31', N'Practical1(30)', @term1ID, 0
, 0, N'30', N'32', 0, NULL, 5900, @UID, 2014)

INSERT [dbo].[tblExamMaster] ( [ExamDate], [ExamName], [ExamCode]
, [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks]
, [IsFormula], [Formula], [ExamOrder], [UserID], [FYear]) 
VALUES (CAST(0x0000A9EC00000000 AS DateTime)
, N'PT32', N'Practical2(30)', @term2ID, 0
, 0, N'30', N'32', 0, NULL, 6000, @UID, 2014)





go