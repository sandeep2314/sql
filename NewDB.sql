USE [master]
GO
/****** Object:  Database [DPSBijnorDB1819]    Script Date: 03/22/2019 17:03:14 ******/
CREATE DATABASE [DPSBijnorDB1819] ON  PRIMARY 
( NAME = N'AccountsDB', FILENAME = N'c:\DPSBijnor\DATA1819\DPSBijnor1819.mdf' , SIZE = 4992KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AccountsDB_log', FILENAME = N'c:\DPSBijnor\DATA1819\DPSBijnor1819_1.LDF' , SIZE = 768KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [DPSBijnorDB1819] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DPSBijnorDB1819].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DPSBijnorDB1819] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DPSBijnorDB1819] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DPSBijnorDB1819] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DPSBijnorDB1819] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DPSBijnorDB1819] SET ARITHABORT OFF
GO
ALTER DATABASE [DPSBijnorDB1819] SET AUTO_CLOSE ON
GO
ALTER DATABASE [DPSBijnorDB1819] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DPSBijnorDB1819] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DPSBijnorDB1819] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DPSBijnorDB1819] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DPSBijnorDB1819] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DPSBijnorDB1819] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DPSBijnorDB1819] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DPSBijnorDB1819] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DPSBijnorDB1819] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DPSBijnorDB1819] SET  DISABLE_BROKER
GO
ALTER DATABASE [DPSBijnorDB1819] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DPSBijnorDB1819] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DPSBijnorDB1819] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DPSBijnorDB1819] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DPSBijnorDB1819] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DPSBijnorDB1819] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DPSBijnorDB1819] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DPSBijnorDB1819] SET  READ_WRITE
GO
ALTER DATABASE [DPSBijnorDB1819] SET RECOVERY SIMPLE
GO
ALTER DATABASE [DPSBijnorDB1819] SET  MULTI_USER
GO
ALTER DATABASE [DPSBijnorDB1819] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DPSBijnorDB1819] SET DB_CHAINING OFF
GO
USE [DPSBijnorDB1819]
GO
/****** Object:  Table [dbo].[tblUtil]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUtil](
	[UtilId] [int] IDENTITY(1,1) NOT NULL,
	[ColName] [varchar](100) NOT NULL,
	[ColValue] [varchar](100) NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UtilId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUserPermissions]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserPermissions](
	[UserPermissionId] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[SubUserId] [int] NULL,
	[PermissionId] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserPermissionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblUserPermissions] ON
INSERT [dbo].[tblUserPermissions] ([UserPermissionId], [UserID], [SubUserId], [PermissionId], [CreatedAt]) VALUES (1, 4, NULL, 1, CAST(0x0000A43B017F91BA AS DateTime))
INSERT [dbo].[tblUserPermissions] ([UserPermissionId], [UserID], [SubUserId], [PermissionId], [CreatedAt]) VALUES (2, 4, NULL, 2, CAST(0x0000A43B017F921F AS DateTime))
INSERT [dbo].[tblUserPermissions] ([UserPermissionId], [UserID], [SubUserId], [PermissionId], [CreatedAt]) VALUES (3, 4, NULL, 3, CAST(0x0000A43B017F921F AS DateTime))
INSERT [dbo].[tblUserPermissions] ([UserPermissionId], [UserID], [SubUserId], [PermissionId], [CreatedAt]) VALUES (4, 4, NULL, 4, CAST(0x0000A43B017F921F AS DateTime))
INSERT [dbo].[tblUserPermissions] ([UserPermissionId], [UserID], [SubUserId], [PermissionId], [CreatedAt]) VALUES (5, 4, NULL, 5, CAST(0x0000A43B017F921F AS DateTime))
INSERT [dbo].[tblUserPermissions] ([UserPermissionId], [UserID], [SubUserId], [PermissionId], [CreatedAt]) VALUES (6, 4, NULL, 6, CAST(0x0000A43B017F921F AS DateTime))
INSERT [dbo].[tblUserPermissions] ([UserPermissionId], [UserID], [SubUserId], [PermissionId], [CreatedAt]) VALUES (7, 4, NULL, 7, CAST(0x0000A43B017F921F AS DateTime))
SET IDENTITY_INSERT [dbo].[tblUserPermissions] OFF
/****** Object:  Table [dbo].[tblUserInfo]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUserInfo](
	[UserInfoId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](200) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[UserPassword] [varchar](50) NOT NULL,
	[CreationDate] [datetime] NULL,
	[AmountPaid] [decimal](20, 4) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Address] [varchar](200) NULL,
	[City] [varchar](100) NULL,
	[Country] [varchar](100) NULL,
	[Phone] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[TinNumber] [varchar](50) NULL,
	[SalesTaxNumber] [varchar](50) NULL,
	[CSTNumber] [varchar](50) NULL,
	[IsActive] [varchar](1) NULL,
	[UserType] [int] NULL,
	[Remarks] [varchar](200) NULL,
	[NumberOfSubusers] [int] NOT NULL,
	[FYear] [datetime] NULL,
	[CreatedAt] [datetime] NULL,
	[SenderID] [varchar](10) NULL,
	[SMSBalance] [bigint] NULL,
	[IsUnicode] [int] NOT NULL,
	[SMSUser] [varchar](50) NULL,
	[SMSPassword] [varchar](50) NULL,
	[SMSDelivery] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserInfoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblUserInfo] ON
SET IDENTITY_INSERT [dbo].[tblUserInfo] OFF
/****** Object:  Table [dbo].[tblUOM]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUOM](
	[UOMId] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [varchar](50) NOT NULL,
	[SubUserId] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UOMId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTerm]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTerm](
	[TermId] [int] IDENTITY(1,1) NOT NULL,
	[TermName] [varchar](200) NULL,
	[TermStartDate] [varchar](20) NULL,
	[TermEndDate] [varchar](20) NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TermId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblTerm] ON
INSERT [dbo].[tblTerm] ([TermId], [TermName], [TermStartDate], [TermEndDate], [UserID], [FYear], [CreatedAt]) VALUES (8, N'Term 1', N'1/APR/18', N'30/Sep/18', 5, 2014, CAST(0x0000A9FE01702A54 AS DateTime))
INSERT [dbo].[tblTerm] ([TermId], [TermName], [TermStartDate], [TermEndDate], [UserID], [FYear], [CreatedAt]) VALUES (9, N'Term 2', N'1/OCT/18', N'31/Mar/19', 5, 2014, CAST(0x0000A9FE01702A54 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblTerm] OFF
/****** Object:  Table [dbo].[tblTeacherSubjects]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTeacherSubjects](
	[TeacherSubjectId] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[SubUserId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TeacherSubjectId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblTeacherSubjects] ON
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (16, 1, 16, 9, CAST(0x0000A52300AD4478 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (17, 1, 16, 11, CAST(0x0000A52300AD4478 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (20, 1, 17, 10, CAST(0x0000A52300B1BECC AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (21, 1, 17, 11, CAST(0x0000A52300B1BECC AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (22, 1, 15, 9, CAST(0x0000A82901293202 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (23, 1, 15, 10, CAST(0x0000A8290129321A AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (67, 35, 40, 65, CAST(0x0000A87F00F53CE4 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (68, 35, 40, 66, CAST(0x0000A87F00F53CE4 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (89, 1, 1, 53, CAST(0x0000A8A90148512B AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (90, 1, 1, 54, CAST(0x0000A8A90148513E AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (91, 1, 1, 55, CAST(0x0000A8A901485155 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (92, 1, 1, 56, CAST(0x0000A8A90148516C AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (93, 1, 1, 57, CAST(0x0000A8A90148517F AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (94, 1, 1, 58, CAST(0x0000A8A901485196 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (95, 1, 1, 59, CAST(0x0000A8A9014851AE AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (96, 1, 1, 60, CAST(0x0000A8A9014851C5 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (97, 1, 1, 61, CAST(0x0000A8A9014851E1 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (98, 1, 1, 63, CAST(0x0000A8A9014851F9 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (99, 1, 1, 67, CAST(0x0000A8A901485210 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (100, 5, 44, 82, CAST(0x0000AA0000D4713A AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (102, 5, 46, 73, CAST(0x0000AA0000D5251C AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (103, 5, 46, 81, CAST(0x0000AA0000D5251C AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (104, 5, 47, 75, CAST(0x0000AA0000D67868 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (105, 5, 47, 80, CAST(0x0000AA0000D67868 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (108, 5, 50, 68, CAST(0x0000AA0000D75146 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (109, 5, 50, 70, CAST(0x0000AA0000D75146 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (110, 5, 50, 74, CAST(0x0000AA0000D75146 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (111, 5, 50, 88, CAST(0x0000AA0000D75146 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (126, 5, 45, 74, CAST(0x0000AA0000DFDD00 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (127, 5, 48, 76, CAST(0x0000AA0000DFFD93 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (128, 5, 49, 68, CAST(0x0000AA0000E01ABA AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (129, 5, 51, 69, CAST(0x0000AA0000E033D9 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (130, 5, 51, 87, CAST(0x0000AA0000E033D9 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (131, 5, 52, 74, CAST(0x0000AA0000E0519F AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (132, 5, 53, 70, CAST(0x0000AA0000E068A8 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (133, 5, 53, 89, CAST(0x0000AA0000E068A8 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (134, 5, 54, 69, CAST(0x0000AA0000E07B7B AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (135, 5, 54, 87, CAST(0x0000AA0000E07B7B AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (136, 5, 55, 73, CAST(0x0000AA0000E08CE0 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (137, 5, 55, 74, CAST(0x0000AA0000E08CE0 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (138, 5, 55, 75, CAST(0x0000AA0000E08CE0 AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (141, 5, 57, 72, CAST(0x0000AA0000E0BD3B AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (142, 5, 58, 83, CAST(0x0000AA0000E0D6FF AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (143, 5, 56, 68, CAST(0x0000AA0000E1162F AS DateTime))
INSERT [dbo].[tblTeacherSubjects] ([TeacherSubjectId], [UserID], [SubUserId], [SubjectId], [CreatedAt]) VALUES (144, 5, 56, 75, CAST(0x0000AA0000E1162F AS DateTime))
SET IDENTITY_INSERT [dbo].[tblTeacherSubjects] OFF
/****** Object:  Table [dbo].[tblTeacherClasses]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTeacherClasses](
	[TeacherClassId] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[SubUserId] [int] NOT NULL,
	[ClassId] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TeacherClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblTeacherClasses] ON
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (1, 1, 4, 1, CAST(0x0000A412017D8F69 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (2, 1, 4, 2, CAST(0x0000A412017D8F6E AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (3, 1, 4, 3, CAST(0x0000A412017D8F6E AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (4, 1, 4, 78, CAST(0x0000A412017D8F6E AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (34, 9, 10, 184, CAST(0x0000A4F70185B8AB AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (35, 9, 10, 176, CAST(0x0000A4F70185B8AB AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (36, 9, 10, 177, CAST(0x0000A4F70185B8AB AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (37, 9, 10, 178, CAST(0x0000A4F70185B8AB AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (38, 9, 10, 179, CAST(0x0000A4F70185B8AB AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (39, 9, 10, 180, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (40, 9, 10, 181, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (41, 9, 10, 173, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (42, 9, 10, 278, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (43, 9, 10, 279, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (44, 9, 10, 131, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (45, 9, 10, 150, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (46, 9, 10, 172, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (47, 9, 10, 277, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (48, 9, 10, 156, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (49, 9, 10, 174, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (50, 9, 10, 175, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (51, 9, 10, 182, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (52, 9, 10, 183, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (53, 9, 10, 191, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (54, 9, 10, 192, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (55, 9, 10, 193, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (56, 9, 10, 194, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (57, 9, 10, 195, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (58, 9, 10, 197, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (59, 9, 10, 198, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (60, 9, 10, 199, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (61, 9, 10, 200, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (62, 9, 10, 201, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (63, 9, 10, 202, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (64, 9, 10, 203, CAST(0x0000A4F70185B8AF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (65, 9, 10, 204, CAST(0x0000A4F70185B8B4 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (66, 9, 10, 205, CAST(0x0000A4F70185B8B4 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (67, 9, 10, 206, CAST(0x0000A4F70185B8B4 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (68, 9, 10, 207, CAST(0x0000A4F70185B8B4 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (69, 9, 10, 208, CAST(0x0000A4F70185B8B4 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (70, 9, 10, 209, CAST(0x0000A4F70185B8B4 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (71, 9, 10, 210, CAST(0x0000A4F70185B8B4 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (72, 9, 10, 211, CAST(0x0000A4F70185B8B4 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (73, 9, 10, 212, CAST(0x0000A4F70185B8B4 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (74, 9, 10, 213, CAST(0x0000A4F70185B8B4 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (75, 9, 10, 214, CAST(0x0000A4F70185B8B4 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (76, 9, 10, 215, CAST(0x0000A4F70185B8B4 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (77, 9, 10, 243, CAST(0x0000A4F70185B8B4 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (78, 9, 10, 244, CAST(0x0000A4F70185B8B4 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (79, 9, 10, 245, CAST(0x0000A4F70185B8B4 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (85, 1, 16, 2, CAST(0x0000A52300AD4473 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (86, 1, 16, 298, CAST(0x0000A52300AD4473 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (89, 1, 17, 79, CAST(0x0000A52300B1BECC AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (90, 1, 17, 298, CAST(0x0000A52300B1BECC AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (91, 1, 15, 2, CAST(0x0000A82901293192 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (92, 1, 15, 79, CAST(0x0000A829012931C5 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (116, 35, 40, 2863, CAST(0x0000A87F00F53CDF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (117, 35, 40, 2864, CAST(0x0000A87F00F53CDF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (118, 35, 40, 2862, CAST(0x0000A87F00F53CDF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (129, 1, 1, 2, CAST(0x0000A8A901485061 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (130, 1, 1, 79, CAST(0x0000A8A901485078 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (131, 1, 1, 298, CAST(0x0000A8A9014850A3 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (132, 1, 1, 78, CAST(0x0000A8A9014850BA AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (133, 1, 1, 185, CAST(0x0000A8A9014850CD AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (134, 1, 1, 349, CAST(0x0000A8A9014850E4 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (135, 1, 1, 348, CAST(0x0000A8A9014850FC AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (136, 5, 6, 2895, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (137, 5, 6, 2897, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (138, 5, 6, 2901, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (139, 5, 6, 242, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (140, 5, 6, 2728, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (141, 5, 6, 2926, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (142, 5, 6, 2780, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (143, 5, 6, 108, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (144, 5, 6, 153, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (145, 5, 6, 154, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (146, 5, 6, 158, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (147, 5, 6, 159, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (148, 5, 6, 155, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (149, 5, 6, 160, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (150, 5, 6, 162, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (151, 5, 6, 163, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (152, 5, 6, 164, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (153, 5, 6, 165, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (154, 5, 6, 166, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (155, 5, 6, 167, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (156, 5, 6, 168, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (157, 5, 6, 169, CAST(0x0000A9FE016EB702 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (158, 5, 43, 2901, CAST(0x0000A9FF00A98879 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (159, 5, 43, 2926, CAST(0x0000A9FF00A98879 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (285, 5, 44, 2728, CAST(0x0000AA0000D4713A AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (286, 5, 44, 165, CAST(0x0000AA0000D4713A AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (287, 5, 44, 166, CAST(0x0000AA0000D4713A AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (288, 5, 44, 167, CAST(0x0000AA0000D4713A AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (289, 5, 44, 168, CAST(0x0000AA0000D4713A AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (293, 5, 46, 2897, CAST(0x0000AA0000D5251C AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (294, 5, 46, 2728, CAST(0x0000AA0000D5251C AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (295, 5, 46, 163, CAST(0x0000AA0000D5251C AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (296, 5, 46, 166, CAST(0x0000AA0000D5251C AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (297, 5, 46, 167, CAST(0x0000AA0000D5251C AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (298, 5, 47, 2895, CAST(0x0000AA0000D67868 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (299, 5, 47, 2728, CAST(0x0000AA0000D67868 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (300, 5, 47, 161, CAST(0x0000AA0000D67868 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (301, 5, 47, 165, CAST(0x0000AA0000D67868 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (302, 5, 47, 166, CAST(0x0000AA0000D67868 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (303, 5, 47, 167, CAST(0x0000AA0000D67868 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (316, 5, 50, 163, CAST(0x0000AA0000D75146 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (317, 5, 50, 165, CAST(0x0000AA0000D75146 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (318, 5, 50, 166, CAST(0x0000AA0000D75146 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (319, 5, 50, 167, CAST(0x0000AA0000D75146 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (320, 5, 50, 169, CAST(0x0000AA0000D75146 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (361, 5, 45, 2897, CAST(0x0000AA0000DFDD00 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (362, 5, 45, 2926, CAST(0x0000AA0000DFDD00 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (363, 5, 45, 167, CAST(0x0000AA0000DFDD00 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (364, 5, 48, 159, CAST(0x0000AA0000DFFD8F AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (365, 5, 48, 155, CAST(0x0000AA0000DFFD8F AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (366, 5, 48, 160, CAST(0x0000AA0000DFFD8F AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (367, 5, 48, 161, CAST(0x0000AA0000DFFD8F AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (368, 5, 48, 162, CAST(0x0000AA0000DFFD8F AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (369, 5, 49, 2728, CAST(0x0000AA0000E01ABA AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (370, 5, 49, 2926, CAST(0x0000AA0000E01ABA AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (371, 5, 49, 164, CAST(0x0000AA0000E01ABA AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (372, 5, 49, 166, CAST(0x0000AA0000E01ABA AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (373, 5, 49, 167, CAST(0x0000AA0000E01ABA AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (374, 5, 49, 168, CAST(0x0000AA0000E01ABA AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (375, 5, 49, 169, CAST(0x0000AA0000E01ABA AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (376, 5, 51, 159, CAST(0x0000AA0000E033D9 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (377, 5, 51, 155, CAST(0x0000AA0000E033D9 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (378, 5, 51, 160, CAST(0x0000AA0000E033D9 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (379, 5, 51, 161, CAST(0x0000AA0000E033D9 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (380, 5, 51, 162, CAST(0x0000AA0000E033D9 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (381, 5, 51, 163, CAST(0x0000AA0000E033D9 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (382, 5, 52, 159, CAST(0x0000AA0000E0519F AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (383, 5, 52, 155, CAST(0x0000AA0000E0519F AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (384, 5, 52, 160, CAST(0x0000AA0000E0519F AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (385, 5, 52, 161, CAST(0x0000AA0000E0519F AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (386, 5, 52, 162, CAST(0x0000AA0000E0519F AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (387, 5, 53, 164, CAST(0x0000AA0000E068A8 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (388, 5, 53, 165, CAST(0x0000AA0000E068A8 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (389, 5, 53, 167, CAST(0x0000AA0000E068A8 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (390, 5, 53, 169, CAST(0x0000AA0000E068A8 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (391, 5, 54, 163, CAST(0x0000AA0000E07B76 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (392, 5, 54, 164, CAST(0x0000AA0000E07B7B AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (393, 5, 54, 165, CAST(0x0000AA0000E07B7B AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (394, 5, 54, 166, CAST(0x0000AA0000E07B7B AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (395, 5, 54, 167, CAST(0x0000AA0000E07B7B AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (396, 5, 55, 164, CAST(0x0000AA0000E08CE0 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (397, 5, 55, 165, CAST(0x0000AA0000E08CE0 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (398, 5, 55, 166, CAST(0x0000AA0000E08CE0 AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (404, 5, 57, 159, CAST(0x0000AA0000E0BD3B AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (405, 5, 57, 155, CAST(0x0000AA0000E0BD3B AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (406, 5, 57, 160, CAST(0x0000AA0000E0BD3B AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (407, 5, 57, 161, CAST(0x0000AA0000E0BD3B AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (408, 5, 57, 162, CAST(0x0000AA0000E0BD3B AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (409, 5, 57, 163, CAST(0x0000AA0000E0BD3B AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (410, 5, 57, 164, CAST(0x0000AA0000E0BD3B AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (411, 5, 57, 165, CAST(0x0000AA0000E0BD3B AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (412, 5, 58, 2728, CAST(0x0000AA0000E0D6FA AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (413, 5, 58, 2926, CAST(0x0000AA0000E0D6FA AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (414, 5, 58, 168, CAST(0x0000AA0000E0D6FA AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (415, 5, 58, 169, CAST(0x0000AA0000E0D6FF AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (416, 5, 56, 159, CAST(0x0000AA0000E1162A AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (417, 5, 56, 160, CAST(0x0000AA0000E1162A AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (418, 5, 56, 161, CAST(0x0000AA0000E1162A AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (419, 5, 56, 162, CAST(0x0000AA0000E1162A AS DateTime))
INSERT [dbo].[tblTeacherClasses] ([TeacherClassId], [UserID], [SubUserId], [ClassId], [CreatedAt]) VALUES (420, 5, 56, 163, CAST(0x0000AA0000E1162F AS DateTime))
SET IDENTITY_INSERT [dbo].[tblTeacherClasses] OFF
/****** Object:  Table [dbo].[tblTC]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTC](
	[TcId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolNo] [varchar](20) NOT NULL,
	[AdmNo] [varchar](20) NOT NULL,
	[UploadedFileName] [varchar](500) NOT NULL,
	[SubUserId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TcId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblTC] ON
INSERT [dbo].[tblTC] ([TcId], [SchoolNo], [AdmNo], [UploadedFileName], [SubUserId], [UserId], [FYear], [CreatedAt]) VALUES (1, N'7', N'', N'C:\ICM\Images\\83.jpeg', 8, 7, 2014, CAST(0x0000A9E800D8A620 AS DateTime))
INSERT [dbo].[tblTC] ([TcId], [SchoolNo], [AdmNo], [UploadedFileName], [SubUserId], [UserId], [FYear], [CreatedAt]) VALUES (2, N'7', N'14093', N'C:\ICM\Images\\14093.jpeg', 8, 7, 2014, CAST(0x0000A9E800DBF32D AS DateTime))
INSERT [dbo].[tblTC] ([TcId], [SchoolNo], [AdmNo], [UploadedFileName], [SubUserId], [UserId], [FYear], [CreatedAt]) VALUES (3, N'12', N'498', N'C:\ICM\Images\\imgsh12208.jpg', 13, 12, 2014, CAST(0x0000A9EA00DB8076 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblTC] OFF
/****** Object:  Table [dbo].[tblTaxMaster]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTaxMaster](
	[TaxId] [int] IDENTITY(1,1) NOT NULL,
	[TaxName] [varchar](100) NOT NULL,
	[TaxAmount] [decimal](20, 4) NULL,
	[TaxPercent] [decimal](20, 4) NULL,
	[SubUserId] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TaxId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTax]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTax](
	[TaxId] [int] IDENTITY(1,1) NOT NULL,
	[LedgerNumber] [int] NULL,
	[ProductLedgerNumber] [int] NULL,
	[TaxMasterId] [int] NULL,
	[TaxAmount] [decimal](20, 4) NULL,
	[SubUserId] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TaxId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSubuser]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSubuser](
	[SubuserID] [int] IDENTITY(1,1) NOT NULL,
	[SubuserName] [varchar](200) NOT NULL,
	[SubuserCreationDate] [datetime] NULL,
	[SubuserPassword] [varchar](50) NOT NULL,
	[EmailId] [varchar](100) NULL,
	[Active] [varchar](1) NOT NULL,
	[Designation] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[Mobile] [varchar](20) NULL,
	[UserId] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[IsAdmin] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubuserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblSubuser] ON
INSERT [dbo].[tblSubuser] ([SubuserID], [SubuserName], [SubuserCreationDate], [SubuserPassword], [EmailId], [Active], [Designation], [Address], [City], [Mobile], [UserId], [CreatedAt], [IsAdmin]) VALUES (6, N'Gaurav Sharma', CAST(0x0000A45E00000000 AS DateTime), N'123', N'gaurav18485@gmail.com', N'1', N'', N'', N'', N'', 5, CAST(0x0000A45D015590B4 AS DateTime), 1)
INSERT [dbo].[tblSubuser] ([SubuserID], [SubuserName], [SubuserCreationDate], [SubuserPassword], [EmailId], [Active], [Designation], [Address], [City], [Mobile], [UserId], [CreatedAt], [IsAdmin]) VALUES (43, N'Dapindar.S.Bhasin', CAST(0x0000A9FF00000000 AS DateTime), N'1234', N'dsbdkbhasin@gmail.com', N'1', N'Principal', N'Haldwani', N'Kashipur', N'8954121269', 5, CAST(0x0000A9FF00A98879 AS DateTime), 0)
INSERT [dbo].[tblSubuser] ([SubuserID], [SubuserName], [SubuserCreationDate], [SubuserPassword], [EmailId], [Active], [Designation], [Address], [City], [Mobile], [UserId], [CreatedAt], [IsAdmin]) VALUES (44, N'Geeta Neolia', CAST(0x0000A9FF00000000 AS DateTime), N'geeta5', N'gneolia@gmail.com', N'1', N'Co-Ordinator', N'Kashipur', N'Kashipur', N'8077045774', 5, CAST(0x0000A9FF00AEC55B AS DateTime), 0)
INSERT [dbo].[tblSubuser] ([SubuserID], [SubuserName], [SubuserCreationDate], [SubuserPassword], [EmailId], [Active], [Designation], [Address], [City], [Mobile], [UserId], [CreatedAt], [IsAdmin]) VALUES (45, N'Sanjay Gahtori', CAST(0x0000A9FF00000000 AS DateTime), N'gahtori6', N'sanjaygahtori75@gmail.com', N'1', N'PGT', N'Kashipur', N'Kashipur', N'8126289779', 5, CAST(0x0000A9FF00B649D0 AS DateTime), 0)
INSERT [dbo].[tblSubuser] ([SubuserID], [SubuserName], [SubuserCreationDate], [SubuserPassword], [EmailId], [Active], [Designation], [Address], [City], [Mobile], [UserId], [CreatedAt], [IsAdmin]) VALUES (46, N'Lalit Upadhyay', CAST(0x0000A9FF00000000 AS DateTime), N'upadhyay7', N'lalitkashipur1991@gmail.com', N'1', N'PGT', N'Kashipur', N'Kashipur', N'9568594567', 5, CAST(0x0000A9FF00B767C5 AS DateTime), 0)
INSERT [dbo].[tblSubuser] ([SubuserID], [SubuserName], [SubuserCreationDate], [SubuserPassword], [EmailId], [Active], [Designation], [Address], [City], [Mobile], [UserId], [CreatedAt], [IsAdmin]) VALUES (47, N'Vijay Dobriyal', CAST(0x0000A9FF00000000 AS DateTime), N'dobriyal8', N'vijay80576948@gmail.com', N'1', N'PGT', N'Kashipur', N'Kashipur', N'8057694878', 5, CAST(0x0000A9FF00DB34A8 AS DateTime), 0)
INSERT [dbo].[tblSubuser] ([SubuserID], [SubuserName], [SubuserCreationDate], [SubuserPassword], [EmailId], [Active], [Designation], [Address], [City], [Mobile], [UserId], [CreatedAt], [IsAdmin]) VALUES (48, N'Sunita Bisht', CAST(0x0000AA0000000000 AS DateTime), N'bisht9', N'bishtsunita1@gmail.com', N'1', N'PRT', N'Kashipur', N'Kashipur', N'7500037451', 5, CAST(0x0000AA0000982B50 AS DateTime), 0)
INSERT [dbo].[tblSubuser] ([SubuserID], [SubuserName], [SubuserCreationDate], [SubuserPassword], [EmailId], [Active], [Designation], [Address], [City], [Mobile], [UserId], [CreatedAt], [IsAdmin]) VALUES (49, N'Jagtar singh', CAST(0x0000AA0000000000 AS DateTime), N'Singh10', N'jagtarpannu00013@gmail.com', N'1', N'PGT', N'Kashipur', N'Kashipur', N'9927095423', 5, CAST(0x0000AA00009D9C4A AS DateTime), 0)
INSERT [dbo].[tblSubuser] ([SubuserID], [SubuserName], [SubuserCreationDate], [SubuserPassword], [EmailId], [Active], [Designation], [Address], [City], [Mobile], [UserId], [CreatedAt], [IsAdmin]) VALUES (50, N'Mohit Sharma', CAST(0x0000AA0000000000 AS DateTime), N'sharma11', N'mohitjetly006@gmail.com', N'1', N'PRT', N'Kashipur', N'Kashipur', N'9639333996', 5, CAST(0x0000AA00009F1FFB AS DateTime), 0)
INSERT [dbo].[tblSubuser] ([SubuserID], [SubuserName], [SubuserCreationDate], [SubuserPassword], [EmailId], [Active], [Designation], [Address], [City], [Mobile], [UserId], [CreatedAt], [IsAdmin]) VALUES (51, N'Brajbala Singh', CAST(0x0000AA0000000000 AS DateTime), N'singh12', N'brajbala971@gmail.com', N'1', N'PRT', N'Kashipur', N'Kashipur', N'9719793123', 5, CAST(0x0000AA0000A0503F AS DateTime), 0)
INSERT [dbo].[tblSubuser] ([SubuserID], [SubuserName], [SubuserCreationDate], [SubuserPassword], [EmailId], [Active], [Designation], [Address], [City], [Mobile], [UserId], [CreatedAt], [IsAdmin]) VALUES (52, N'Parul Madan', CAST(0x0000AA0000000000 AS DateTime), N'madan13', N'parulmadan88@gmail.com', N'1', N'PRT', N'Kashipur', N'Kashipur', N'7534872065', 5, CAST(0x0000AA0000A162F1 AS DateTime), 0)
INSERT [dbo].[tblSubuser] ([SubuserID], [SubuserName], [SubuserCreationDate], [SubuserPassword], [EmailId], [Active], [Designation], [Address], [City], [Mobile], [UserId], [CreatedAt], [IsAdmin]) VALUES (53, N'Ravindra Kumar', CAST(0x0000AA0000000000 AS DateTime), N'kumar14', N'ravindrakumar0785@gmail.com', N'1', N'PGT', N'Kashipur', N'Kashipur', N'7351942212', 5, CAST(0x0000AA0000A65908 AS DateTime), 0)
INSERT [dbo].[tblSubuser] ([SubuserID], [SubuserName], [SubuserCreationDate], [SubuserPassword], [EmailId], [Active], [Designation], [Address], [City], [Mobile], [UserId], [CreatedAt], [IsAdmin]) VALUES (54, N'Renu Thakur', CAST(0x0000AA0000000000 AS DateTime), N'thakur15', N'thakur.renu14@gmail.com', N'1', N'TGT', N'Kashipur', N'Kashipur', N'9927330089', 5, CAST(0x0000AA0000A7B307 AS DateTime), 0)
INSERT [dbo].[tblSubuser] ([SubuserID], [SubuserName], [SubuserCreationDate], [SubuserPassword], [EmailId], [Active], [Designation], [Address], [City], [Mobile], [UserId], [CreatedAt], [IsAdmin]) VALUES (55, N'Pushpraj Singh', CAST(0x0000AA0000000000 AS DateTime), N'singh16', N'prajsingh11@gmail.com', N'1', N'TGT', N'Kashipur', N'Kashipur', N'8791136768', 5, CAST(0x0000AA0000AD3972 AS DateTime), 0)
INSERT [dbo].[tblSubuser] ([SubuserID], [SubuserName], [SubuserCreationDate], [SubuserPassword], [EmailId], [Active], [Designation], [Address], [City], [Mobile], [UserId], [CreatedAt], [IsAdmin]) VALUES (56, N'Ramandeep kaur', CAST(0x0000AA0000000000 AS DateTime), N'singh17', N'ramandeepsandhusinder@gmail.com', N'1', N'TGT', N'Kashipur', N'Kashipur', N'8958799702', 5, CAST(0x0000AA0000AE86A0 AS DateTime), 0)
INSERT [dbo].[tblSubuser] ([SubuserID], [SubuserName], [SubuserCreationDate], [SubuserPassword], [EmailId], [Active], [Designation], [Address], [City], [Mobile], [UserId], [CreatedAt], [IsAdmin]) VALUES (57, N'Mohini chaturvedi', CAST(0x0000AA0000000000 AS DateTime), N'chaturvedi18', N'mohinichaturvedi759@gmail.com', N'1', N'TGT', N'Kashipur', N'Kashipur', N'9368196448', 5, CAST(0x0000AA0000AFAB69 AS DateTime), 0)
INSERT [dbo].[tblSubuser] ([SubuserID], [SubuserName], [SubuserCreationDate], [SubuserPassword], [EmailId], [Active], [Designation], [Address], [City], [Mobile], [UserId], [CreatedAt], [IsAdmin]) VALUES (58, N'Dabal.S.Rawat', CAST(0x0000AA0000000000 AS DateTime), N'rawat19', N'dabalrawat07@gmail.com', N'1', N'PTI', N'Kashipur', N'Kashipur', N'8193047761', 5, CAST(0x0000AA0000B1D2C2 AS DateTime), 0)
INSERT [dbo].[tblSubuser] ([SubuserID], [SubuserName], [SubuserCreationDate], [SubuserPassword], [EmailId], [Active], [Designation], [Address], [City], [Mobile], [UserId], [CreatedAt], [IsAdmin]) VALUES (59, N'Principal', CAST(0x0000AA0600000000 AS DateTime), N'123', N'sandeepTFT@gmail.com', N'1', NULL, NULL, NULL, NULL, 36, CAST(0x0000AA0601591611 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tblSubuser] OFF
/****** Object:  Table [dbo].[tblSubjectMaster]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSubjectMaster](
	[SubjectMasterId] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [varchar](200) NOT NULL,
	[SubjectCode] [varchar](200) NOT NULL,
	[SubjectGroupMasterId] [int] NOT NULL,
	[SubjectClassID] [int] NOT NULL,
	[SubjectSectionID] [int] NOT NULL,
	[SubjectOrder] [int] NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectMasterId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblSubjectMaster] ON
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (68, N'English', N'English', 17, 0, 0, 1, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (69, N'Hindi', N'Hindi', 17, 0, 0, 2, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (70, N'Social studies', N'Social studies', 17, 0, 0, 5, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (71, N'Home Science', N'Home Science', 17, 0, 0, 7, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (72, N'Drawing', N'Drawing', 18, 0, 0, 49, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (73, N'Science', N'Science', 17, 0, 0, 3, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (74, N'Maths', N'Maths', 17, 0, 0, 4, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (75, N'G.K.', N'G.K.', 17, 0, 0, 9, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (76, N'EVS', N'EVS', 17, 0, 0, 10, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (77, N'Computer', N'Computer', 17, 0, 0, 11, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (78, N'Sociology', N'Sociology', 17, 0, 0, 12, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (79, N'Foundation of I.T.', N'Foundation of I.T.', 17, 143, 0, 13, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (80, N'Physics', N'Physics', 17, 148, 0, 17, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (81, N'Chemistry', N'Chemistry', 17, 148, 0, 15, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (82, N'Biology', N'Biology', 17, 0, 0, 19, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (83, N'Physical Education', N'Physical Education', 17, 0, 0, 17, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (84, N'Information Practice', N'Information Practice', 17, 148, 0, 18, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (85, N'Computer Science', N'Computer Science', 17, 0, 0, 19, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (86, N'Punjabi', N'Punjabi', 17, 0, 0, 20, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (87, N'Sanskrit', N'Sanskrit', 17, 0, 0, 21, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (88, N'Accountancy', N'Accountancy', 17, 0, 0, 22, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (89, N'Bussiness Studies', N'Bussiness Studies', 17, 0, 0, 23, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (90, N'Economics', N'Economics', 17, 0, 0, 24, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (91, N'Political Science', N'Political Science', 17, 0, 0, 25, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (92, N'History', N'History', 17, 0, 0, 26, 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (93, N'Fine Arts', N'Fine Arts', 17, 0, 0, 49, 5, 2014, CAST(0x0000AA0000D279D6 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (94, N'Punctuality', N'Punctuality', 18, 0, 0, 170, 5, 2014, CAST(0x0000AA0000D279D6 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (95, N'Creativity', N'Creativity', 18, 0, 0, 180, 5, 2014, CAST(0x0000AA0000D279D6 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (96, N'Concern for Others', N'Concern for Others', 18, 0, 0, 190, 5, 2014, CAST(0x0000AA0000D279D6 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (97, N'Personal Hygiene', N'Personal Hygiene', 19, 0, 0, 200, 5, 2014, CAST(0x0000AA0000D279D6 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (98, N'Sociability', N'Sociability', 18, 0, 0, 210, 5, 2014, CAST(0x0000AA0000D279D6 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (99, N'Initiative', N'Initiative', 18, 0, 0, 220, 5, 2014, CAST(0x0000AA0000D279D6 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (100, N'Attendance', N'Attendance', 19, 0, 0, 230, 5, 2014, CAST(0x0000AA0000D279D6 AS DateTime))
INSERT [dbo].[tblSubjectMaster] ([SubjectMasterId], [SubjectName], [SubjectCode], [SubjectGroupMasterId], [SubjectClassID], [SubjectSectionID], [SubjectOrder], [UserID], [FYear], [CreatedAt]) VALUES (101, N'Promoted to Class', N'Promoted to Class', 19, 0, 0, 500, 5, 2014, CAST(0x0000AA0000D279D6 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblSubjectMaster] OFF
/****** Object:  Table [dbo].[tblSubjectGroupMaster]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSubjectGroupMaster](
	[SubjectGroupMasterId] [int] IDENTITY(1,1) NOT NULL,
	[SubjectGroupName] [varchar](200) NOT NULL,
	[SubjectGroupType] [varchar](200) NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectGroupMasterId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblSubjectGroupMaster] ON
INSERT [dbo].[tblSubjectGroupMaster] ([SubjectGroupMasterId], [SubjectGroupName], [SubjectGroupType], [UserID], [FYear], [CreatedAt]) VALUES (17, N'Scholastic', N'Marks', 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectGroupMaster] ([SubjectGroupMasterId], [SubjectGroupName], [SubjectGroupType], [UserID], [FYear], [CreatedAt]) VALUES (18, N'CoScholastic', N'Grade', 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectGroupMaster] ([SubjectGroupMasterId], [SubjectGroupName], [SubjectGroupType], [UserID], [FYear], [CreatedAt]) VALUES (19, N'Discipline', N'Grade', 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectGroupMaster] ([SubjectGroupMasterId], [SubjectGroupName], [SubjectGroupType], [UserID], [FYear], [CreatedAt]) VALUES (20, N'Remarks', N'Grade', 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
INSERT [dbo].[tblSubjectGroupMaster] ([SubjectGroupMasterId], [SubjectGroupName], [SubjectGroupType], [UserID], [FYear], [CreatedAt]) VALUES (21, N'Physical', N'Grade', 5, 2014, CAST(0x0000AA0000D279D1 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblSubjectGroupMaster] OFF
/****** Object:  Table [dbo].[tblStudentMaster]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStudentMaster](
	[StudentMasterId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](200) NOT NULL,
	[DOB] [datetime] NULL,
	[IdCardNo] [varchar](100) NULL,
	[Address] [varchar](200) NULL,
	[City] [varchar](100) NULL,
	[Phone] [varchar](50) NULL,
	[MobileF] [varchar](50) NULL,
	[MobileM] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Remarks] [varchar](200) NULL,
	[ClassId] [int] NULL,
	[SubUserId] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[SectionID] [int] NULL,
	[AdmissionNo] [varchar](50) NULL,
	[FatherName] [varchar](100) NULL,
	[MotherName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentMasterId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblStudentMaster] ON
INSERT [dbo].[tblStudentMaster] ([StudentMasterId], [StudentName], [DOB], [IdCardNo], [Address], [City], [Phone], [MobileF], [MobileM], [Email], [Remarks], [ClassId], [SubUserId], [UserID], [FYear], [CreatedAt], [SectionID], [AdmissionNo], [FatherName], [MotherName]) VALUES (50188, N'Ajay ', CAST(0x0000000000000000 AS DateTime), N'9999', NULL, NULL, NULL, N'7248169044', N'', N'1/Jan/1900', NULL, 2955, 59, 36, 2014, CAST(0x0000AA06015A55CA AS DateTime), 136, N'', N'', N'')
INSERT [dbo].[tblStudentMaster] ([StudentMasterId], [StudentName], [DOB], [IdCardNo], [Address], [City], [Phone], [MobileF], [MobileM], [Email], [Remarks], [ClassId], [SubUserId], [UserID], [FYear], [CreatedAt], [SectionID], [AdmissionNo], [FatherName], [MotherName]) VALUES (50189, N'Asha', CAST(0x0000000000000000 AS DateTime), N'9998', NULL, NULL, NULL, N'8755265008', N'', N'1/Jan/1900', NULL, 2955, 59, 36, 2014, CAST(0x0000AA06016020FB AS DateTime), 136, N'', N'', N'')
INSERT [dbo].[tblStudentMaster] ([StudentMasterId], [StudentName], [DOB], [IdCardNo], [Address], [City], [Phone], [MobileF], [MobileM], [Email], [Remarks], [ClassId], [SubUserId], [UserID], [FYear], [CreatedAt], [SectionID], [AdmissionNo], [FatherName], [MotherName]) VALUES (50190, N'Himani Mam', CAST(0x0000000000000000 AS DateTime), N'9997', NULL, NULL, NULL, N'9410579923', N'', N'1/Jan/1900', NULL, 2955, 59, 36, 2014, CAST(0x0000AA060165267D AS DateTime), 136, N'', N'', N'')
INSERT [dbo].[tblStudentMaster] ([StudentMasterId], [StudentName], [DOB], [IdCardNo], [Address], [City], [Phone], [MobileF], [MobileM], [Email], [Remarks], [ClassId], [SubUserId], [UserID], [FYear], [CreatedAt], [SectionID], [AdmissionNo], [FatherName], [MotherName]) VALUES (50191, N'Chandra Sidwani', CAST(0x0000000000000000 AS DateTime), N'9996', NULL, NULL, NULL, N'9837156674', N'', N'1/Jan/1900', NULL, 2955, 59, 36, 2014, CAST(0x0000AA0601657EAC AS DateTime), 136, N'', N'', N'')
INSERT [dbo].[tblStudentMaster] ([StudentMasterId], [StudentName], [DOB], [IdCardNo], [Address], [City], [Phone], [MobileF], [MobileM], [Email], [Remarks], [ClassId], [SubUserId], [UserID], [FYear], [CreatedAt], [SectionID], [AdmissionNo], [FatherName], [MotherName]) VALUES (50192, N'Mahi', CAST(0x0000000000000000 AS DateTime), N'88887', NULL, NULL, NULL, N'9149217987', N'', N'', NULL, 2955, 59, 36, 2014, CAST(0x0000AA0E01586572 AS DateTime), 136, N'', N'', N'')
INSERT [dbo].[tblStudentMaster] ([StudentMasterId], [StudentName], [DOB], [IdCardNo], [Address], [City], [Phone], [MobileF], [MobileM], [Email], [Remarks], [ClassId], [SubUserId], [UserID], [FYear], [CreatedAt], [SectionID], [AdmissionNo], [FatherName], [MotherName]) VALUES (50193, N'Vaishnavi', CAST(0x0000000000000000 AS DateTime), N'88888', NULL, NULL, NULL, N'9219484030', N'', N'', NULL, 2955, 59, 36, 2014, CAST(0x0000AA0E015883EE AS DateTime), 136, N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tblStudentMaster] OFF
/****** Object:  Table [dbo].[tblStockTransactionMaster]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStockTransactionMaster](
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[TransactionName] [varchar](100) NOT NULL,
	[Flow] [int] NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSource]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSource](
	[SourceID] [int] IDENTITY(1,1) NOT NULL,
	[SourceName] [varchar](100) NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SourceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSMSSent]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSMSSent](
	[SmsID] [int] IDENTITY(1,1) NOT NULL,
	[SMSText] [nvarchar](2000) NULL,
	[mobileNo] [varchar](14) NOT NULL,
	[UserID] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[MsgCount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SmsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSMSPurchased]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSMSPurchased](
	[SmsPurchasedID] [int] IDENTITY(1,1) NOT NULL,
	[SmsPurchasedCount] [bigint] NOT NULL,
	[Amount] [decimal](18, 0) NULL,
	[UserID] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SmsPurchasedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblSMSPurchased] ON
INSERT [dbo].[tblSMSPurchased] ([SmsPurchasedID], [SmsPurchasedCount], [Amount], [UserID], [CreatedAt]) VALUES (1, 25010, CAST(8000 AS Decimal(18, 0)), 20, CAST(0x0000A5E400F3FBFA AS DateTime))
INSERT [dbo].[tblSMSPurchased] ([SmsPurchasedID], [SmsPurchasedCount], [Amount], [UserID], [CreatedAt]) VALUES (3, 100000, CAST(15000 AS Decimal(18, 0)), 9, CAST(0x0000A9C3015C25FE AS DateTime))
INSERT [dbo].[tblSMSPurchased] ([SmsPurchasedID], [SmsPurchasedCount], [Amount], [UserID], [CreatedAt]) VALUES (4, 100000, CAST(15000 AS Decimal(18, 0)), 9, CAST(0x0000A9C3015C2EFC AS DateTime))
INSERT [dbo].[tblSMSPurchased] ([SmsPurchasedID], [SmsPurchasedCount], [Amount], [UserID], [CreatedAt]) VALUES (5, 25000, CAST(4500 AS Decimal(18, 0)), 22, CAST(0x0000A9C3015ED3F6 AS DateTime))
INSERT [dbo].[tblSMSPurchased] ([SmsPurchasedID], [SmsPurchasedCount], [Amount], [UserID], [CreatedAt]) VALUES (6, 25000, CAST(4500 AS Decimal(18, 0)), 22, CAST(0x0000A9FD00AC87A2 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblSMSPurchased] OFF
/****** Object:  Table [dbo].[tblSMS]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSMS](
	[smsId] [int] IDENTITY(1,1) NOT NULL,
	[SMSDate] [datetime] NOT NULL,
	[IDCardNo] [varchar](200) NOT NULL,
	[InTime] [datetime] NULL,
	[OutTime] [datetime] NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[smsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSectionMaster]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSectionMaster](
	[SectionMasterId] [int] IDENTITY(1,1) NOT NULL,
	[SectionName] [varchar](200) NOT NULL,
	[SectionOrder] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SectionMasterId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblSectionMaster] ON
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (1, N'A', 1, 1, 2014, CAST(0x0000A3F200009ECF AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (2, N'B', 2, 1, 2014, CAST(0x0000A3F200009ED4 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (3, N'A', 1, 2, 2014, CAST(0x0000A3F3000C305F AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (4, N'B', 2, 2, 2014, CAST(0x0000A3F3000C30F0 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (5, N'A', 1, 4, 2015, CAST(0x0000A43B0180ADA8 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (6, N'B', 2, 4, 2015, CAST(0x0000A43B0180ADE3 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (7, N'C', 3, 4, 2015, CAST(0x0000A448006C569B AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (8, N'D', 4, 4, 2015, CAST(0x0000A448006C56CF AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (9, N'', 1, 5, 2015, CAST(0x0000A45D015678AF AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (10, N'A', 2, 5, 2015, CAST(0x0000A45D01567AD1 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (11, N'B', 3, 5, 2015, CAST(0x0000A45D01567AED AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (12, N'C', 4, 5, 2015, CAST(0x0000A45D01567B05 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (13, N'', 1, 6, 2015, CAST(0x0000A45D0161B71C AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (14, N'A', 2, 6, 2015, CAST(0x0000A45D0161B73D AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (15, N'B', 3, 6, 2015, CAST(0x0000A45D0161B755 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (16, N'C', 4, 6, 2015, CAST(0x0000A45D0161B767 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (17, N'', 1, 7, 2015, CAST(0x0000A46401755A8A AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (18, N'A', 2, 7, 2015, CAST(0x0000A46401755D9D AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (19, N'B', 3, 7, 2015, CAST(0x0000A46401755DED AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (20, N'C', 4, 7, 2015, CAST(0x0000A46401755E1C AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (21, N'', 1, 8, 2015, CAST(0x0000A464017B0B7D AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (22, N'A', 2, 8, 2015, CAST(0x0000A464017B0B99 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (23, N'B', 3, 8, 2015, CAST(0x0000A464017B0BC8 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (24, N'C', 4, 8, 2015, CAST(0x0000A464017B0C13 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (25, N'', 1, 9, 2015, CAST(0x0000A470009956AE AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (26, N'A', 2, 9, 2015, CAST(0x0000A470009956CA AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (27, N'B', 3, 9, 2015, CAST(0x0000A4700099571F AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (28, N'C', 4, 9, 2015, CAST(0x0000A47000995731 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (29, N'', 1, 10, 2015, CAST(0x0000A470009A1689 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (30, N'A', 2, 10, 2015, CAST(0x0000A470009A169D AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (31, N'B', 3, 10, 2015, CAST(0x0000A470009A16B0 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (32, N'C', 4, 10, 2015, CAST(0x0000A470009A16C7 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (33, N'', 1, 11, 2015, CAST(0x0000A4E30107E33F AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (34, N'A', 2, 11, 2015, CAST(0x0000A4E30107E364 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (35, N'B', 3, 11, 2015, CAST(0x0000A4E30107E380 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (36, N'C', 4, 11, 2015, CAST(0x0000A4E30107E39C AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (37, N'', 1, 12, 2015, CAST(0x0000A4E6012279D1 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (38, N'A', 2, 12, 2015, CAST(0x0000A4E601227A2F AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (39, N'B', 3, 12, 2015, CAST(0x0000A4E601227A54 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (40, N'C', 4, 12, 2015, CAST(0x0000A4E601227A79 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (41, N'D', 5, 12, 2015, CAST(0x0000A4E601227A9F AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (42, N'', 1, 13, 2015, CAST(0x0000A4F0016FB264 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (43, N'A', 2, 13, 2015, CAST(0x0000A4F0016FB329 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (44, N'B', 3, 13, 2015, CAST(0x0000A4F0016FB379 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (45, N'C', 4, 13, 2015, CAST(0x0000A4F0016FB39E AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (46, N'D', 5, 13, 2015, CAST(0x0000A4F0016FB3D2 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (47, N'', 1, 14, 2015, CAST(0x0000A5280146FA3E AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (48, N'A', 2, 14, 2015, CAST(0x0000A5280146FA5A AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (49, N'B', 3, 14, 2015, CAST(0x0000A5280146FA7B AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (50, N'C', 4, 14, 2015, CAST(0x0000A5280146FA97 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (51, N'D', 5, 14, 2015, CAST(0x0000A5280146FAB8 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (52, N'', 1, 15, 2015, CAST(0x0000A54901175573 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (53, N'A', 2, 15, 2015, CAST(0x0000A54901175594 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (54, N'B', 3, 15, 2015, CAST(0x0000A549011755B0 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (55, N'C', 4, 15, 2015, CAST(0x0000A549011755C7 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (56, N'D', 5, 15, 2015, CAST(0x0000A549011755E3 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (57, N'', 1, 16, 2015, CAST(0x0000A57C00E14E51 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (58, N'A', 2, 16, 2015, CAST(0x0000A57C00E14E6E AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (59, N'B', 3, 16, 2015, CAST(0x0000A57C00E14E85 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (60, N'C', 4, 16, 2015, CAST(0x0000A57C00E14EA1 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (61, N'D', 5, 16, 2015, CAST(0x0000A57C00E14EB8 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (62, N'E', 6, 16, 2015, CAST(0x0000A57C00E14ED0 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (63, N'F', 7, 16, 2015, CAST(0x0000A57C00E14EE7 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (64, N'', 1, 17, 2015, CAST(0x0000A57E012C48B4 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (65, N'A', 2, 17, 2015, CAST(0x0000A57E012C48D5 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (66, N'B', 3, 17, 2015, CAST(0x0000A57E012C48F1 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (67, N'', 1, 18, 2015, CAST(0x0000A57E012CF8EB AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (68, N'A', 2, 18, 2015, CAST(0x0000A57E012CF90B AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (69, N'B', 3, 18, 2015, CAST(0x0000A57E012CF923 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (70, N'', 1, 19, 2015, CAST(0x0000A5DB007E37D8 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (71, N'A', 2, 19, 2015, CAST(0x0000A5DB007E37F9 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (72, N'B', 3, 19, 2015, CAST(0x0000A5DB007E381A AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (73, N'', 1, 20, 2015, CAST(0x0000A5DB00850690 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (74, N'', 1, 21, 2015, CAST(0x0000A5DD00EB88E9 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (75, N'A', 2, 21, 2015, CAST(0x0000A5DD00EB8901 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (76, N'B', 3, 21, 2015, CAST(0x0000A5DD00EB8918 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (77, N'C', 4, 21, 2015, CAST(0x0000A5DD00EB8934 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (78, N'D', 5, 21, 2015, CAST(0x0000A5DD00EB894C AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (79, N'E', 6, 21, 2015, CAST(0x0000A5DE009BC1E8 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (80, N'', 1, 22, 2015, CAST(0x0000A5EE00DE8C04 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (81, N'A', 2, 22, 2015, CAST(0x0000A5EE00DE8C1C AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (82, N'B', 3, 22, 2015, CAST(0x0000A5EE00DE8C3D AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (83, N'C', 4, 22, 2015, CAST(0x0000A5EE00DE8C62 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (84, N'D', 5, 22, 2015, CAST(0x0000A5EE00DE8C7E AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (85, N'', 1, 23, 2015, CAST(0x0000A650011DD85C AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (95, N'', 1, 26, 2015, CAST(0x0000A652015DD45C AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (96, N'', 1, 26, 2015, CAST(0x0000A652015DD45C AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (97, N'A', 2, 26, 2015, CAST(0x0000A652015DD45C AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (98, N'B', 3, 26, 2015, CAST(0x0000A652015DD45C AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (99, N'C', 4, 26, 2015, CAST(0x0000A652015DD45C AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (100, N'D', 5, 26, 2015, CAST(0x0000A652015DD45C AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (101, N'E', 6, 26, 2015, CAST(0x0000A652015DD460 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (102, N'F', 7, 26, 2015, CAST(0x0000A652015DD460 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (103, N'G', 8, 26, 2015, CAST(0x0000A652015DD460 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (104, N'', 1, 27, 2015, CAST(0x0000A65D01355E01 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (105, N'', 1, 28, 2015, CAST(0x0000A65D01362371 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (106, N'', 1, 29, 2015, CAST(0x0000A68B0117E750 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (107, N'', 1, 30, 2015, CAST(0x0000A78100F7F91C AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (108, N'A', 2, 30, 2015, CAST(0x0000A78100F7F93B AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (109, N'B', 3, 30, 2015, CAST(0x0000A78100F7F956 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (110, N'C', 4, 30, 2015, CAST(0x0000A78100F7F96F AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (111, N'', 1, 31, 2015, CAST(0x0000A7BF00B9790D AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (112, N'A', 2, 31, 2015, CAST(0x0000A7BF00B9792A AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (113, N'B', 3, 31, 2015, CAST(0x0000A7BF00B97945 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (114, N'C', 4, 31, 2015, CAST(0x0000A7BF00B97966 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (115, N'D', 5, 31, 2015, CAST(0x0000A7BF00B97990 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (116, N'', 1, 32, 2015, CAST(0x0000A80A00FF5514 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (117, N'A', 2, 32, 2015, CAST(0x0000A80A00FF5577 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (118, N'B', 3, 32, 2015, CAST(0x0000A80A00FF55D9 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (119, N'C', 4, 32, 2015, CAST(0x0000A80A00FF5637 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (120, N'D', 5, 32, 2015, CAST(0x0000A80A00FF5699 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (121, N'', 1, 33, 2015, CAST(0x0000918700221F8F AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (122, N'A', 2, 33, 2015, CAST(0x0000918700221FB9 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (123, N'B', 3, 33, 2015, CAST(0x0000918700221FE3 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (124, N'C', 4, 33, 2015, CAST(0x000091870022200D AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (125, N'D', 5, 33, 2015, CAST(0x0000918700222033 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (126, N'', 1, 34, 2015, CAST(0x0000A84901403A99 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (127, N'A', 2, 34, 2015, CAST(0x0000A84901403AB5 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (128, N'B', 3, 34, 2015, CAST(0x0000A84901403ACC AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (129, N'C', 4, 34, 2015, CAST(0x0000A84901403AE8 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (130, N'D', 5, 34, 2015, CAST(0x0000A84901403B04 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (131, N'', 1, 35, 2015, CAST(0x0000A87F00F2A4F7 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (132, N'A', 2, 35, 2015, CAST(0x0000A87F00F2A52F AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (133, N'B', 3, 35, 2015, CAST(0x0000A87F00F2A54B AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (134, N'C', 4, 35, 2015, CAST(0x0000A87F00F2A567 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (135, N'D', 5, 35, 2015, CAST(0x0000A87F00F2A588 AS DateTime))
INSERT [dbo].[tblSectionMaster] ([SectionMasterId], [SectionName], [SectionOrder], [UserID], [FYear], [CreatedAt]) VALUES (136, N'', 1, 36, 2015, CAST(0x0000AA0601591D93 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblSectionMaster] OFF
/****** Object:  Table [dbo].[tblSalary]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSalary](
	[SalaryId] [int] IDENTITY(1,1) NOT NULL,
	[DesignationID] [int] NULL,
	[YearNo] [int] NOT NULL,
	[MonthNo] [int] NOT NULL,
	[BasicSalary] [decimal](18, 0) NOT NULL,
	[Conveyance] [decimal](18, 0) NULL,
	[EPF] [decimal](18, 0) NULL,
	[ESI] [decimal](18, 0) NULL,
	[Emi] [decimal](18, 0) NULL,
	[StaffID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SalaryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductToDetail]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductToDetail](
	[ProductToDetailId] [int] IDENTITY(1,1) NOT NULL,
	[ProductLedgerId] [int] NULL,
	[ProductToId] [int] NOT NULL,
	[Qty2] [decimal](20, 4) NULL,
	[LocationId2] [int] NULL,
	[AccountId2] [int] NULL,
	[SubUserID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductToDetailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductMaster]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProductMaster](
	[ProductMasterId] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [varchar](100) NULL,
	[ProductName] [varchar](200) NOT NULL,
	[OpeningBalance] [decimal](20, 4) NULL,
	[CostPrice] [decimal](20, 4) NULL,
	[SellingPrice] [decimal](20, 4) NULL,
	[UOM] [int] NULL,
	[CategoryID] [int] NULL,
	[ProductDescription] [varchar](500) NOT NULL,
	[SubUserId] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[ProductDate] [datetime] NULL,
	[AccountID] [int] NULL,
	[LocationID] [int] NULL,
	[ReOrderQty] [decimal](20, 4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductMasterId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProductLedger]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProductLedger](
	[ProductLedgerId] [int] IDENTITY(1,1) NOT NULL,
	[ProductLedgerNumber] [bigint] NOT NULL,
	[drcr] [varchar](1) NULL,
	[BillDate] [datetime] NOT NULL,
	[BillNumber] [varchar](100) NULL,
	[AccountId] [int] NULL,
	[ProductId] [int] NOT NULL,
	[BoughtQty] [decimal](20, 4) NULL,
	[SoldQty] [decimal](20, 4) NULL,
	[ProductId2] [int] NOT NULL,
	[BoughtQty2] [decimal](20, 4) NULL,
	[SoldQty2] [decimal](20, 4) NULL,
	[Discount] [varchar](50) NULL,
	[LedgerNumber] [int] NULL,
	[SourceId] [int] NULL,
	[LocationId] [int] NULL,
	[LocationId2] [int] NULL,
	[Particulars] [varchar](200) NULL,
	[ToNarration] [varchar](1000) NULL,
	[SubUserID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductLedgerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProductCategory]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProductCategory](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](200) NOT NULL,
	[SubUserId] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPermissions]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPermissions](
	[PermissionId] [int] IDENTITY(1,1) NOT NULL,
	[Module] [varchar](100) NULL,
	[ASPXPageName] [varchar](100) NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPermission]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPermission](
	[PermissionId] [int] IDENTITY(1,1) NOT NULL,
	[Module] [varchar](100) NULL,
	[ASPXPageName] [varchar](100) NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblPermission] ON
INSERT [dbo].[tblPermission] ([PermissionId], [Module], [ASPXPageName], [CreatedAt]) VALUES (1, N'Exam Marks', N'ExamMarks.aspx', CAST(0x0000A3F10187AAC0 AS DateTime))
INSERT [dbo].[tblPermission] ([PermissionId], [Module], [ASPXPageName], [CreatedAt]) VALUES (2, N'Class Master', N'ClassFrm.aspx', CAST(0x0000A3F10187AACE AS DateTime))
INSERT [dbo].[tblPermission] ([PermissionId], [Module], [ASPXPageName], [CreatedAt]) VALUES (3, N'Subject Master', N'SubjectMasterFrm.aspx', CAST(0x0000A3F10187AACE AS DateTime))
INSERT [dbo].[tblPermission] ([PermissionId], [Module], [ASPXPageName], [CreatedAt]) VALUES (4, N'Attendance', N'Attendance.aspx', CAST(0x0000A3F10187AACE AS DateTime))
INSERT [dbo].[tblPermission] ([PermissionId], [Module], [ASPXPageName], [CreatedAt]) VALUES (5, N'AttendanceByMonth', N'AttendanceByMonthReport.aspx', CAST(0x0000A3F10187AACE AS DateTime))
INSERT [dbo].[tblPermission] ([PermissionId], [Module], [ASPXPageName], [CreatedAt]) VALUES (6, N'Student Master', N'StudentMaster.aspx', CAST(0x0000A3F10187AACE AS DateTime))
INSERT [dbo].[tblPermission] ([PermissionId], [Module], [ASPXPageName], [CreatedAt]) VALUES (7, N'SMS', N'SmsFrm.aspx', CAST(0x0000A3F10187AACE AS DateTime))
SET IDENTITY_INSERT [dbo].[tblPermission] OFF
/****** Object:  Table [dbo].[tblLWP]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLWP](
	[LWPId] [int] IDENTITY(1,1) NOT NULL,
	[LWPFromDate] [datetime] NOT NULL,
	[LWPToDate] [datetime] NOT NULL,
	[StaffID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[LWPId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLocation]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLocation](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [varchar](200) NOT NULL,
	[SubUserId] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLedger]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLedger](
	[LedgerId] [int] IDENTITY(1,1) NOT NULL,
	[LedgerNumber] [int] NOT NULL,
	[drcr] [varchar](1) NULL,
	[LDate] [datetime] NOT NULL,
	[AccountMasterId] [int] NOT NULL,
	[ModeId] [int] NOT NULL,
	[BillNumber] [varchar](30) NULL,
	[CheckNumber] [varchar](50) NULL,
	[Particulars] [varchar](200) NULL,
	[Debit] [decimal](20, 4) NULL,
	[Credit] [decimal](20, 4) NULL,
	[Discount] [varchar](50) NULL,
	[SourceId] [int] NOT NULL,
	[SubUserId] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[LedgerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblHRA]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHRA](
	[HRAId] [int] IDENTITY(1,1) NOT NULL,
	[HRAFromDate] [datetime] NOT NULL,
	[HRAAmount] [decimal](18, 0) NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[HRAId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHome]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblHome](
	[ColName] [varchar](100) NOT NULL,
	[ColValue] [varchar](100) NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ColName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblHome] ([ColName], [ColValue], [CreatedAt]) VALUES (N'CurrentFYear', N'2014', CAST(0x0000A3F101762918 AS DateTime))
/****** Object:  Table [dbo].[tblHolidayStudent]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblHolidayStudent](
	[HolidayStudentId] [int] IDENTITY(1,1) NOT NULL,
	[HolidayDate] [datetime] NOT NULL,
	[HolidayName] [varchar](200) NOT NULL,
	[HolidayShortName] [varchar](200) NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[HolidayStudentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[HolidayDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGroup]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGroup](
	[GroupId] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [varchar](200) NOT NULL,
	[SubUserId] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblExamMaster]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblExamMaster](
	[ExamMasterId] [int] IDENTITY(1,1) NOT NULL,
	[ExamDate] [datetime] NULL,
	[ExamName] [varchar](200) NULL,
	[ExamCode] [varchar](100) NULL,
	[TermId] [int] NULL,
	[ClassMasterId] [int] NULL,
	[SectionMasterId] [int] NULL,
	[MaxMarks] [varchar](5) NULL,
	[PassMarks] [varchar](5) NULL,
	[IsFormula] [int] NULL,
	[Formula] [decimal](18, 0) NULL,
	[ExamOrder] [int] NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ExamMasterId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblExamMaster] ON
INSERT [dbo].[tblExamMaster] ([ExamMasterId], [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear], [CreatedAt]) VALUES (20, CAST(0x0000A9EC00000000 AS DateTime), N'PT1', N'Periodic Test', 8, 0, 0, N'10', N'4', 0, NULL, 100, 5, 2014, CAST(0x0000A9FE01702A54 AS DateTime))
INSERT [dbo].[tblExamMaster] ([ExamMasterId], [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear], [CreatedAt]) VALUES (21, CAST(0x0000A9EC00000000 AS DateTime), N'PT2', N'Periodic Test', 8, 0, 0, N'10', N'4', 0, NULL, 200, 5, 2014, CAST(0x0000A9FE01702A54 AS DateTime))
INSERT [dbo].[tblExamMaster] ([ExamMasterId], [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear], [CreatedAt]) VALUES (22, CAST(0x0000A9EC00000000 AS DateTime), N'NB1', N'Note Book', 8, 0, 0, N'5', N'2', 0, NULL, 300, 5, 2014, CAST(0x0000A9FE01702A54 AS DateTime))
INSERT [dbo].[tblExamMaster] ([ExamMasterId], [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear], [CreatedAt]) VALUES (23, CAST(0x0000A9EC00000000 AS DateTime), N'Half Yearly', N'Half Yearly', 8, 0, 0, N'70', N'24', 0, NULL, 700, 5, 2014, CAST(0x0000A9FE01702A54 AS DateTime))
INSERT [dbo].[tblExamMaster] ([ExamMasterId], [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear], [CreatedAt]) VALUES (24, CAST(0x0000A9EC00000000 AS DateTime), N'SEA1', N'SEA', 8, 0, 0, N'5', N'2', 0, NULL, 400, 5, 2014, CAST(0x0000A9FE01702A54 AS DateTime))
INSERT [dbo].[tblExamMaster] ([ExamMasterId], [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear], [CreatedAt]) VALUES (25, CAST(0x0000A9EC00000000 AS DateTime), N'PT3', N'Periodic Test', 9, 0, 0, N'10', N'4', 0, NULL, 600, 5, 2014, CAST(0x0000A9FE01702A54 AS DateTime))
INSERT [dbo].[tblExamMaster] ([ExamMasterId], [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear], [CreatedAt]) VALUES (26, CAST(0x0000A9EC00000000 AS DateTime), N'PT4', N'Periodic Test', 9, 0, 0, N'10', N'4', 0, NULL, 700, 5, 2014, CAST(0x0000A9FE01702A54 AS DateTime))
INSERT [dbo].[tblExamMaster] ([ExamMasterId], [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear], [CreatedAt]) VALUES (27, CAST(0x0000A9EC00000000 AS DateTime), N'SEA2', N'SEA', 9, 0, 0, N'5', N'2', 0, NULL, 700, 5, 2014, CAST(0x0000A9FE01702A54 AS DateTime))
INSERT [dbo].[tblExamMaster] ([ExamMasterId], [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear], [CreatedAt]) VALUES (28, CAST(0x0000A9EC00000000 AS DateTime), N'NB2', N'Note Book', 9, 0, 0, N'5', N'2', 0, NULL, 700, 5, 2014, CAST(0x0000A9FE01702A54 AS DateTime))
INSERT [dbo].[tblExamMaster] ([ExamMasterId], [ExamDate], [ExamName], [ExamCode], [TermId], [ClassMasterId], [SectionMasterId], [MaxMarks], [PassMarks], [IsFormula], [Formula], [ExamOrder], [UserID], [FYear], [CreatedAt]) VALUES (29, CAST(0x0000A9EC00000000 AS DateTime), N'Yearly', N'Annual', 9, 0, 0, N'70', N'24', 0, NULL, 1000, 5, 2014, CAST(0x0000A9FE01702A54 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblExamMaster] OFF
/****** Object:  Table [dbo].[tblExamMarks]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblExamMarks](
	[ExamMarksId] [int] IDENTITY(1,1) NOT NULL,
	[ExamID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[ClassID] [int] NOT NULL,
	[SectionID] [int] NOT NULL,
	[SubjectID] [int] NOT NULL,
	[MarksObtained] [varchar](200) NULL,
	[IsPresent] [int] NULL,
	[SubUserID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ExamMarksId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblESI]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblESI](
	[ESIId] [int] IDENTITY(1,1) NOT NULL,
	[ESIFromDate] [datetime] NOT NULL,
	[ESIAmount] [decimal](18, 0) NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ESIId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEPF]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEPF](
	[EPFId] [int] IDENTITY(1,1) NOT NULL,
	[EPFFromDate] [datetime] NOT NULL,
	[EPFAmount] [decimal](18, 0) NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EPFId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEnq]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEnq](
	[EnqId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](200) NOT NULL,
	[CustomerEmail] [varchar](200) NOT NULL,
	[City] [varchar](200) NOT NULL,
	[Narration] [varchar](500) NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EnqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDesignation]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDesignation](
	[DesignationId] [int] IDENTITY(1,1) NOT NULL,
	[Designation] [varchar](100) NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DesignationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDA]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDA](
	[DAId] [int] IDENTITY(1,1) NOT NULL,
	[DAFromDate] [datetime] NOT NULL,
	[DaAmount] [decimal](18, 0) NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DAId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClassMaster]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblClassMaster](
	[ClassMasterId] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](200) NOT NULL,
	[ClassOrder] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClassMasterId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblClassMaster] ON
INSERT [dbo].[tblClassMaster] ([ClassMasterId], [ClassName], [ClassOrder], [UserID], [FYear], [CreatedAt]) VALUES (2955, N'I A', 100, 36, 2014, CAST(0x0000AA06015A31EB AS DateTime))
SET IDENTITY_INSERT [dbo].[tblClassMaster] OFF
/****** Object:  Table [dbo].[tblAttendanceStatus]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAttendanceStatus](
	[AttendanceStatusId] [int] IDENTITY(1,1) NOT NULL,
	[AttendanceStatusName] [varchar](100) NOT NULL,
	[AttendanceStatusShortName] [varchar](2) NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AttendanceStatusId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAttendance]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAttendance](
	[AttendanceId] [int] IDENTITY(1,1) NOT NULL,
	[YearNo] [int] NOT NULL,
	[MonthNo] [int] NOT NULL,
	[DayNo] [int] NOT NULL,
	[HolidayId] [int] NULL,
	[StudentMasterId] [int] NOT NULL,
	[InTime] [datetime] NULL,
	[OutTime] [datetime] NULL,
	[Status] [int] NULL,
	[IsPosted] [int] NULL,
	[IsSMSSent] [int] NULL,
	[SubUserId] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AttendanceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblAttendance] ON
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626971, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA0601220FDC AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060161851A AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626972, 2019, 3, 4, 0, 50189, CAST(0x0000AA0600F71778 AS DateTime), CAST(0x0000AA0600F71778 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060161851A AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626973, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA0601132968 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0601625FD6 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626974, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA0601220FDC AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0601625FD6 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626975, 2019, 3, 4, 0, 50189, CAST(0x0000AA0600F71778 AS DateTime), CAST(0x0000AA0600F71778 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0601625FD6 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626976, 2019, 3, 4, 0, 50190, NULL, NULL, 0, 0, 1, 59, 36, 2014, CAST(0x0000AA0601659BB6 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626977, 2019, 3, 4, 0, 50191, NULL, NULL, 0, 0, 1, 59, 36, 2014, CAST(0x0000AA0601659BB6 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626978, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA060112EFFC AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0601659BB6 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626979, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA0601220FDC AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0601659BB6 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626980, 2019, 3, 4, 0, 50189, CAST(0x0000AA0600F71778 AS DateTime), CAST(0x0000AA0600F71778 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0601659BB6 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626981, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA0601129DF4 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060165C91B AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626982, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA0601220FDC AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060165C91B AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626983, 2019, 3, 4, 0, 50189, CAST(0x0000AA0600F71778 AS DateTime), CAST(0x0000AA0600F71778 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060165C91B AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626984, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA060106281C AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060165D069 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626985, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA0601220FDC AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060165D069 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626986, 2019, 3, 4, 0, 50189, CAST(0x0000AA0600F71778 AS DateTime), CAST(0x0000AA0600F71778 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060165D069 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626987, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA060105F360 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060165D564 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626988, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA0601220FDC AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060165D564 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626989, 2019, 3, 4, 0, 50189, CAST(0x0000AA0600F71778 AS DateTime), CAST(0x0000AA0600F71778 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060165D564 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626990, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA060105E8D4 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060165DEB1 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626991, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA0601220FDC AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060165DEB1 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626992, 2019, 3, 4, 0, 50189, CAST(0x0000AA0600F71778 AS DateTime), CAST(0x0000AA0600F71778 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060165DEB1 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626993, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA0600F50118 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060168114D AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626994, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA0601220FDC AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060168114D AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626995, 2019, 3, 4, 0, 50189, CAST(0x0000AA0600F71778 AS DateTime), CAST(0x0000AA0600F71778 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060168114D AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626996, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA0600F4F7B8 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0601681440 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626997, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA0601220FDC AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0601681440 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626998, 2019, 3, 4, 0, 50189, CAST(0x0000AA0600F71778 AS DateTime), CAST(0x0000AA0600F71778 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0601681440 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (626999, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA0600F36498 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060168185F AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627000, 2019, 3, 4, 0, 50188, CAST(0x0000AA0600F15EA0 AS DateTime), CAST(0x0000AA0601220FDC AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060168185F AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627001, 2019, 3, 4, 0, 50189, CAST(0x0000AA0600F71778 AS DateTime), CAST(0x0000AA0600F71778 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA060168185F AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627022, 2019, 3, 6, 0, 50188, CAST(0x0000AA0800D538C4 AS DateTime), CAST(0x0000AA0800D538C4 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0800D54C5A AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627023, 2019, 3, 6, 0, 50189, NULL, NULL, 0, 0, 1, 59, 36, 2014, CAST(0x0000AA0800D66BEC AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627024, 2019, 3, 6, 0, 50190, NULL, NULL, 0, 0, 1, 59, 36, 2014, CAST(0x0000AA0800D66BEC AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627025, 2019, 3, 6, 0, 50191, NULL, NULL, 0, 0, 1, 59, 36, 2014, CAST(0x0000AA0800D66BEC AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627026, 2019, 3, 6, 0, 50188, CAST(0x0000AA0800D538C4 AS DateTime), CAST(0x0000AA0800D538C4 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0800D66BEC AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627027, 2019, 3, 6, 0, 50188, CAST(0x0000AA0800D538C4 AS DateTime), CAST(0x0000AA0800D538C4 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0800D66F12 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627028, 2019, 3, 6, 0, 50189, CAST(0x0000AA0800D6AD6C AS DateTime), CAST(0x0000AA0800D6AD6C AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0800D6CF17 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627029, 2019, 3, 6, 0, 50188, CAST(0x0000AA0800D538C4 AS DateTime), CAST(0x0000AA0800D538C4 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0800D6F4A1 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627030, 2019, 3, 6, 0, 50190, CAST(0x0000AA0800DA3874 AS DateTime), CAST(0x0000AA0800DA3874 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0800DA3DFF AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627031, 2019, 3, 6, 0, 50191, CAST(0x0000AA0800DA4558 AS DateTime), CAST(0x0000AA0800DA4558 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0800DA6127 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627032, 2019, 3, 6, 0, 50188, CAST(0x0000AA0800D538C4 AS DateTime), CAST(0x0000AA0800D538C4 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0800DB15C9 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627033, 2019, 3, 6, 0, 50188, CAST(0x0000AA0800DB1CF8 AS DateTime), CAST(0x0000AA0800DB1CF8 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0800DB3417 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627034, 2019, 3, 6, 0, 50189, CAST(0x0000AA0800EAF024 AS DateTime), CAST(0x0000AA0800EAF024 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0800EAFF0F AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627035, 2019, 3, 7, 0, 50188, CAST(0x0000AA0900B1402C AS DateTime), CAST(0x0000AA0900B14F68 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0900B15205 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627036, 2019, 3, 7, 0, 50188, CAST(0x0000AA0900B1402C AS DateTime), CAST(0x0000AA0900B14E3C AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0900B1752D AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627037, 2019, 3, 7, 0, 50188, CAST(0x0000AA0900B1402C AS DateTime), CAST(0x0000AA0900B14D10 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0900B19855 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627038, 2019, 3, 7, 0, 50188, CAST(0x0000AA0900B1402C AS DateTime), CAST(0x0000AA0900B1402C AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0900B1BB7D AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627039, 2019, 3, 7, 0, 50188, CAST(0x0000AA0900B32C5C AS DateTime), CAST(0x0000AA0900B336E8 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0900B33E35 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627040, 2019, 3, 7, 0, 50188, CAST(0x0000AA0900B32C5C AS DateTime), CAST(0x0000AA0900B32C5C AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0900B3615D AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627041, 2019, 3, 7, 0, 50189, CAST(0x0000AA0900B34750 AS DateTime), CAST(0x0000AA0900B34750 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0900B3615D AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627042, 2019, 3, 11, 0, 50188, CAST(0x0000AA0D0095586C AS DateTime), CAST(0x0000AA0D0095586C AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0D009572EA AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627043, 2019, 3, 11, 0, 50189, CAST(0x0000AA0D00983F64 AS DateTime), CAST(0x0000AA0D00984798 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0D00985532 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627044, 2019, 3, 11, 0, 50189, CAST(0x0000AA0D00983F64 AS DateTime), CAST(0x0000AA0D00983F64 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0D00987859 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627045, 2019, 3, 11, 0, 50189, CAST(0x0000AA0D00EAF024 AS DateTime), CAST(0x0000AA0D00EAFE34 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0D00EB017F AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627046, 2019, 3, 11, 0, 50189, CAST(0x0000AA0D00EAF024 AS DateTime), CAST(0x0000AA0D00EAF024 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0D00EB24AB AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627047, 2019, 3, 11, 0, 50188, CAST(0x0000AA0D00EB08C0 AS DateTime), CAST(0x0000AA0D00EB08C0 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0D00EB24AB AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627048, 2019, 3, 12, 0, 50189, CAST(0x0000AA0E008FDA2C AS DateTime), CAST(0x0000AA0E008FDA2C AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E008FF74D AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627049, 2019, 3, 12, 0, 50188, CAST(0x0000AA0E008FDDB0 AS DateTime), CAST(0x0000AA0E008FDDB0 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E008FF74D AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627050, 2019, 3, 12, 0, 50188, CAST(0x0000AA0E00CD2594 AS DateTime), CAST(0x0000AA0E00CD2C9C AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CD36FD AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627051, 2019, 3, 12, 0, 50188, CAST(0x0000AA0E00CD2594 AS DateTime), CAST(0x0000AA0E00CD42E0 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CD5A25 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627052, 2019, 3, 12, 0, 50189, CAST(0x0000AA0E00CD4D6C AS DateTime), CAST(0x0000AA0E00CD521C AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CD5A25 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627053, 2019, 3, 12, 0, 50188, CAST(0x0000AA0E00CD2594 AS DateTime), CAST(0x0000AA0E00CD6E3C AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CD7D4D AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627054, 2019, 3, 12, 0, 50189, CAST(0x0000AA0E00CD4D6C AS DateTime), CAST(0x0000AA0E00CD7B20 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CD7D4D AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627055, 2019, 3, 12, 0, 50188, CAST(0x0000AA0E00CD2594 AS DateTime), CAST(0x0000AA0E00CD7FD0 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CDA075 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627056, 2019, 3, 12, 0, 50189, CAST(0x0000AA0E00CD4D6C AS DateTime), CAST(0x0000AA0E00CD8480 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CDA075 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627057, 2019, 3, 12, 0, 50188, CAST(0x0000AA0E00CD2594 AS DateTime), CAST(0x0000AA0E00CDA550 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CDC39D AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627058, 2019, 3, 12, 0, 50189, CAST(0x0000AA0E00CD4D6C AS DateTime), CAST(0x0000AA0E00CD7670 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CDC39D AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627059, 2019, 3, 12, 0, 50188, CAST(0x0000AA0E00CD2594 AS DateTime), CAST(0x0000AA0E00CD6D10 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CDE6C5 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627060, 2019, 3, 12, 0, 50189, CAST(0x0000AA0E00CD4D6C AS DateTime), CAST(0x0000AA0E00CD6860 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CDE6C5 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627061, 2019, 3, 12, 0, 50188, CAST(0x0000AA0E00CD2594 AS DateTime), CAST(0x0000AA0E00CD6608 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CE09ED AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627062, 2019, 3, 12, 0, 50189, CAST(0x0000AA0E00CD4D6C AS DateTime), CAST(0x0000AA0E00CD6158 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CE09ED AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627063, 2019, 3, 12, 0, 50188, CAST(0x0000AA0E00CD2594 AS DateTime), CAST(0x0000AA0E00CD63B0 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CE2D15 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627064, 2019, 3, 12, 0, 50189, CAST(0x0000AA0E00CD4D6C AS DateTime), CAST(0x0000AA0E00CD4D6C AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CE2D15 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627065, 2019, 3, 12, 0, 50188, CAST(0x0000AA0E00CD2594 AS DateTime), CAST(0x0000AA0E00CD6284 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CE503D AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627066, 2019, 3, 12, 0, 50188, CAST(0x0000AA0E00CD2594 AS DateTime), CAST(0x0000AA0E00CD602C AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CE7365 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627067, 2019, 3, 12, 0, 50188, CAST(0x0000AA0E00CD2594 AS DateTime), CAST(0x0000AA0E00CD5F00 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CE968D AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627068, 2019, 3, 12, 0, 50188, CAST(0x0000AA0E00CD2594 AS DateTime), CAST(0x0000AA0E00CD3AAC AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CEB9B5 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627069, 2019, 3, 12, 0, 50188, CAST(0x0000AA0E00CD2594 AS DateTime), CAST(0x0000AA0E00CD2594 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0E00CEDCDC AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627070, 2019, 3, 12, 0, 50192, CAST(0x0000AA0E0158A1C8 AS DateTime), CAST(0x0000AA0E0159ACF8 AS DateTime), 1, 0, 2, 59, 36, 2014, CAST(0x0000AA0E015AF3CF AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627071, 2019, 3, 12, 0, 50192, CAST(0x0000AA0E0158A1C8 AS DateTime), CAST(0x0000AA0E015922B0 AS DateTime), 1, 0, 2, 59, 36, 2014, CAST(0x0000AA0E015B15FA AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627072, 2019, 3, 12, 0, 50192, CAST(0x0000AA0E0158A1C8 AS DateTime), CAST(0x0000AA0E0158A1C8 AS DateTime), 1, 0, 2, 59, 36, 2014, CAST(0x0000AA0E015B3906 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627073, 2019, 3, 12, 0, 50193, CAST(0x0000AA0E015CA584 AS DateTime), CAST(0x0000AA0E015CA584 AS DateTime), 1, 0, 2, 59, 36, 2014, CAST(0x0000AA0E015CBBC2 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627074, 2019, 3, 12, 0, 50192, CAST(0x0000AA0E015D842C AS DateTime), CAST(0x0000AA0E015D842C AS DateTime), 1, 0, 2, 59, 36, 2014, CAST(0x0000AA0E015D8EB2 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627075, 2019, 3, 12, 0, 50193, CAST(0x0000AA0E015DF4AC AS DateTime), CAST(0x0000AA0E015DF4AC AS DateTime), 1, 0, 2, 59, 36, 2014, CAST(0x0000AA0E015E1B52 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627076, 2019, 3, 12, 0, 50192, CAST(0x0000AA0E015E3C28 AS DateTime), CAST(0x0000AA0E015E3C28 AS DateTime), 1, 0, 2, 59, 36, 2014, CAST(0x0000AA0E015E61A2 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627077, 2019, 3, 13, 0, 50189, CAST(0x0000AA0F00820974 AS DateTime), CAST(0x0000AA0F00820974 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0F00821B02 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627078, 2019, 3, 13, 0, 50188, CAST(0x0000AA0F00820CF8 AS DateTime), CAST(0x0000AA0F00820CF8 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0F00821B02 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627079, 2019, 3, 13, 0, 50188, CAST(0x0000AA0F00AD889C AS DateTime), CAST(0x0000AA0F00AD889C AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0F00ADA3B0 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627080, 2019, 3, 13, 0, 50188, CAST(0x0000AA0F00BD62D0 AS DateTime), CAST(0x0000AA0F00BD6D5C AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0F00BD6EA8 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627081, 2019, 3, 13, 0, 50188, CAST(0x0000AA0F00BD62D0 AS DateTime), CAST(0x0000AA0F00BD6C30 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0F00BD91D0 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627082, 2019, 3, 13, 0, 50188, CAST(0x0000AA0F00BD62D0 AS DateTime), CAST(0x0000AA0F00BD6B04 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0F00BDB4F7 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627083, 2019, 3, 13, 0, 50188, CAST(0x0000AA0F00BD62D0 AS DateTime), CAST(0x0000AA0F00BD69D8 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0F00BDD820 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627084, 2019, 3, 13, 0, 50188, CAST(0x0000AA0F00BD62D0 AS DateTime), CAST(0x0000AA0F00BD68AC AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0F00BDFB48 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627085, 2019, 3, 13, 0, 50188, CAST(0x0000AA0F00BD62D0 AS DateTime), CAST(0x0000AA0F00BD6780 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0F00BE1E70 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627086, 2019, 3, 13, 0, 50188, CAST(0x0000AA0F00BD62D0 AS DateTime), CAST(0x0000AA0F00BD6654 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0F00BE4197 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627087, 2019, 3, 13, 0, 50188, CAST(0x0000AA0F00BD62D0 AS DateTime), CAST(0x0000AA0F00BD6528 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0F00BE64C0 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627088, 2019, 3, 13, 0, 50188, CAST(0x0000AA0F00BD62D0 AS DateTime), CAST(0x0000AA0F00BD63FC AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0F00BE87E8 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627089, 2019, 3, 13, 0, 50188, CAST(0x0000AA0F00BD62D0 AS DateTime), CAST(0x0000AA0F00BD62D0 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA0F00BEAB10 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627090, 2019, 3, 15, 0, 50188, CAST(0x0000AA1100BF83BC AS DateTime), CAST(0x0000AA1100BF83BC AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA1100BFD264 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627091, 2019, 3, 15, 0, 50189, CAST(0x0000AA1100BF8614 AS DateTime), CAST(0x0000AA1100BF8614 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA1100BFD264 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627092, 2019, 3, 16, 0, 50189, CAST(0x0000AA12008F5818 AS DateTime), CAST(0x0000AA12008F5818 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA12008F7B48 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627093, 2019, 3, 16, 0, 50188, CAST(0x0000AA12008F5A70 AS DateTime), CAST(0x0000AA12008F5A70 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA12008F7B48 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627094, 2019, 3, 18, 0, 50188, CAST(0x0000AA1400A5ECF4 AS DateTime), CAST(0x0000AA1400A5ECF4 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA1400A5FFAA AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627095, 2019, 3, 18, 0, 50189, CAST(0x0000AA1400A5EF4C AS DateTime), CAST(0x0000AA1400A5EF4C AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA1400A5FFAA AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627096, 2019, 3, 19, 0, 50188, CAST(0x0000AA1500C0E220 AS DateTime), CAST(0x0000AA1500C0E220 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA1500C104F3 AS DateTime))
INSERT [dbo].[tblAttendance] ([AttendanceId], [YearNo], [MonthNo], [DayNo], [HolidayId], [StudentMasterId], [InTime], [OutTime], [Status], [IsPosted], [IsSMSSent], [SubUserId], [UserID], [FYear], [CreatedAt]) VALUES (627097, 2019, 3, 19, 0, 50189, CAST(0x0000AA1500C0E478 AS DateTime), CAST(0x0000AA1500C0E478 AS DateTime), 1, 0, 1, 59, 36, 2014, CAST(0x0000AA1500C104F3 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblAttendance] OFF
/****** Object:  Table [dbo].[tblAdvance]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdvance](
	[AdvanceId] [int] IDENTITY(1,1) NOT NULL,
	[AdvanceFromDate] [datetime] NOT NULL,
	[AdvanceAmount] [decimal](18, 0) NOT NULL,
	[EMI] [decimal](18, 0) NOT NULL,
	[AdvanceRate] [decimal](18, 0) NULL,
	[AdvancePeriod] [int] NULL,
	[StaffID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AdvanceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAccountMaster]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAccountMaster](
	[AccountMasterId] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [varchar](200) NOT NULL,
	[CreationDate] [datetime] NULL,
	[OpeningBalance] [decimal](20, 4) NULL,
	[DRCR] [int] NULL,
	[Address] [varchar](200) NULL,
	[City] [varchar](100) NULL,
	[Phone] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Remarks] [varchar](200) NULL,
	[GroupId] [int] NULL,
	[SubUserId] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[FYear] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountMasterId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STARDC_RawData]    Script Date: 03/22/2019 17:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STARDC_RawData](
	[CardNo] [nvarchar](32) NOT NULL,
	[OfficePunch] [datetime] NOT NULL,
	[ReasonCode] [varchar](3) NOT NULL,
	[Process] [varchar](1) NULL,
	[PunchFlag] [varchar](1) NULL,
	[MachineId] [int] NOT NULL,
	[EDATE] [datetime] NOT NULL,
	[MachineNo] [varchar](50) NULL,
	[PunchType] [varchar](max) NULL,
 CONSTRAINT [PK_RawData_1] PRIMARY KEY CLUSTERED 
(
	[CardNo] ASC,
	[OfficePunch] ASC,
	[MachineId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_ProductLedger3]    Script Date: 03/22/2019 17:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Execute sp_ProductLedger3 24, -1, '2001-1-1', '2014-1-1', 2, 2012


-- DROP  PROCEDURE [sp_ProductLedger3]
CREATE  PROCEDURE [dbo].[sp_ProductLedger3]
(
   @productMasterId INT,
   @transactionId INT,
   @locationId INT,
   @fromDt DATETIME,
   @toDt DATETIME,
   @userID INT,
   @Fyear INT        
)
AS
BEGIN
    SET NOCOUNT ON;
    

	DECLARE @ResultTable table(
	---LedgerID int primary key
    billdate DATETIME
    , productLedgerNumber INT
    , ProductId INT
    , ProductName VARCHAR(100)
    , ProductName2 VARCHAR(100)
    , location VARCHAR(100)
    , location2 VARCHAR(100)
    , OpeningBalance decimal(20, 4)
	, debit decimal(20, 4)
    , credit decimal(20, 4)
 	, runningBalance decimal(20,4)
    , drcr VARCHAR(2)
    , Particulars VARCHAR(200)
	, AccountName VARCHAR(100)
	, TransactionName VARCHAR(100)
    , sourceId INT
    , flow INT
    , SubUserID INT
	, UserID INT
    , Fyear INT
     )

	DECLARE forward_cursor CURSOR FAST_FORWARD 
	FOR 

		SELECT ProductDate BillDate, -1 p1_productLedgerNumber, 'C' debitCredit, ProductName
		, 0 SoldQty, pm.OpeningBalance BoughtQty, pm.OpeningBalance balance
		, -1 productId2, '' productName2, 0 BoughtQty2, 0 SoldQty2
		, pm.locationId, pm.AccountID p2_AccountId, AccountName, LocationName, productDescription particulars
		, 0 SourceID, 'Opening Balance' TransactionName, 0 Flow, pm.userID, pm.FYear

		FROM tblProductMaster pm
		LEFT OUTER JOIN tblAccountMaster am ON am.accountMasterID = pm.accountID
        LEFT OUTER JOIN tblLocation loc ON loc.locationId = pm.locationId

		WHERE productMasterId = @productMasterId
        
		UNION

	      SELECT 
		  p1.BillDate
		  , p1.productLedgerNumber p1_productLedgerNumber
         , p1.drcr debitCredit
         , pm1.ProductName ProductName
		  , isNull(p1.soldQty, 0) SoldQty
		  , isNull(p1.BoughtQty, 0) BoughtQty
		  , (isnull(p1.BoughtQty, 0) - isNull(p1.soldQty, 0)) balance
          
          , p1.productID ProductId2
          , pm1.ProductName ProductName2
         , isNull(p1.BoughtQty2, 0) BoughtQty2
         , isNull(p1.SoldQty2, 0) SoldQty2
         , p1.LocationId
         , p1.AccountID p2_AccountId
         , AccountName 
         , LocationName 
         , particulars
         , p1.sourceId
         , TransactionName
         , Flow
         , p1.UserId
         , p1.fyear
         from tblProductLedger p1
         --INNER JOIN tblProductLedger p2 ON p1.productLedgerNumber = p2.productLedgerNumber
         LEFT OUTER JOIN tblProductMaster PM1 ON pm1.productMasterId = p1.productID
         LEFT OUTER JOIN tblAccountMaster AM ON am.accountMasterID = p1.accountID
		 LEFT OUTER JOIN tblLocation loc ON loc.locationID = p1.locationId
         LEFT OUTER JOIN tblStockTransactionMaster sm on sm.transactionId = p1.SourceId
         --LEFT OUTER JOIN vwPl2 v2 ON v2.productLedgerID = p1.productLedgerId
         
        WHERE p1.productId = @productMasterId
		--AND p1.locationid = @locationId
        AND (sourceId = (CASE WHEN @transactionID = -1 THEN sourceID  ELSE @transactionID END)
        OR SourceID = 0)
		AND p1.userID = @userID
		AND p1.FYear = @Fyear
        
	    ORDER BY BillDate, p1_productLedgerNumber, p2_AccountId	

	OPEN forward_cursor 

	DECLARE @running_balance decimal(20, 4), 
        @dt DATETIME,
		@productLedgerNumber INT,
		@debitCredit VARCHAR(2),
		@productName varchar(100),
        @soldQty decimal(20, 4),
        @boughtQty decimal(20, 4),
		@productId2 INT,
		@productName2 varchar(100),
		@soldQty2 decimal(20, 4),
        @boughtQty2 decimal(20, 4),
        
		@accountId2 INT,
		@AccountName varchar(100),
		@locationName varchar(100),
		@Particulars varchar(100),
		@sourceId INT,
		@transactionName varchar(100),
        @flow INT,
		@UserInfoID INT,
        @Fyear2 INT,

		@productId INT,
        
        @openignBalance decimal(20, 4),
        @closingBalance decimal(20, 4),
        
		@balance decimal(20, 4),
        @drcr varchar(2),

		@productLedgerNumberOld INT,
        @productIdOld INT,
		@particulars2 VARCHAR(200),
        @qty2 decimal(20, 4)
    
    

	SET @running_balance = 0
    SET @productLedgerNumberOld = 0
	SET @productIdOld = 0
    SET @particulars2 = ''
	SET @qty2 = 0
   
	FETCH NEXT FROM forward_cursor INTO 
	@dt
	, @productLedgerNumber
  	, @debitCredit
    , @productName
    
	, @soldQty
	, @boughtQty
	, @balance
	, @productId2    
	, @productName2
	, @boughtQty2
	, @soldQty2
    , @locationId
	, @accountId2
    , @AccountName 
    , @LocationName 
    , @Particulars
    , @sourceId
	, @transactionName
    , @flow
	, @UserInfoID
    , @Fyear2 
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
    
	--if transaction is Purchase (IN) and drcr='C' OR transaction is Sale(OUT) and drcr='D'
   
	if (@flow = 0 and @debitCredit='C') OR (@flow = 1 and @debitCredit='D') OR (@flow = 2)
	BEGIN
		IF @boughtQty2 > 0
				SET @qty2 = @boughtQty2
			ELSE
				SET @qty2 = @soldQty2
			
			BEGIN
	         
			 SET @openignBalance = @running_balance
			 SET @running_balance = @running_balance + @balance
			 		 


			 IF @running_balance < 0
			   BEGIN 
					SET @closingBalance = @running_balance
					SET @drcr = 'cr'
				END
			 ELSE 
				BEGIN
					SET @closingBalance = @running_balance 
					SET @drcr = 'dr'
				END 

			 IF @balance > 0 
			   BEGIN
				 SET @boughtQty = @balance
			   END
			ELSE
			  BEGIN
				
				SET @soldQty = @balance * -1
			  END
			
			
			 INSERT @ResultTable(
			billdate, productLedgerNumber
			, productName, OpeningBalance, Credit, Debit, runningBalance, drcr
			, AccountName 
			 , particulars
			, ProductName2 
			, sourceId 
			, transactionName
            , flow
			, UserID 
			, Fyear

				) 
		 VALUES(@dt, @productLedgerNumber, @productName
		, @openignBalance, @soldQty, @boughtQty,  @closingBalance, @drcr
		, @AccountName , @Particulars, @ProductName2,  @sourceId, @transactionName, @flow
		, @UserInfoID 
		, @Fyear2 
		 )
			END
	END
	--ELSE
	--	SET @Particulars = @Particulars + str(@boughtQty2) + ' ' + str(@soldQty2) + ' ' + @productName2	
	
	
	
	SET @productLedgerNumberOld	 = @productLedgerNumber
    
         FETCH NEXT FROM forward_cursor 
			INTO 
			 @dt 
			, @productLedgerNumber
			, @debitCredit
			, @productName
			, @soldQty
			, @boughtQty
			, @balance
			, @productId2
			, @productName2
			, @boughtQty2
			, @soldQty2
            
			, @locationId
			, @accountID2
	        , @AccountName 
			, @locationName
			, @Particulars
			, @sourceId 
			, @transactionName
            , @flow
			, @UserInfoID 
			, @Fyear2 
				
		

    END
	CLOSE forward_cursor
	DEALLOCATE forward_cursor

	SELECT * FROM @ResultTable
    WHERE billdate BETWEEN @fromDt AND @toDt
    ORDER BY billdate
    
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ProductLedger2]    Script Date: 03/22/2019 17:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DROP  PROCEDURE [dbo].[sp_ProductLedger2]
CREATE  PROCEDURE [dbo].[sp_ProductLedger2]
(
   @productMasterId INT,
   @locationId INT,
   @fromDt DATETIME,
   @toDt DATETIME,
   @userID INT,
   @Fyear INT        
)
AS
BEGIN
    SET NOCOUNT ON;
    

	DECLARE @ResultTable table(
	---LedgerID int primary key
    billdate DATETIME
    , productLedgerNumber INT
    , ProductId INT
    , ProductName VARCHAR(100)
    , ProductName2 VARCHAR(100)
    , location VARCHAR(100)
    , location2 VARCHAR(100)
    , OpeningBalance decimal(20, 4)
	, debit decimal(20, 4)
    , credit decimal(20, 4)
 	, runningBalance decimal(20,4)
    , drcr VARCHAR(2)
    , Particulars VARCHAR(200)
	, AccountName VARCHAR(100)
	, TransactionName VARCHAR(100)
    , sourceId INT
    , SubUserID INT
	, UserID INT
    , Fyear INT
     )

	DECLARE forward_cursor CURSOR FAST_FORWARD 
	FOR 
	      SELECT 
		  p1.BillDate
		  , p1.productLedgerNumber
		  , MAX(pm1.ProductName) ProductName
		  , isNull(MAX(p1.soldQty), 0) SoldQty
		  , isNull(MAX(p1.BoughtQty), 0) BoughtQty
		  , (isnull(MAX(p1.BoughtQty), 0) - isNull(MAX(p1.soldQty), 0)) balance
          , 0 ProductId2
          , '' ProductName2
         , 0 BoughtQty2
         , 0 SoldQty2
         , 0 LocationId
         , 0 AccountID
         , MAX(AccountName) AccountName
         , MAX(LocationName) LocationName
         , '' particulars
         , MAX(p1.sourceId)
         , MAX(TransactionName)
         , MAX(p1.UserId)
         , MAX(p1.fyear)
         from tblProductLedger p1
         INNER JOIN tblProductLedger p2 ON p1.productLedgerNumber = p2.productLedgerNumber
         LEFT OUTER JOIN tblProductMaster PM1 ON pm1.productMasterId = p1.productID
         LEFT OUTER JOIN tblProductMaster PM2 ON pm2.productMasterId = p2.productID
         LEFT OUTER JOIN tblAccountMaster AM ON am.accountMasterID = p2.accountID
         LEFT OUTER JOIN tblLocation L on l.locationId = p2.LocationID
         LEFT OUTER JOIN tblStockTransactionMaster sm on sm.transactionId = p1.SourceId
         
        WHERE p1.productId = @productMasterId
		AND p1.locationid = @locationId
		AND p1.userID = @userID
		AND p1.FYear = @Fyear
        GROUP BY p1.BillDate, p1.productLedgerNumber	
	    ORDER BY p1.BillDate, p1.productLedgerNumber	

	OPEN forward_cursor 

	DECLARE @running_balance decimal(20, 4), 
        @dt DATETIME,
		@productLedgerNumber INT,
		@productName varchar(100),
        @soldQty decimal(20, 4),
        @boughtQty decimal(20, 4),
		@productId2 INT,
		@productName2 varchar(100),
		@soldQty2 decimal(20, 4),
        @boughtQty2 decimal(20, 4),
		@accountId INT,
		@AccountName varchar(100),
		@locationName varchar(100),
		@Particulars varchar(100),
		@sourceId INT,
		@transactionName varchar(100),
		@UserInfoID INT,
        @Fyear2 INT,

		@productId INT,
        
        @openignBalance decimal(20, 4),
        @closingBalance decimal(20, 4),
        
		@balance decimal(20, 4),
        @drcr varchar(2),

		@productLedgerNumberOld INT
    
    

	SET @running_balance = 0
    SET @productLedgerNumberOld = 0
   
	FETCH NEXT FROM forward_cursor INTO 
	@dt
	, @productLedgerNumber
	, @productName
	, @soldQty
	, @boughtQty
	, @balance
	, @productId2    
	, @productName2
	, @boughtQty2
	, @soldQty2
	, @locationId
	, @accountId
    , @AccountName 
    , @LocationName 
    , @Particulars
    , @sourceId
	, @transactionName
	, @UserInfoID
    , @Fyear2 
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
    
	SET @Particulars = str(@soldQty2) + ' ' + @productName2
		
         SET @openignBalance = @running_balance
		 SET @running_balance = @running_balance + @balance
		 

         IF @running_balance < 0
           BEGIN 
				SET @closingBalance = @running_balance
				SET @drcr = 'cr'
			END
         ELSE 
			BEGIN
				SET @closingBalance = @running_balance 
                SET @drcr = 'dr'
			END 

         IF @balance > 0 
           BEGIN
             SET @boughtQty = @balance
           END
		ELSE
		  BEGIN
			
            SET @soldQty = @balance * -1
		  END
		

		 INSERT @ResultTable(
		billdate, productLedgerNumber
		, productName, OpeningBalance, Credit, Debit, runningBalance, drcr
		, AccountName 
		 , particulars
		, ProductName2 
		, sourceId 
        , transactionName
		, UserID 
		, Fyear

			) 
     VALUES(@dt, @productLedgerNumber, @productName
	, @openignBalance, @soldQty, @boughtQty,  @closingBalance, @drcr
	, @AccountName , @Particulars, @ProductName2,  @sourceId, @transactionName
    , @UserInfoID 
    , @Fyear2 
	 )
		 
         FETCH NEXT FROM forward_cursor 
			INTO 
			 @dt 
			, @productLedgerNumber
			, @productName
			, @soldQty
			, @boughtQty
			, @balance
			, @productId2
			, @productName2
			, @boughtQty2
			, @soldQty2
			, @locationId
			, @accountID
	        , @AccountName 
			, @locationName
			, @Particulars
			, @sourceId 
			, @transactionName
			, @UserInfoID 
			, @Fyear2 

		
	
	END
	CLOSE forward_cursor
	DEALLOCATE forward_cursor

	SELECT * FROM @ResultTable
    WHERE billdate BETWEEN @fromDt AND @toDt
    ORDER BY billdate
    
END
GO
/****** Object:  View [dbo].[vwledger1]    Script Date: 03/22/2019 17:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwledger1] AS 
select 
LedgerID 
, l.LedgerNumber AS LedgerNumber
, l.AccountMasterId AS acId
, a.AccountName
, l.modeId AS mode 
, aa.accountName as ModeName
, l.drcr
, l.Ldate AS lDate
, (case when (l.SourceId = 3) then '(Payment Rcd) ' + l.Particulars 
       when (l.SourceId = 4) then '(Payment Made) ' + l.Particulars
       else l.Particulars end) AS particulars
, isnull(l.Credit, 0) AS Credit
, isnull(l.Debit,0) AS debit
, l.BillNumber 
, l.CheckNumber
, l.Discount
, g.GroupName
, l.sourceId
, l.userID
, l.Fyear
, l.CreatedAT
from tblledger l
LEFT OUTER JOIN tblAccountMaster a ON a.accountMasterID = l.accountMasterId
LEFT OUTER JOIN tblAccountMaster aa ON aa.accountMasterID = l.modeId
LEFT OUTER JOIN tblGroup g ON g.groupID = a.GroupId
--order by Ldate
GO
/****** Object:  View [dbo].[vwledger]    Script Date: 03/22/2019 17:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwledger] AS 
select 
-1 LedgerID 
, -1 LedgerNumber
, a.AccountMasterId 
, a.AccountName
, -1 modeId 
, 'OB' ModeName
, 'c' drcr
, a.CreationDate AS lDate
, 'Opening Balance' AS particulars
, (CASE WHEN  DRCR = 0 THEN OpeningBalance ELSE 0 END )AS Credit
, (CASE WHEN  DRCR = 1 THEN OpeningBalance ELSE 0 END ) AS debit
, '' BillNumber 
, '' CheckNumber
, '' Discount
, g.GroupName
, 0 sourceId
, a.userID
, a.Fyear
, a.CreatedAT
from tblAccountMaster a
LEFT OUTER JOIN tblGroup g ON g.groupID = a.groupID


UNION

select 
LedgerID 
, l.LedgerNumber AS LedgerNumber
, l.AccountMasterId AS AccountMasterId
, a.AccountName
, l.modeId AS modeId 
, aa.accountName as ModeName
, l.drcr
, l.Ldate AS lDate
, (case when (l.SourceId = 3) then '(Payment Rcd) ' + l.Particulars 
       when (l.SourceId = 4) then '(Payment Made) ' + l.Particulars
       else l.Particulars end) AS particulars
, isnull(l.Credit, 0) AS Credit
, isnull(l.Debit,0) AS debit
, l.BillNumber 
, l.CheckNumber
, l.Discount
, g.GroupName
, l.sourceId
, l.userID
, l.Fyear
, l.CreatedAT
from tblledger l
LEFT OUTER JOIN tblAccountMaster a ON a.accountMasterID = l.accountMasterId
LEFT OUTER JOIN tblAccountMaster aa ON aa.accountMasterID = l.modeId
LEFT OUTER JOIN tblGroup g ON g.groupID = a.GroupId
--order by Ldate
GO
/****** Object:  View [dbo].[vwCls]    Script Date: 03/22/2019 17:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vwCls] as 
select s.classMasterId
, s.ClassName
, s2.ClassOrder 
from tblClassMaster s
JOIN tblClassMaster s2 ON s.ClassName=s2.className
where s.userID IN (3)
and s2.userId=20
GO
/****** Object:  View [dbo].[vwAttendanceByMonth]    Script Date: 03/22/2019 17:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/**  
select * from tblClassMaster  
  
  
  
  
SELECT * from tblSubUser  
select * from tblStudentMaster  
select * from tblAttendance  
  
UPDATE tblStudentMaster SET ClassMasterID =6 WHERE ClassMasterID = 1  
UPDATE tblStudentMaster SET ClassMasterID =10 WHERE ClassMasterID = 5  
  
2014-05-05 00:00:00.000  
  
select * from tblStudentMaster  
SELECT * from tblHoliday  
SELECT * from tblAttendance  
  
INSERT INTO tblHolidayStudent(HoliDayDate, HolidayName  
, HolidayShortName, UserID, FYear )  
VALUES('15/May/2014',  'ParentTeacherMeeting', 'PTM', 2, 2012)  
  
  
INSERT INTO tblHolidayStudent(HoliDayDate, HolidayName  
, HolidayShortName, UserID, FYear )  
VALUES('17/May/2014',  'Holi', 'Holi', 2, 2012)  
  
  
select * from tblHolidayStudent  
  
select DATENAME(dw, CAST('2/3/2014' as DATETIME))  
  
LEFT OUTER JOIN tblHoliday h ON  
 CAST('5/'+MonthNo+'/'+YearNo as DATETIME) BETWEEN h.holidayFromDate AND h.HolidayToDate  
  
SELECT * FROM vwAttendanceByMonth  
  
DROP VIEW vwAttendanceByMonth  
  
SELECT * FROM vwAttendanceByMonth    
WHERE 1=1 AND UserID = 2   
AND FYear =  2012 AND YearNo = 2014   
AND MonthNo = 5   
AND ClassMasterID = 6  
  
  
select * from tblClassMaster  
  
**/  
  
CREATE VIEW [dbo].[vwAttendanceByMonth] AS  
  
SELECT StudentMAsterID  
, StudentName  
, ClassMasterID  
, ClassName  
, YearNo  
, MonthNo  
, (CASE   
 WHEN DAY1=0 AND Date1 = h1.HolidayDate THEN h1.HolidayShortName   
 WHEN DATENAME(dw, Date1) = 'Sunday' THEN 'Sun'  
 WHEN DAY1=0 AND h1.HolidayDate IS NULL THEN 'A'  
 WHEN DAY1=1 THEN  'P' END) DAY1  
  
, (CASE   
 WHEN DAY2=0 AND Date2 = h2.HolidayDate THEN h2.HolidayShortName   
 WHEN DATENAME(dw, Date2) = 'Sunday' THEN 'Sun'  
 WHEN DAY2=0 AND h2.HolidayDate IS NULL THEN 'A'  
 WHEN DAY2=1 THEN  'P' END) DAY2  
  
, (CASE   
 WHEN DAY3=0 AND Date3 = h3.HolidayDate THEN h3.HolidayShortName   
 WHEN DATENAME(dw, Date3) = 'Sunday' THEN 'Sun'  
 WHEN DAY3=0 AND h3.HolidayDate IS NULL THEN 'A'  
 WHEN DAY3=1 THEN  'P' END) DAY3  
  
  
, (CASE   
 WHEN DAY4=0 AND Date4 = h4.HolidayDate THEN h4.HolidayShortName   
 WHEN DATENAME(dw, Date4) = 'Sunday' THEN 'Sun'  
 WHEN DAY4=0 AND  h4.HolidayDate IS NULL THEN 'A'  
 WHEN DAY4=1 THEN  'P' END) DAY4  
  
  
, (CASE   
 WHEN DAY5=0 AND Date5 = h5.HolidayDate THEN h5.HolidayShortName   
 WHEN DATENAME(dw, Date5) = 'Sunday' THEN 'Sun'  
 WHEN DAY5=0 AND  h5.HolidayDate IS NULL THEN 'A'  
 WHEN DAY5=1 THEN  'P' END) DAY5  
  
   
, (CASE   
 WHEN DAY6=0 AND Date6 = h6.HolidayDate THEN h6.HolidayShortName   
 WHEN DATENAME(dw, Date6) = 'Sunday' THEN 'Sun'  
 WHEN DAY6=0 AND  h6.HolidayDate IS NULL THEN 'A'  
 WHEN DAY6=1 THEN  'P' END) DAY6  
  
, (CASE   
 WHEN DAY7=0 AND Date7 = h7.HolidayDate THEN h7.HolidayShortName   
 WHEN DATENAME(dw, Date7) = 'Sunday' THEN 'Sun'  
 WHEN DAY7=0 AND  h7.HolidayDate IS NULL THEN 'A'  
 WHEN DAY7=1 THEN  'P' END) DAY7  
  
  
, (CASE   
 WHEN DAY8=0 AND Date8 = h8.HolidayDate THEN h8.HolidayShortName   
 WHEN DATENAME(dw, Date8) = 'Sunday' THEN 'Sun'  
 WHEN DAY8=0 AND  h8.HolidayDate IS NULL THEN 'A'  
 WHEN DAY8=1 THEN  'P' END) DAY8  
  
, (CASE   
 WHEN DAY9=0 AND Date9 = h9.HolidayDate THEN h9.HolidayShortName   
 WHEN DATENAME(dw, Date9) = 'Sunday' THEN 'Sun'  
 WHEN DAY9=0 AND  h9.HolidayDate IS NULL THEN 'A'  
 WHEN DAY9=1 THEN  'P' END) DAY9  
  
, (CASE   
 WHEN DAY10=0 AND Date10 = h10.HolidayDate THEN h10.HolidayShortName   
 WHEN DATENAME(dw, Date10) = 'Sunday' THEN 'Sun'  
 WHEN DAY10=0 AND  h10.HolidayDate IS NULL THEN 'A'  
 WHEN DAY10=1 THEN  'P' END) DAY10  
  
, (CASE   
 WHEN DAY11=0 AND Date11 = h11.HolidayDate THEN h11.HolidayShortName   
 WHEN DATENAME(dw, Date11) = 'Sunday' THEN 'Sun'  
 WHEN DAY11=0 AND  h11.HolidayDate IS NULL THEN 'A'  
 WHEN DAY11=1 THEN  'P' END) DAY11  
  
, (CASE   
 WHEN DAY12=0 AND Date12 = h12.HolidayDate THEN h12.HolidayShortName   
 WHEN DATENAME(dw, Date12) = 'Sunday' THEN 'Sun'  
 WHEN DAY12=0 AND  h12.HolidayDate IS NULL THEN 'A'  
 WHEN DAY12=1 THEN  'P' END) DAY12  
  
, (CASE   
 WHEN DAY13=0 AND Date13 = h13.HolidayDate THEN h13.HolidayShortName   
 WHEN DATENAME(dw, Date13) = 'Sunday' THEN 'Sun'  
 WHEN DAY13=0 AND  h13.HolidayDate IS NULL THEN 'A'  
 WHEN DAY13=1 THEN  'P' END) DAY13  
  
, (CASE   
 WHEN DAY14=0 AND Date14 = h14.HolidayDate THEN h14.HolidayShortName   
 WHEN DATENAME(dw, Date14) = 'Sunday' THEN 'Sun'  
 WHEN DAY14=0 AND  h14.HolidayDate IS NULL THEN 'A'  
 WHEN DAY14=1 THEN  'P' END) DAY14  
  
, (CASE   
 WHEN DAY15=0 AND Date15 = h15.HolidayDate THEN h15.HolidayShortName   
 WHEN DATENAME(dw, Date15) = 'Sunday' THEN 'Sun'  
 WHEN DAY15=0 AND  h15.HolidayDate IS NULL THEN 'A'  
 WHEN DAY15=1 THEN  'P' END) DAY15  
  
, (CASE   
 WHEN DAY16=0 AND Date16 = h16.HolidayDate THEN h16.HolidayShortName   
 WHEN DATENAME(dw, Date16) = 'Sunday' THEN 'Sun'  
 WHEN DAY16=0 AND  h16.HolidayDate IS NULL THEN 'A'  
 WHEN DAY16=1 THEN  'P' END) DAY16  
  
, (CASE   
 WHEN DAY17=0 AND Date17 = h17.HolidayDate THEN h17.HolidayShortName   
 WHEN DATENAME(dw, Date17) = 'Sunday' THEN 'Sun'  
 WHEN DAY17=0 AND  h17.HolidayDate IS NULL THEN 'A'  
 WHEN DAY17=1 THEN  'P' END) DAY17  
  
, (CASE   
 WHEN DAY18=0 AND Date18 = h18.HolidayDate THEN h18.HolidayShortName   
 WHEN DATENAME(dw, Date18) = 'Sunday' THEN 'Sun'  
 WHEN DAY18=0 AND  h18.HolidayDate IS NULL THEN 'A'  
 WHEN DAY18=1 THEN  'P' END) DAY18  
  
, (CASE   
 WHEN DAY19=0 AND Date19 = h19.HolidayDate THEN h19.HolidayShortName   
 WHEN DATENAME(dw, Date19) = 'Sunday' THEN 'Sun'  
 WHEN DAY19=0 AND  h19.HolidayDate IS NULL THEN 'A'  
 WHEN DAY19=1 THEN  'P' END) DAY19  
  
, (CASE   
 WHEN DAY20=0 AND Date20 = h20.HolidayDate THEN h20.HolidayShortName   
 WHEN DATENAME(dw, Date20) = 'Sunday' THEN 'Sun'  
 WHEN DAY20=0 AND  h20.HolidayDate IS NULL THEN 'A'  
 WHEN DAY20=1 THEN  'P' END) DAY20  
  
, (CASE   
 WHEN DAY21=0 AND Date21 = h21.HolidayDate THEN h21.HolidayShortName   
 WHEN DATENAME(dw, Date21) = 'Sunday' THEN 'Sun'  
 WHEN DAY21=0 AND  h21.HolidayDate IS NULL THEN 'A'  
 WHEN DAY21=1 THEN  'P' END) DAY21  
  
, (CASE   
 WHEN DAY22=0 AND Date22 = h22.HolidayDate THEN h22.HolidayShortName   
 WHEN DATENAME(dw, Date22) = 'Sunday' THEN 'Sun'  
 WHEN DAY22=0 AND  h22.HolidayDate IS NULL THEN 'A'  
 WHEN DAY22=1 THEN  'P' END) DAY22  
  
, (CASE   
 WHEN DAY23=0 AND Date23 = h23.HolidayDate THEN h23.HolidayShortName   
 WHEN DATENAME(dw, Date23) = 'Sunday' THEN 'Sun'  
 WHEN DAY23=0 AND  h23.HolidayDate IS NULL THEN 'A'  
 WHEN DAY23=1 THEN  'P' END) DAY23  
, (CASE   
 WHEN DAY24=0 AND Date24 = h24.HolidayDate THEN h24.HolidayShortName   
 WHEN DATENAME(dw, Date24) = 'Sunday' THEN 'Sun'  
 WHEN DAY24=0 AND  h24.HolidayDate IS NULL THEN 'A'  
 WHEN DAY24=1 THEN  'P' END) DAY24  
  
, (CASE   
 WHEN DAY25=0 AND Date25 = h25.HolidayDate THEN h25.HolidayShortName   
 WHEN DATENAME(dw, Date25) = 'Sunday' THEN 'Sun'  
 WHEN DAY25=0 AND  h25.HolidayDate IS NULL THEN 'A'  
   
 WHEN DAY25=1 THEN  'P' END) DAY25  
, (CASE   
 WHEN DAY26=0 AND Date26 = h26.HolidayDate THEN h26.HolidayShortName   
 WHEN DATENAME(dw, Date26) = 'Sunday' THEN 'Sun'  
 WHEN DAY26=0 AND  h26.HolidayDate IS NULL THEN 'A'  
 WHEN DAY26=1 THEN  'P' END) DAY26  
  
, (CASE   
 WHEN DAY27=0 AND Date27 = h27.HolidayDate THEN h27.HolidayShortName   
 WHEN DATENAME(dw, Date27) = 'Sunday' THEN 'Sun'  
 WHEN DAY27=0 AND  h27.HolidayDate IS NULL THEN 'A'  
 WHEN DAY27=1 THEN  'P' END) DAY27  
  
, (CASE   
 WHEN DAY28=0 AND Date28 = h28.HolidayDate THEN h28.HolidayShortName   
 WHEN DATENAME(dw, Date28) = 'Sunday' THEN 'Sun'  
 WHEN DAY28=0 AND  h28.HolidayDate IS NULL THEN 'A'  
 WHEN DAY28=1 THEN  'P' END) DAY28  
  
, (CASE   
 WHEN DAY29=0 AND Date29 = h29.HolidayDate THEN h29.HolidayShortName   
 WHEN DATENAME(dw, Date29) = 'Sunday' THEN 'Sun'  
 WHEN DAY29=0 AND  h29.HolidayDate IS NULL THEN 'A'  
 WHEN DAY29=1 THEN  'P' END) DAY29  
  
, (CASE   
 WHEN DAY30=0 AND Date30 = h30.HolidayDate THEN h30.HolidayShortName   
 WHEN DATENAME(dw, Date30) = 'Sunday' THEN 'Sun'  
 WHEN DAY30=0 AND  h30.HolidayDate IS NULL THEN 'A'  
 WHEN DAY30=1 THEN  'P' END) DAY30  
  
, (CASE   
 WHEN DAY31=0 AND Date31 = h31.HolidayDate THEN h31.HolidayShortName   
 WHEN DATENAME(dw, Date31) = 'Sunday' THEN 'Sun'  
 WHEN DAY31=0 AND  h31.HolidayDate IS NULL THEN 'A'  
 WHEN DAY31=1 THEN  'P' END) DAY31  
  
, T2.SubUserID  
, T2.UserID  
, T2.FYear   
  
  
FROM  
(  
SELECT  
T1.StudentMasterID  
, StudentNAme  
, c.ClassMasterID  
, ClassName  
, YearNo  
, MonthNo  
, MAX(DAY1) DAY1  
, CAST(CAST(MonthNo as VARCHAR)+'/01/'+CAST(YearNo as VARCHAR) as DATETIME) DATE1  
, MAX(DAY2) DAY2  
, CAST(CAST(MonthNo as VARCHAR)+'/02/'+CAST(YearNo as VARCHAR) as DATETIME) DATE2  
, MAX(DAY3) DAY3  
, CAST(CAST(MonthNo as VARCHAR)+'/03/'+CAST(YearNo as VARCHAR) as DATETIME) DATE3  
, MAX(DAY4) DAY4  
, CAST(CAST(MonthNo as VARCHAR)+'/04/'+CAST(YearNo as VARCHAR) as DATETIME) DATE4  
  
, MAX(DAY5) DAY5  
, CAST(CAST(MonthNo as VARCHAR)+'/05/'+CAST(YearNo as VARCHAR) as DATETIME) DATE5  
  
, MAX(DAY6) DAY6  
, CAST(CAST(MonthNo as VARCHAR)+'/06/'+CAST(YearNo as VARCHAR) as DATETIME) DATE6  
  
, MAX(DAY7) DAY7  
, CAST(CAST(MonthNo as VARCHAR)+'/07/'+CAST(YearNo as VARCHAR) as DATETIME) DATE7  
  
, MAX(DAY8) DAY8  
, CAST(CAST(MonthNo as VARCHAR)+'/08/'+CAST(YearNo as VARCHAR) as DATETIME) DATE8  
  
, MAX(DAY9) DAY9  
, CAST(CAST(MonthNo as VARCHAR)+'/09/'+CAST(YearNo as VARCHAR) as DATETIME) DATE9  
  
, MAX(DAY10) DAY10  
, CAST(CAST(MonthNo as VARCHAR)+'/10/'+CAST(YearNo as VARCHAR) as DATETIME) DATE10  
  
, MAX(DAY11) DAY11  
, CAST(CAST(MonthNo as VARCHAR)+'/11/'+CAST(YearNo as VARCHAR) as DATETIME) DATE11  
  
, MAX(DAY12) DAY12  
, CAST(CAST(MonthNo as VARCHAR)+'/12/'+CAST(YearNo as VARCHAR) as DATETIME) DATE12  
  
, MAX(DAY13) DAY13  
, CAST(CAST(MonthNo as VARCHAR)+'/13/'+CAST(YearNo as VARCHAR) as DATETIME) DATE13  
  
, MAX(DAY14) DAY14  
, CAST(CAST(MonthNo as VARCHAR)+'/14/'+CAST(YearNo as VARCHAR) as DATETIME) DATE14  
  
, MAX(DAY15) DAY15  
, CAST(CAST(MonthNo as VARCHAR)+'/15/'+CAST(YearNo as VARCHAR) as DATETIME) DATE15  
  
, MAX(DAY16) DAY16  
, CAST(CAST(MonthNo as VARCHAR)+'/16/'+CAST(YearNo as VARCHAR) as DATETIME) DATE16  
  
, MAX(DAY17) DAY17  
  
, CAST(CAST(MonthNo as VARCHAR)+'/17/'+CAST(YearNo as VARCHAR) as DATETIME) DATE17  
,  MAX(DAY18) DAY18  
, CAST(CAST(MonthNo as VARCHAR)+'/18/'+CAST(YearNo as VARCHAR) as DATETIME) DATE18  
  
, MAX(DAY19) DAY19  
, CAST(CAST(MonthNo as VARCHAR)+'/19/'+CAST(YearNo as VARCHAR) as DATETIME) DATE19  
  
,  MAX(DAY20) DAY20  
, CAST(CAST(MonthNo as VARCHAR)+'/20/'+CAST(YearNo as VARCHAR) as DATETIME) DATE20  
  
, MAX(DAY21) DAY21  
, CAST(CAST(MonthNo as VARCHAR)+'/21/'+CAST(YearNo as VARCHAR) as DATETIME) DATE21  
  
, MAX(DAY22) DAY22  
, CAST(CAST(MonthNo as VARCHAR)+'/21/'+CAST(YearNo as VARCHAR) as DATETIME) DATE22  
  
, MAX(DAY23) DAY23  
, CAST(CAST(MonthNo as VARCHAR)+'/23/'+CAST(YearNo as VARCHAR) as DATETIME) DATE23  
  
, MAX(DAY24) DAY24  
, CAST(CAST(MonthNo as VARCHAR)+'/24/'+CAST(YearNo as VARCHAR) as DATETIME) DATE24  
  
, MAX(DAY25) DAY25  
, CAST(CAST(MonthNo as VARCHAR)+'/25/'+CAST(YearNo as VARCHAR) as DATETIME) DATE25  
  
, MAX(DAY26) DAY26  
, CAST(CAST(MonthNo as VARCHAR)+'/26/'+CAST(YearNo as VARCHAR) as DATETIME) DATE26  
  
, MAX(DAY27) DAY27  
, CAST(CAST(MonthNo as VARCHAR)+'/27/'+CAST(YearNo as VARCHAR) as DATETIME) DATE27  
  
, MAX(DAY28) DAY28  
, CAST(CAST(MonthNo as VARCHAR)+'/28/'+CAST(YearNo as VARCHAR) as DATETIME) DATE28  
  
, MAX(DAY29) DAY29  
, CASE WHEN IsDAte(CAST(MonthNo as VARCHAR)+'/29/'+CAST(YearNo as VARCHAR))=1  
     THEN (CAST(CAST(MonthNo as VARCHAR)+'/29/'+CAST(YearNo as VARCHAR) as DATETIME)) ELSE NULL END DATE29  
  
  
, MAX(DAY30) DAY30  
, CASE WHEN IsDAte(CAST(MonthNo as VARCHAR)+'/30/'+CAST(YearNo as VARCHAR))=1  
     THEN (CAST(CAST(MonthNo as VARCHAR)+'/30/'+CAST(YearNo as VARCHAR) as DATETIME)) ELSE NULL END DATE30  
  
  
, MAX(DAY31) DAY31  
, CASE WHEN IsDAte(CAST(MonthNo as VARCHAR)+'/31/'+CAST(YearNo as VARCHAR))=1  
     THEN (CAST(CAST(MonthNo as VARCHAR)+'/31/'+CAST(YearNo as VARCHAR) as DATETIME)) ELSE NULL END DATE31  
   
, T1.SubUserID  
, T1.UserID  
, T1.FYear   
  
FROM  
(  
SELECT  
StudentMasterID  
, DayNo  
, YearNo  
, MonthNo  
, (CASE WHEN DayNo=1 AND a.status = 1 THEN 1 ELSE 0 END) DAY1  
, (CASE WHEN DayNo=2 AND a.status = 1 THEN 1 ELSE 0 END) DAY2  , (CASE WHEN DayNo=3 AND a.status = 1 THEN 1 ELSE 0 END) DAY3  
, (CASE WHEN DayNo=4 AND a.status = 1 THEN 1 ELSE 0 END) DAY4  
, (CASE WHEN DayNo=5 AND a.status = 1 THEN 1 ELSE 0 END) DAY5  
, (CASE WHEN DayNo=6 AND a.status = 1 THEN 1 ELSE 0 END) DAY6  
, (CASE WHEN DayNo=7 AND a.status = 1 THEN 1 ELSE 0 END) DAY7  
, (CASE WHEN DayNo=8 AND a.status = 1 THEN 1 ELSE 0 END) DAY8  
, (CASE WHEN DayNo=9 AND a.status = 1 THEN 1 ELSE 0 END) DAY9  
, (CASE WHEN DayNo=10 AND a.status = 1 THEN 1 ELSE 0 END) DAY10  
, (CASE WHEN DayNo=11 AND a.status = 1 THEN 1 ELSE 0 END) DAY11  
, (CASE WHEN DayNo=12 AND a.status = 1 THEN 1 ELSE 0 END) DAY12  
, (CASE WHEN DayNo=13 AND a.status = 1 THEN 1 ELSE 0 END) DAY13  
, (CASE WHEN DayNo=14 AND a.status = 1 THEN 1 ELSE 0 END) DAY14  
, (CASE WHEN DayNo=16 AND a.status = 1 THEN 1 ELSE 0 END) DAY16  
, (CASE WHEN DayNo=15 AND a.status = 1 THEN 1 ELSE 0 END) DAY15  
, (CASE WHEN DayNo=17 AND a.status = 1 THEN 1 ELSE 0 END) DAY17  
, (CASE WHEN DayNo=18 AND a.status = 1 THEN 1 ELSE 0 END) DAY18  
, (CASE WHEN DayNo=19 AND a.status = 1 THEN 1 ELSE 0 END) DAY19  
, (CASE WHEN DayNo=20 AND a.status = 1 THEN 1 ELSE 0 END) DAY20  
, (CASE WHEN DayNo=21 AND a.status = 1 THEN 1 ELSE 0 END) DAY21  
, (CASE WHEN DayNo=22 AND a.status = 1 THEN 1 ELSE 0 END) DAY22  
, (CASE WHEN DayNo=23 AND a.status = 1 THEN 1 ELSE 0 END) DAY23  
, (CASE WHEN DayNo=24 AND a.status = 1 THEN 1 ELSE 0 END) DAY24  
, (CASE WHEN DayNo=25 AND a.status = 1 THEN 1 ELSE 0 END) DAY25  
, (CASE WHEN DayNo=26 AND a.status = 1 THEN 1 ELSE 0 END) DAY26  
, (CASE WHEN DayNo=27 AND a.status = 1 THEN 1 ELSE 0 END) DAY27  
, (CASE WHEN DayNo=28 AND a.status = 1 THEN 1 ELSE 0 END) DAY28  
, (CASE WHEN DayNo=29 AND a.status = 1 THEN 1 ELSE 0 END) DAY29  
, (CASE WHEN DayNo=30 AND a.status = 1 THEN 1 ELSE 0 END) DAY30  
, (CASE WHEN DayNo=31 AND a.status = 1 THEN 1 ELSE 0 END) DAY31  
, SubUserID  
, UserID  
, FYear  
  
FROM tblAttendance a  
--WHERE a.monthNo = 5 AND a.YearNo = 2014  
GROUP By StudentMasterID, dayNo, status, YearNo, MonthNo  
, SubUserID  
, UserID  
, FYear  
) as T1  
LEFT OUTER JOIN tblStudentMaster s ON s.StudentMasterId = T1.StudentMasterID  
LEFT OUTER JOIN tblClassMaster c ON c.ClassMasterID = s.ClassID   
  
GROUP By T1.StudentMasterID  
, StudentName  
, c.ClassMasterID  
, ClassName  
, yearNo  
, MonthNo  
, T1.SubUserID  
, T1.UserID  
, T1.FYear   
  
) AS T2  
LEFT OUTER JOIN tblHolidayStudent h1 ON DATE1 = h1.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h2 ON DATE2 = h2.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h3 ON DATE3 = h3.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h4 ON DATE4 = h4.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h5 ON DATE5 = h5.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h6 ON DATE6 = h6.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h7 ON DATE7 = h7.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h8 ON DATE8 = h8.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h9 ON DATE9 = h9.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h10 ON DATE10 = h10.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h11 ON DATE11 = h11.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h12 ON DATE12 = h12.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h13 ON DATE13 = h13.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h14 ON DATE14 = h14.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h15 ON DATE15 = h15.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h16 ON DATE16 = h16.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h17 ON DATE17 = h17.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h18 ON DATE18 = h18.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h19 ON DATE19 = h19.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h20 ON DATE20 = h20.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h21 ON DATE21 = h21.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h22 ON DATE22 = h22.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h23 ON DATE23 = h23.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h24 ON DATE24 = h24.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h25 ON DATE25 = h25.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h26 ON DATE26 = h26.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h27 ON DATE27 = h27.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h28 ON DATE28 = h28.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h29 ON DATE29 = h29.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h30 ON DATE30 = h30.holidayDate   
LEFT OUTER JOIN tblHolidayStudent h31 ON DATE31 = h31.holidayDate
GO
/****** Object:  View [dbo].[vwPL1]    Script Date: 03/22/2019 17:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwPL1] AS
select p1.productLedgerId
, p1.productLedgerNumber 
, p1.accountid
, p1.locationId
, p1.productId

, p1.boughtQty
, p1.soldQty
, p1.boughtQty2
, p1.soldQty2
, cast(p1.productId as varchar) + ' Location ' + cast(p1.locationId as varchar)+ ' Account ' + cast(p1.accountid as varchar) ParticularsId
--, ProductName + ' (Qty:' + cast(p1.boughtQty as varchar) + ' ' + cast(p1.soldQty as varchar) + ' Location: ' + locationName  + ' Account: '+ AccountName +')' Particulars
, ProductName + ' (Qty:'+ cast(isnull(p1.boughtQty, 0) as varchar)+' Location:' + locationName  + ' Account:'+ AccountName +')' Particulars
from tblProductLedger p1
 INNER JOIN tblProductLedger p2 ON p1.productLedgerNumber = p2.productLedgerNumber
 LEFT OUTER JOIN tblProductMaster PM1 ON pm1.productMasterId = p2.productID
 LEFT OUTER JOIN tblAccountMaster AM ON am.accountMasterID = p2.accountID
 LEFT OUTER JOIN tblLocation L on l.locationId = p2.LocationID
GO
/****** Object:  View [dbo].[vwLedger3]    Script Date: 03/22/2019 17:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwLedger3] AS
select ledgerNumber 
, ldate
, accountMasterID 
, SUM(isnull(debit, 0)) - SUM(isnull(credit, 0)) balance
from tblLedger
where accountmasterId = 6
GROUP BY ldate, ledgerNumber, accountMasterID
GO
/****** Object:  View [dbo].[vwProductLedger]    Script Date: 03/22/2019 17:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwProductLedger] AS
select 
 CreatedAt billdate
, productMasterID productId
, -1 productId2
, productID product
, productName
, '' productName2
,  openingBalance BoughtQty
,  0 SoldQty
, 0 BoughtQty2
, 0 SoldQty2
, -1 locationId
, '' locationName
, -1 locationId2
, '' locationName2
, 'Opening Balance' particulars
, SubUserId
, userId
, FYear
, CreatedAt
from tblProductMaster
UNION
select 
pl.BillDate
, pl.productID
, pl.productid2
, pm.productID product
, pm.productName
, pm2.productName productName2
, pl.BoughtQty
, pl.SoldQty
, pl.BoughtQty2
, pl.SoldQty2
, pl.locationId
, l.locationName
, pl.locationId2
, l2.locationName locationName2
, pl.particulars
, pl.SubUserId
, pl.userId
, pl.FYear
, pl.CreatedAt 
from tblProductLedger pl
LEFT OUTER JOIN tblProductMaster pm ON pm.productMasterId = pl.productid
LEFT OUTER JOIN tblProductMaster pm2 ON pm2.productMasterId = pl.productid2
LEFT OUTER JOIN tblLocation l on l.locationId = pl.locationId
LEFT OUTER JOIN tblLocation l2 on l2.locationId = pl.locationId2
GO
/****** Object:  View [dbo].[vwPL2]    Script Date: 03/22/2019 17:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwPL2] As
SELECT p.productLedgerID, p.productLedgerNumber, 
       STUFF(ISNULL((SELECT ', ' + particulars
                FROM vwPl1 x
               WHERE x.productLedgerNumber = p.productLedgerNumber
            GROUP BY x.particulars
             FOR XML PATH (''), TYPE).value('.','VARCHAR(max)'), ''), 1, 2, '') Particulars
  FROM vwPl1 p
GROUP BY p.productLedgerID, p.productLedgerNumber, p.accountId, p.locationid, p.productId
GO
/****** Object:  View [dbo].[vwledger2]    Script Date: 03/22/2019 17:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vwledger2] AS 
select 
 a.lDate AS ldate
 , SUM(a.balance) balance
 , SUM(b.balance) runningBalance 
 from (vwledger3 a join vwledger3 b on((a.lDate <= b.lDate))) 
group by a.lDate
GO
/****** Object:  StoredProcedure [dbo].[sp_ProductLedger]    Script Date: 03/22/2019 17:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ProductLedger]
(
    @accountMasterId INT,
   @fromDt DATETIME,
   @toDt DATETIME,
    @userID INT,
    @Fyear INT        
)
AS
BEGIN
    SET NOCOUNT ON;
    

	DECLARE @ResultTable table(LedgerID int primary key
    , Ldate DATETIME
    , LedgerNumber INT
	, accountId INT
    , ModeId INT
     , AccountName VARCHAR(100)
    , ModeName VARCHAR(100)
    , OpeningBalance decimal(20, 4)
	, debit decimal(20, 4)
    , credit decimal(20, 4)
 	, runningBalance decimal(20,4)
    , drcr VARCHAR(2)
   , Particulars VARCHAR(100)
    , BillNumber VARCHAR(20)
	, CheckNumber VARCHAR(20)
	, Discount VARCHAR(30)
	, GroupName VARCHAR(100)
	, sourceId INT
    , UserID INT
    , Fyear INT
     )

	DECLARE forward_cursor CURSOR FAST_FORWARD 
	FOR 
	 SELECT
        ledgerID
        , ldate
		, ledgerNumber
        , accountMasterId
        , ModeId
      	, debit
        , credit
        , (debit - credit) balance
		, AccountName 
		, ModeName 
        , Particulars
		, BillNumber 
		, CheckNumber
		, Discount 
		, GroupName 
		, sourceId 
		, UserID 
		, Fyear 
		FROM vwLedger
		WHERE accountmasterID = @accountMasterId
		AND userID = @userID
		AND FYear = @Fyear
	   ORDER BY ldate	

	OPEN forward_cursor 

	DECLARE @running_balance decimal(20, 4), 
		@ledgerNum int, 
        @ledgerId int, 
        @dt DATETIME,
        @accId INT,
        @modId INT,
        @openignBalance decimal(20, 4),
        @closingBalance decimal(20, 4),
        @debit decimal(20, 4),
        @credit decimal(20, 4),
		@balance decimal(20, 4),
        @drcr varchar(2)
    , @AccountName varchar(100)
    , @ModeName varchar(100)
    , @Particulars varchar(100)
    , @BillNumber varchar(20)
	, @CheckNumber varchar(20)
	, @Discount varchar(30)
	, @GroupName varchar(100)
	, @sourceId INT
    , @UserInfoID INT
    , @Fyear2 INT


	SET @running_balance = 0
    
   
	FETCH NEXT FROM forward_cursor INTO @ledgerId, @dt, @ledgerNum, @accId, @modId
    , @debit, @credit, @balance
    , @AccountName 
    , @ModeName 
    , @Particulars
    , @BillNumber 
	, @CheckNumber
	, @Discount 
	, @GroupName 
	, @sourceId 
    , @UserInfoID 
    , @Fyear2 
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
         
         SET @openignBalance = @running_balance
		 SET @running_balance = @running_balance + @balance

         IF @running_balance < 0
           BEGIN 
				SET @closingBalance = @running_balance * -1
				SET @drcr = 'cr'
			END
         ELSE 
			BEGIN
				SET @closingBalance = @running_balance 
                SET @drcr = 'dr'
			END 

         IF @balance > 0 
           BEGIN
         	 
             SET @debit = @balance
           END
		ELSE
		  BEGIN
			
            SET @credit = @balance * -1
		  END
		 

		 INSERT @ResultTable(ledgerID, ldate, ledgerNumber, accountId, ModeId, OpeningBalance, debit, credit, runningBalance, drcr
			, AccountName 
		, ModeName 
        , particulars
		, BillNumber 
		, CheckNumber
		, Discount 
		, GroupName 
		, sourceId 
		, UserID 
		, Fyear

			) 
                        VALUES(@ledgerId, @dt, @ledgerNum, @accId, @modId, @openignBalance, @debit, @credit, @closingBalance, @drcr
	, @AccountName , @ModeName , @Particulars, @BillNumber , @CheckNumber, @Discount , @GroupName , @sourceId 
    , @UserInfoID 
    , @Fyear2 
	 )
		 
         FETCH NEXT FROM forward_cursor INTO @ledgerId, @dt, @ledgerNum, @accId, @modId,  @debit, @credit, @balance
	        , @AccountName 
			, @ModeName 
            , @Particulars
			, @BillNumber 
			, @CheckNumber
			, @Discount 
			, @GroupName 
			, @sourceId 
			, @UserInfoID 
			, @Fyear2 

	END

	CLOSE forward_cursor
	DEALLOCATE forward_cursor

	SELECT * FROM @ResultTable
    WHERE lDate BETWEEN @fromDt AND @toDt
    ORDER BY ldate
    
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ledger]    Script Date: 03/22/2019 17:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ledger]
(
    @accountMasterId INT,
   @fromDt DATETIME,
   @toDt DATETIME,
    @userID INT,
    @Fyear INT        
)
AS
BEGIN
    SET NOCOUNT ON;
    

	DECLARE @ResultTable table(LedgerID int primary key
    , Ldate DATETIME
    , LedgerNumber INT
	, accountId INT
    , ModeId INT
     , AccountName VARCHAR(100)
    , ModeName VARCHAR(100)
    , OpeningBalance decimal(20, 4)
	, debit decimal(20, 4)
    , credit decimal(20, 4)
 	, runningBalance decimal(20,4)
    , drcr VARCHAR(2)
   , Particulars VARCHAR(100)
    , BillNumber VARCHAR(20)
	, CheckNumber VARCHAR(20)
	, Discount VARCHAR(30)
	, GroupName VARCHAR(100)
	, sourceId INT
    , UserID INT
    , Fyear INT
     )

	DECLARE forward_cursor CURSOR FAST_FORWARD 
	FOR 
	 SELECT
        ledgerID
        , ldate
		, ledgerNumber
        , accountMasterId
        , ModeId
      	, debit
        , credit
        , (debit - credit) balance
		, AccountName 
		, ModeName 
        , Particulars
		, BillNumber 
		, CheckNumber
		, Discount 
		, GroupName 
		, sourceId 
		, UserID 
		, Fyear 
		FROM vwLedger
		WHERE accountmasterID = @accountMasterId
		AND userID = @userID
		AND FYear = @Fyear
	   ORDER BY ldate	

	OPEN forward_cursor 

	DECLARE @running_balance decimal(20, 4), 
		@ledgerNum int, 
        @ledgerId int, 
        @dt DATETIME,
        @accId INT,
        @modId INT,
        @openignBalance decimal(20, 4),
        @closingBalance decimal(20, 4),
        @debit decimal(20, 4),
        @credit decimal(20, 4),
		@balance decimal(20, 4),
        @drcr varchar(2)
    , @AccountName varchar(100)
    , @ModeName varchar(100)
    , @Particulars varchar(100)
    , @BillNumber varchar(20)
	, @CheckNumber varchar(20)
	, @Discount varchar(30)
	, @GroupName varchar(100)
	, @sourceId INT
    , @UserInfoID INT
    , @Fyear2 INT


	SET @running_balance = 0
    
   
	FETCH NEXT FROM forward_cursor INTO @ledgerId, @dt, @ledgerNum, @accId, @modId
    , @debit, @credit, @balance
    , @AccountName 
    , @ModeName 
    , @Particulars
    , @BillNumber 
	, @CheckNumber
	, @Discount 
	, @GroupName 
	, @sourceId 
    , @UserInfoID 
    , @Fyear2 
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
         
         SET @openignBalance = @running_balance
		 SET @running_balance = @running_balance + @balance

         IF @running_balance < 0
           BEGIN 
				SET @closingBalance = @running_balance * -1
				SET @drcr = 'cr'
			END
         ELSE 
			BEGIN
				SET @closingBalance = @running_balance 
                SET @drcr = 'dr'
			END 

         IF @balance > 0 
           BEGIN
         	 
             SET @debit = @balance
           END
		ELSE
		  BEGIN
			
            SET @credit = @balance * -1
		  END
		 

		 INSERT @ResultTable(ledgerID, ldate, ledgerNumber, accountId, ModeId, OpeningBalance, debit, credit, runningBalance, drcr
			, AccountName 
		, ModeName 
        , particulars
		, BillNumber 
		, CheckNumber
		, Discount 
		, GroupName 
		, sourceId 
		, UserID 
		, Fyear

			) 
                        VALUES(@ledgerId, @dt, @ledgerNum, @accId, @modId, @openignBalance, @debit, @credit, @closingBalance, @drcr
	, @AccountName , @ModeName , @Particulars, @BillNumber , @CheckNumber, @Discount , @GroupName , @sourceId 
    , @UserInfoID 
    , @Fyear2 
	 )
		 
         FETCH NEXT FROM forward_cursor INTO @ledgerId, @dt, @ledgerNum, @accId, @modId,  @debit, @credit, @balance
	        , @AccountName 
			, @ModeName 
            , @Particulars
			, @BillNumber 
			, @CheckNumber
			, @Discount 
			, @GroupName 
			, @sourceId 
			, @UserInfoID 
			, @Fyear2 

	END

	CLOSE forward_cursor
	DEALLOCATE forward_cursor

	SELECT * FROM @ResultTable
    WHERE lDate BETWEEN @fromDt AND @toDt
    ORDER BY ldate
    
END
GO
/****** Object:  Default [DF__tblUtil__Created__300424B4]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblUtil] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblUserPe__Creat__74AE54BC]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblUserPermissions] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblUserIn__Count__1F98B2C1]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblUserInfo] ADD  DEFAULT ('INDIA') FOR [Country]
GO
/****** Object:  Default [DF__tblUserIn__IsAct__208CD6FA]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblUserInfo] ADD  DEFAULT ('Y') FOR [IsActive]
GO
/****** Object:  Default [DF__tblUserIn__UserT__2180FB33]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblUserInfo] ADD  DEFAULT ((1)) FOR [UserType]
GO
/****** Object:  Default [DF__tblUserIn__FYear__22751F6C]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblUserInfo] ADD  DEFAULT (getdate()) FOR [FYear]
GO
/****** Object:  Default [DF__tblUserIn__Creat__236943A5]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblUserInfo] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblUserIn__SMSBa__27F8EE98]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblUserInfo] ADD  DEFAULT ((0)) FOR [SMSBalance]
GO
/****** Object:  Default [DF__tblUserIn__IsUni__3BFFE745]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblUserInfo] ADD  DEFAULT ((0)) FOR [IsUnicode]
GO
/****** Object:  Default [DF__tblUserIn__SMSDe__6225902D]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblUserInfo] ADD  DEFAULT ((90)) FOR [SMSDelivery]
GO
/****** Object:  Default [DF__tblUOM__CreatedA__014935CB]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblUOM] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblTerm__Created__5D95E53A]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblTerm] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblTeache__Creat__440B1D61]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblTeacherSubjects] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblTeache__Creat__3F466844]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblTeacherClasses] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblTC__CreatedAt__7720AD13]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblTC] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblTaxMas__Creat__3A81B327]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblTaxMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblTax__CreatedA__19DFD96B]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblTax] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblSubuse__Creat__571DF1D5]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblSubuser] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblSubuse__IsAdm__5812160E]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblSubuser] ADD  DEFAULT ((0)) FOR [IsAdmin]
GO
/****** Object:  Default [DF__tblSubjec__Creat__4A8310C6]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblSubjectMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblSubjec__Creat__40F9A68C]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblSubjectGroupMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblStuden__Creat__48CFD27E]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblStudentMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblStockT__Creat__2CF2ADDF]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblStockTransactionMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblSource__Creat__58D1301D]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblSource] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblSMSSen__Creat__22401542]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblSMSSent] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblSMSPur__Creat__2704CA5F]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblSMSPurchased] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblSMS__CreatedA__540C7B00]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblSMS] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblSectio__Creat__4F47C5E3]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblSectionMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblSalary__Creat__02FC7413]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblSalary] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblProduc__Creat__45BE5BA9]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblProductToDetail] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblProduc__Creat__0AD2A005]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblProductMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblProduc__Produ__0BC6C43E]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblProductMaster] ADD  DEFAULT (getdate()) FOR [ProductDate]
GO
/****** Object:  Default [DF__tblProduc__ReOrd__0CBAE877]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblProductMaster] ADD  DEFAULT ((0)) FOR [ReOrderQty]
GO
/****** Object:  Default [DF__tblProduc__Creat__367C1819]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblProductLedger] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblProduc__Creat__6FE99F9F]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblProductCategory] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblPermis__Creat__5CD6CB2B]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblPermissions] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblPermis__Creat__0C85DE4D]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblPermission] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblLWP__CreatedA__060DEAE8]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblLWP] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblLocati__Creat__164452B1]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblLocation] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblLedger__Creat__66603565]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblLedger] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblHRA__CreatedA__6B24EA82]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblHRA] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblHome__Created__52593CB8]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblHome] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblHolida__Creat__14270015]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblHolidayStudent] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblGroup__Create__1B0907CE]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblGroup] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblExamMa__IsFor__34C8D9D1]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblExamMaster] ADD  DEFAULT ((0)) FOR [IsFormula]
GO
/****** Object:  Default [DF__tblExamMa__Creat__35BCFE0A]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblExamMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblExamMa__Marks__29572725]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblExamMarks] ADD  DEFAULT ('0') FOR [MarksObtained]
GO
/****** Object:  Default [DF__tblExamMa__IsPre__2A4B4B5E]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblExamMarks] ADD  DEFAULT ((1)) FOR [IsPresent]
GO
/****** Object:  Default [DF__tblExamMa__Creat__2B3F6F97]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblExamMarks] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblESI__CreatedA__07C12930]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblESI] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblEPF__CreatedA__117F9D94]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblEPF] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblEnq__CreatedA__31B762FC]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblEnq] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblDesign__Creat__4D94879B]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblDesignation] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblDA__CreatedAt__619B8048]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblDA] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblClassM__Creat__3B40CD36]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblClassMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblAttend__Creat__282DF8C2]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblAttendanceStatus] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblAttend__Holid__797309D9]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblAttendance] ADD  DEFAULT ((0)) FOR [HolidayId]
GO
/****** Object:  Default [DF__tblAttend__Statu__7A672E12]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblAttendance] ADD  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__tblAttend__IsPos__7B5B524B]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblAttendance] ADD  DEFAULT ((0)) FOR [IsPosted]
GO
/****** Object:  Default [DF__tblAttend__IsSMS__7C4F7684]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblAttendance] ADD  DEFAULT ((0)) FOR [IsSMSSent]
GO
/****** Object:  Default [DF__tblAttend__Creat__7D439ABD]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblAttendance] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblAdvanc__Creat__24927208]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblAdvance] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF__tblAccoun__Creat__1FCDBCEB]    Script Date: 03/22/2019 17:03:16 ******/
ALTER TABLE [dbo].[tblAccountMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
idayDate IS NULL THEN 'A'  
 WHEN DAY28=1 THEN  'P' END) DAY28  
  
, (CASE   
 WHEN DAY29=0 AND Date29 = h29.HolidayDate THEN h29.HolidayShortName   
 WHEN DATENAME(dw, Date29) = 'Sunday' THEN 'Sun'  
 WHEN DAY29=0 AND  h29.HolidayDate IS NULL THEN 'A'  
 WHEN DAY29=1 THEN  'P' END) DAY29  
  
, (CASE   
 WHEN DAY30=0 AND Date30 = h30.HolidayDate THEN h30.HolidayShortName   
 WHEN DATENAME(dw, Date30) = 'Sunday' THEN 'Sun'  
 WHEN DAY30=0 AND  h30.HolidayDate IS NULL THEN 'A'  
 WHEN DAY30=1 THEN  'P' END) DAY30  
  
, (CASE   
 WHEN DAY31=0 AND Date31 = h31.HolidayDate THEN h31.HolidayShortName   
 WHEN DATENAME(dw, Date31) = 'Sunday' THEN 'Sun'  
 WHEN DAY31=0 AND  h31.HolidayDate IS NULL THEN 'A'  
 WHEN DAY31=1 THEN  'P' END) DAY31  
  
, T2.SubUserID  
, T2.UserID  
, T2.FYear   
  
  
FROM  
(  
SELECT  
T1.StudentMasterID  
, StudentNAme  
, c.ClassMasterID  
, ClassName  
, YearNo  
, MonthNo  
, MAX(DAY1) DAY1  
, CAST(CAST(MonthNo as VARCHAR)+'/01/'+CAST(YearNo as VARCHAR) as DATETIME) DATE1  
, MAX(DAY2) DAY2  
, CAST(CAST(MonthNo as VARCHAR)+'/02/'+CAST(YearNo as VARCHAR) as DATETIME) DATE2  
, MAX(DAY3) DAY3  
, CAST(CAST(MonthNo as VARCHAR)+'/03/'+CAST(YearNo as VARCHAR) as DATETIME) DATE3  
, MAX(DAY4) DAY4  
, CAST(CAST(MonthNo as VARCHAR)+'/04/'+CAST(YearNo as VARCHAR) as DATETIME) DATE4  
  
, MAX(DAY5) DAY5  
, CAST(CAST(MonthNo as VARCHAR)+'/05/'+CAST(YearNo as VARCHAR) as DATETIME) DATE5  
  
, MAX(DAY6) DAY6  
, CAST(CAST(MonthNo as VARCHAR)+'/06/'+CAST(YearNo as VARCHAR) as DATETIME) DATE6  
  
, MAX(DAY7) DAY7  
, CAST(CAST(MonthNo as VARCHAR)+'/07/'+CAST(YearNo as VARCHAR) as DATETIME) DATE7  
  
, MAX(DAY8) DAY8  
, CAST(CAST(MonthNo as VARCHAR)+'/08/'+CAST(YearNo as VARCHAR) as DATETIME) DATE8  
  
, MAX(DAY9) DAY9  
, CAST(CAST(MonthNo as VARCHAR)+'/09/'+CAST(YearNo as VARCHAR) as DATETIME) DATE9  
  
, MAX(DAY10) DAY10  
, CAST(CAST(MonthNo as VARCHAR)+'/10/'+CAST(YearNo as VARCHAR) as DATETIME) DATE10  
  
, MAX(DAY11) DAY11  
, CAST(CAST(MonthNo as VARCHAR)+'/11/'+CAST(YearNo as VARCHAR) as DATETIME) DATE11  
  
, MAX(DAY12) DAY12  
, CAST(CAST(MonthNo as VARCHAR)+'/12/'+CAST(YearNo as VARCHAR) as DATETIME) DATE12  
  
, MAX(DAY13) DAY13  
, CAST(CAST(MonthNo as VARCHAR)+'/13/'+CAST(YearNo as VARCHAR) as DATETIME) DATE13  
  
, MAX(DAY14) DAY14  
, CAST(CAST(MonthNo as VARCHAR)+'/14/'+CAST(YearNo as VARCHAR) as DATETIME) DATE14  
  
, MAX(DAY15) DAY15  
, CAST(CAST(MonthNo as VARCHAR)+'/15/'+CAST(YearNo as VARCHAR) as DATETIME) DATE15  
  
, MAX(DAY16) DAY16  
, CAST(CAST(MonthNo as VARCHAR)+'/16/'+CAST(YearNo as VARCHAR) as DATETIME) DATE16  
  
, MAX(DAY17) DAY17  
  
, CAST(CAST(MonthNo as VARCHAR)+'/17/'+CAST(YearNo as VARCHAR) as DATETIME) DATE17  
,  MAX(DAY18) DAY18  
, CAST(CAST(MonthNo as VARCHAR)+'/18/'+CAST(YearNo as VARCHAR) as DATETIME) DATE18  
  
, MAX(DAY19) DAY19  
, CAST(CAST(MonthNo as VARCHAR)+'/19/'+CAST(YearNo as VARCHAR) as DATETIME) DATE19  
  
,  MAX(DAY20) DAY20  
, CAST(CAST(MonthNo as VARCHAR)+'/20/'+CAST(YearNo as VARCHAR) as DATETIME) DATE20  
  
, MAX(DAY21) DAY21  
, CAST(CAST(MonthNo as VARCHAR)+'/21/'+CAST(YearNo as VARCHAR) as DATETIME) DATE21  
  
, MAX(DAY22) DAY22  
, CAST(CAST(MonthNo as VARCHAR)+'/21/'+CAST(YearNo as VARCHAR) as DATETIME) DATE22  
  
, MAX(DAY23) DAY23  
, CAST(CAST(MonthNo as VARCHAR)+'/23/'+CAST(YearNo as VARCHAR) as DATETIME) DATE23  
  
, MAX(DAY24) DAY24  
, CAST(CAST(MonthNo as VARCHAR)+'/24/'+CAST(YearNo as VARCHAR) as DATETIME) DATE24  
  
, MAX(DAY25) DAY25  
, CAST(CAST(MonthNo as VARCHAR)+'/25/'+CAST(YearNo as VARCHAR) as DATETIME) DATE25  
  
, MAX(DAY26) DAY26  
, CAST(CAST(MonthNo as VARCHAR)+'/26/'+CAST(YearNo a