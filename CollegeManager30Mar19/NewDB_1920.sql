
Use Master
go

--DROP DATABASE SchoolDB1920
--go

CREATE DATABASE [SchoolDB1920] ON  PRIMARY 
( NAME = N'SchoolDB1920'
, FILENAME = N'e:\CollegeManager\DATA1920\SchoolDB1920.mdf' 
, SIZE = 2240KB 
, MAXSIZE = UNLIMITED
, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SchoolDB1920_log'
, FILENAME = N'e:\CollegeManager\DATA1920\SchoolDB1920_log.LDF' 
, SIZE = 504KB 
, MAXSIZE = 2048GB 
, FILEGROWTH = 10%)
 COLLATE SQL_Latin1_General_CP1_CI_AS
go



USE SchoolDB1920
go



CREATE TABLE tblFeeBalance 
(
	FeeBalanceID [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    PID           VARCHAR(20) NOT NULL,
    StudentName   VARCHAR(100),
    Fees          float,
    PaymentRcd    float,
    BalanceAmount float,
    MobileNo      VARCHAR(50),
    ClassName     VARCHAR(50),
    [CreatedAt] [datetime] NULL DEFAULT (getdate())
 
)
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFine]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblFine](
	[FineID] [int] IDENTITY(1,1) NOT NULL,
	[tid] [int] NULL,
	[cid] [nvarchar](50) NULL,
	[cDate] [datetime] NULL,
	[pid] [nvarchar](50) NULL,
	[HeadName] [nvarchar](100) NULL,
	[Amount] [float] NULL,
	[CreatedAt] [datetime] NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[FineID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'tid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblFine_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'cid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'cid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblFine_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cDate'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cDate'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cDate'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cDate'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cDate'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'cDate' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cDate'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cDate'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cDate'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cDate'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'cDate' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cDate'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblFine_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cDate'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'cDate'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'pid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'pid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblFine_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'HeadName'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'HeadName'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'HeadName'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'HeadName'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'HeadName'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HeadName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'HeadName'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'HeadName'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'HeadName'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'HeadName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HeadName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'HeadName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblFine_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'HeadName'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'HeadName'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Amount' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Amount' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblFine_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'536870912' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine'

GO
EXEC sys.sp_addextendedproperty @name=N'Connect', @value=N'ODBC;Description=SqlNativeDescr;DRIVER=SQL Native Client;SERVER=SANDEEP;APP=2007 Microsoft Office system;' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine'

GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2010-08-16 10:47:14 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine'

GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2010-08-16 10:47:14 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tblFine_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine'

GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTableName', @value=N'dbo.tblFine' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine'

GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFine'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFeeStucture]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblFeeStucture](
	[FeeStructureID] [int] IDENTITY(1,1) NOT NULL,
	[tid] [int] NULL,
	[cid] [nvarchar](50) NULL,
	[Head] [nvarchar](100) NULL,
	[FType] [nvarchar](50) NULL,
	[Class] [nvarchar](50) NULL,
	[Amount] [float] NULL,
	[WhichMonth] [nvarchar](3) NULL,
	[pid] [nvarchar](50) NULL,
	[CreatedAt] [datetime] NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[FeeStructureID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'tid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblFeeStucture_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'cid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'cid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblFeeStucture_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Head' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Head' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblFeeStucture_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'FType'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'FType'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'FType'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'FType'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'FType'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'FType' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'FType'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'FType'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'FType'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'FType'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'FType' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'FType'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblFeeStucture_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'FType'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'FType'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Class'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Class'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Class'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Class'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Class'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Class' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Class'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Class'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Class'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Class'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Class' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Class'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblFeeStucture_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Class'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Class'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Amount' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Amount' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblFeeStucture_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'WhichMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'WhichMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'WhichMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'WhichMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'WhichMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'WhichMonth' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'WhichMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'WhichMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'WhichMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'WhichMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'WhichMonth' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'WhichMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblFeeStucture_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'WhichMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'WhichMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'pid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'pid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblFeeStucture_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'536870912' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture'

GO
EXEC sys.sp_addextendedproperty @name=N'Connect', @value=N'ODBC;Description=SqlNativeDescr;DRIVER=SQL Native Client;SERVER=SANDEEP;APP=2007 Microsoft Office system;' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture'

GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2010-08-16 10:47:14 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture'

GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2010-08-16 10:47:14 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tblFeeStucture_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture'

GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTableName', @value=N'dbo.tblFeeStucture' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture'

GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblFeeStucture'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDiscount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDiscount](
	[DiscountID] [int] IDENTITY(1,1) NOT NULL,
	[tid] [int] NULL,
	[DiscountHead] [nvarchar](50) NULL,
	[DateTime] [datetime] NULL,
	[pid] [nvarchar](100) NULL,
	[DiscountPercent] [float] NULL,
	[CreatedAt] [datetime] NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[DiscountID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'tid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblDiscount_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'DiscountHead' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'DiscountHead' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblDiscount_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'DateTime' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'DateTime' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblDiscount_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'pid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'pid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblDiscount_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountPercent'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountPercent'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountPercent'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountPercent'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountPercent'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountPercent'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'DiscountPercent' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountPercent'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountPercent'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountPercent'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountPercent'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'DiscountPercent' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountPercent'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblDiscount_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountPercent'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount', @level2type=N'COLUMN', @level2name=N'DiscountPercent'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'536870912' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount'

GO
EXEC sys.sp_addextendedproperty @name=N'Connect', @value=N'ODBC;Description=SqlNativeDescr;DRIVER=SQL Native Client;SERVER=SANDEEP;APP=2007 Microsoft Office system;' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount'

GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2010-08-16 10:47:15 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount'

GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2010-08-16 10:47:15 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tblDiscount_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount'

GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTableName', @value=N'dbo.tblDiscount' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount'

GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblDiscount'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblChargesMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblChargesMaster](
	[ChargeMasterID] [int] IDENTITY(1,1) NOT NULL,
	[tid] [int] NULL,
	[cid] [nvarchar](50) NULL,
	[ChargesHead] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[ChargeMasterID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'tid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblChargesMaster_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'cid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'cid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblChargesMaster_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'ChargesHead'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'ChargesHead'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'ChargesHead'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'ChargesHead'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'ChargesHead'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ChargesHead' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'ChargesHead'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'ChargesHead'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'ChargesHead'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'ChargesHead'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ChargesHead' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'ChargesHead'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblChargesMaster_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'ChargesHead'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster', @level2type=N'COLUMN', @level2name=N'ChargesHead'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'536870912' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster'

GO
EXEC sys.sp_addextendedproperty @name=N'Connect', @value=N'ODBC;Description=SqlNativeDescr;DRIVER=SQL Native Client;SERVER=SANDEEP;APP=2007 Microsoft Office system;' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster'

GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2010-08-16 10:47:15 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster'

GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2010-08-16 10:47:15 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tblChargesMaster_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster'

GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTableName', @value=N'dbo.tblChargesMaster' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster'

GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblChargesMaster'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblBreakUp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblBreakUp](
	[BreakUpID] [int] IDENTITY(1,1) NOT NULL,
	[CID] [nvarchar](10) NULL,
	[PID] [nvarchar](10) NULL,
	[Bdate] [datetime] NULL,
	[Head] [nvarchar](50) NULL,
	[Amount] [float] NULL,
	[ReceiptNo] [nvarchar](50) NULL,
	[HeadId] [int] NULL,
	[CreatedAt] [datetime] NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[BreakUpID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblBreakUp_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'PID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'PID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblBreakUp_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Bdate'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Bdate'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Bdate'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Bdate'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Bdate'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Medium Date' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Bdate'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Bdate' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Bdate'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Bdate'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Bdate'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Bdate'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Bdate' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Bdate'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblBreakUp_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Bdate'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Bdate'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Head' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Head' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblBreakUp_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Head'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Amount' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Amount' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblBreakUp_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'Amount'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'ReceiptNo'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'ReceiptNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'ReceiptNo'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'ReceiptNo'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'ReceiptNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ReceiptNo' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'ReceiptNo'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'ReceiptNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'ReceiptNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'ReceiptNo'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ReceiptNo' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'ReceiptNo'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblBreakUp_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'ReceiptNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp', @level2type=N'COLUMN', @level2name=N'ReceiptNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'536870912' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp'

GO
EXEC sys.sp_addextendedproperty @name=N'Connect', @value=N'ODBC;Description=SqlNativeDescr;DRIVER=SQL Native Client;SERVER=SANDEEP;APP=2007 Microsoft Office system;' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp'

GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2010-08-16 10:47:16 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp'

GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2010-08-16 10:47:16 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tblBreakUp_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp'

GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTableName', @value=N'dbo.tblBreakUp' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp'

GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblBreakUp'


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUtil]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblUtil](
	[CameraExe] [nvarchar](200) NULL,
	[CameraFolder] [nvarchar](200) NULL,
	[MachineName] [nvarchar](200) NULL,
	[fName] [nvarchar](200) NULL,
	[StartFinancialYearMonth] [int] NULL,
	[AdvanceFeesMonth] [int] NULL,
	[annualFeesMonth] [int] NULL,
	[LateFineAmount] [int] NULL,
	[CreatedAt] [datetime] NULL DEFAULT (getdate())
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraExe'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraExe'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraExe'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraExe'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraExe'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CameraExe' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraExe'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraExe'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraExe'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'200' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraExe'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CameraExe' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraExe'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblUtil_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraExe'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraExe'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraFolder'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraFolder'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraFolder'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraFolder'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraFolder'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CameraFolder' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraFolder'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraFolder'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraFolder'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'200' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraFolder'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CameraFolder' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraFolder'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblUtil_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraFolder'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'CameraFolder'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'MachineName'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'MachineName'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'MachineName'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'MachineName'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'MachineName'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MachineName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'MachineName'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'MachineName'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'MachineName'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'200' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'MachineName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MachineName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'MachineName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblUtil_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'MachineName'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'MachineName'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'fName'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'fName'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'fName'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'fName'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'fName'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'fName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'fName'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'fName'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'fName'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'200' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'fName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'fName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'fName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblUtil_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'fName'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'fName'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'StartFinancialYearMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'StartFinancialYearMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'StartFinancialYearMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'StartFinancialYearMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'StartFinancialYearMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'StartFinancialYearMonth' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'StartFinancialYearMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'StartFinancialYearMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'StartFinancialYearMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'StartFinancialYearMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'StartFinancialYearMonth' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'StartFinancialYearMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblUtil_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'StartFinancialYearMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'StartFinancialYearMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'AdvanceFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'AdvanceFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'AdvanceFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'AdvanceFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'AdvanceFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'AdvanceFeesMonth' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'AdvanceFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'AdvanceFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'AdvanceFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'AdvanceFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'AdvanceFeesMonth' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'AdvanceFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblUtil_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'AdvanceFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'AdvanceFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'annualFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'annualFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'annualFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'annualFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'annualFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'annualFeesMonth' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'annualFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'annualFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'annualFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'annualFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'annualFeesMonth' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'annualFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblUtil_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'annualFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'annualFeesMonth'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'LateFineAmount'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'LateFineAmount'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'LateFineAmount'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'LateFineAmount'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'LateFineAmount'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'LateFineAmount' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'LateFineAmount'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'LateFineAmount'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'LateFineAmount'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'LateFineAmount'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'LateFineAmount' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'LateFineAmount'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblUtil_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'LateFineAmount'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil', @level2type=N'COLUMN', @level2name=N'LateFineAmount'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil'

GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2006-02-07 7:54:58 PM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil'

GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2010-08-16 11:01:46 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tblUtil_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil'

GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil'

GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblUtil'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPerson]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPerson](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[tid] [float] NULL,
	[pid] [nvarchar](100) NULL,
	[whomToMeet] [nvarchar](100) NULL,
	[OpID] [nvarchar](100) NULL,
	[userID] [nvarchar](100) NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Prefix] [nvarchar](10) NULL,
	[Company] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](50) NULL,
	[pin] [nvarchar](50) NULL,
	[AdmissionNo] [nvarchar](50) NULL,
	[RegistrationNo] [nvarchar](50) NULL,
	[code1] [nvarchar](10) NULL,
	[phone1] [nvarchar](20) NULL,
	[code2] [nvarchar](10) NULL,
	[phone2] [nvarchar](100) NULL,
	[Remarks] [nvarchar](200) NULL,
	[enterTime] [datetime] NULL,
	[userPermission] [float] NULL,
	[userPassword] [nvarchar](50) NULL,
	[dept] [nvarchar](100) NULL,
	[dName] [nvarchar](100) NULL,
	[Purpose] [nvarchar](200) NULL,
	[Arrival] [datetime] NULL,
	[DOB] [datetime] NULL,
	[PermissionStatus] [float] NULL,
	[PersonType] [int] NULL,
	[PersonImage] [image] NULL,
	[Mother] [nvarchar](200) NULL,
	[BoardsRollNo] [nvarchar](50) NULL,
	Income [nvarchar](100) NULL,
	AdharNo [nvarchar](100) NULL,
	Caste [nvarchar](50) NULL,	
	Category [nvarchar](50) NULL,
	Religion [nvarchar](50) NULL,
	[CreatedAt] [datetime] NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'tid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'pid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'pid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'whomToMeet'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'whomToMeet'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'whomToMeet'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'whomToMeet'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'whomToMeet'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'whomToMeet'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'whomToMeet'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'whomToMeet'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'whomToMeet'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'whomToMeet' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'whomToMeet'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'whomToMeet'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'whomToMeet'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'whomToMeet'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'whomToMeet' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'whomToMeet'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'whomToMeet'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'whomToMeet'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'OpID'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'OpID'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'OpID'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'OpID'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'OpID'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'OpID'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'OpID'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'OpID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'OpID'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'OpID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'OpID'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'OpID'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'OpID'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'OpID'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'OpID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'OpID'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'OpID'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'OpID'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userID'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userID'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userID'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userID'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userID'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userID'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userID'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userID'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'userID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userID'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userID'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userID'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userID'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'userID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userID'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userID'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userID'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'FirstName'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'FirstName'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'FirstName'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'FirstName'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'FirstName'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'FirstName'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'FirstName'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'FirstName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'FirstName'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'FirstName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'FirstName'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'FirstName'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'FirstName'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'FirstName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'FirstName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'FirstName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'FirstName'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'FirstName'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'MiddleName'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'MiddleName'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'MiddleName'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'MiddleName'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'MiddleName'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'MiddleName'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'MiddleName'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'MiddleName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'MiddleName'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MiddleName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'MiddleName'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'MiddleName'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'MiddleName'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'MiddleName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MiddleName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'MiddleName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'MiddleName'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'MiddleName'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'LastName'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'LastName'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'LastName'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'LastName'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'LastName'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'LastName'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'LastName'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'LastName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'LastName'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'LastName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'LastName'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'LastName'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'LastName'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'LastName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'LastName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'LastName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'LastName'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'LastName'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Prefix'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Prefix'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Prefix'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Prefix'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Prefix'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Prefix'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Prefix'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Prefix'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Prefix'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Prefix' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Prefix'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Prefix'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Prefix'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Prefix'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Prefix' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Prefix'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Prefix'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Prefix'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Company'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Company'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Company'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Company'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Company'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Company'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Company'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Company'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Company'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Company' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Company'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Company'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Company'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Company'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Company' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Company'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Company'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Company'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Address'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Address'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Address'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Address'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Address'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Address'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Address'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Address'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Address'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Address' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Address'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Address'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Address'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Address'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Address' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Address'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Address'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Address'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'City'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'City'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'City'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'City'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'City'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'City'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'City'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'City'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'City'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'City' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'City'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'11' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'City'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'City'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'City'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'City' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'City'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'City'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'City'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'State' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'12' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'State' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Country'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Country'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Country'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Country'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Country'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Country'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Country'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Country'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Country'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Country' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Country'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'13' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Country'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Country'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Country'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Country' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Country'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Country'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Country'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pin'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pin'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pin'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pin'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pin'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pin'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pin'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pin'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pin'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'pin' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pin'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'14' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pin'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pin'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pin'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'pin' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pin'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pin'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'pin'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'AdmissionNo'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'AdmissionNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'AdmissionNo'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'AdmissionNo'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'AdmissionNo'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'AdmissionNo'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'AdmissionNo'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'AdmissionNo'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'AdmissionNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'AdmissionNo' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'AdmissionNo'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'15' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'AdmissionNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'AdmissionNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'AdmissionNo'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'AdmissionNo' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'AdmissionNo'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'AdmissionNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'AdmissionNo'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'RegistrationNo'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'RegistrationNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'RegistrationNo'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'RegistrationNo'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'RegistrationNo'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'RegistrationNo'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'RegistrationNo'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'RegistrationNo'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'RegistrationNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'RegistrationNo' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'RegistrationNo'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'16' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'RegistrationNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'RegistrationNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'RegistrationNo'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'RegistrationNo' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'RegistrationNo'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'RegistrationNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'RegistrationNo'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code1'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code1'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code1'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code1'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code1'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code1'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code1'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code1'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code1'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'code1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code1'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'17' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code1'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code1'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code1'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'code1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code1'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code1'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code1'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone1'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone1'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone1'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone1'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone1'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone1'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone1'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone1'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone1'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'phone1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone1'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'18' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone1'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone1'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'20' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone1'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'phone1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone1'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone1'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone1'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code2'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code2'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code2'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code2'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code2'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code2'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code2'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code2'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code2'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'code2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code2'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'19' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code2'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code2'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code2'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'code2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code2'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code2'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'code2'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone2'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone2'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone2'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone2'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone2'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone2'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone2'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone2'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone2'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'phone2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone2'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'20' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone2'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone2'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'20' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone2'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'phone2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone2'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone2'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'phone2'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Remarks'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Remarks'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Remarks'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Remarks'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Remarks'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Remarks'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Remarks'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Remarks'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Remarks'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Remarks' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Remarks'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'21' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Remarks'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Remarks'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'200' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Remarks'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Remarks' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Remarks'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Remarks'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Remarks'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'enterTime'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'enterTime'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'enterTime'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'enterTime'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'enterTime'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'enterTime'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'enterTime'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'enterTime'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'enterTime' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'enterTime'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'22' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'enterTime'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'enterTime'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'enterTime'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'enterTime' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'enterTime'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'enterTime'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'enterTime'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPermission'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPermission'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPermission'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPermission'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPermission'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPermission'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPermission'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPermission'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPermission'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPermission'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'userPermission' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPermission'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'23' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPermission'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPermission'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPermission'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'userPermission' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPermission'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPermission'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPermission'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPassword'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPassword'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPassword'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPassword'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPassword'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPassword'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPassword'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPassword'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPassword'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'userPassword' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPassword'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'24' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPassword'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPassword'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPassword'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'userPassword' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPassword'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPassword'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'userPassword'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dept'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dept'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dept'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dept'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dept'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dept'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dept'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dept'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dept'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'dept' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dept'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'25' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dept'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dept'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dept'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'dept' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dept'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dept'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dept'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dName'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dName'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dName'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dName'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dName'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dName'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dName'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dName'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'dName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dName'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'26' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dName'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dName'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'dName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dName'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'dName'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Purpose'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Purpose'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Purpose'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Purpose'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Purpose'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Purpose'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Purpose'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Purpose'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Purpose'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Purpose' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Purpose'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'27' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Purpose'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Purpose'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'200' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Purpose'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Purpose' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Purpose'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Purpose'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Purpose'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Arrival'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Arrival'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Arrival'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Arrival'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Arrival'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Arrival'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Arrival'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Arrival'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Arrival' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Arrival'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'28' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Arrival'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Arrival'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Arrival'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Arrival' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Arrival'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Arrival'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Arrival'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'DOB'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'DOB'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'DOB'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'DOB'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'DOB'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'DOB'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'DOB'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'DOB'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'DOB' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'DOB'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'29' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'DOB'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'DOB'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'DOB'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'DOB' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'DOB'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'DOB'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'DOB'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PermissionStatus'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PermissionStatus'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PermissionStatus'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PermissionStatus'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PermissionStatus'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PermissionStatus'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PermissionStatus'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PermissionStatus'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PermissionStatus'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PermissionStatus'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'PermissionStatus' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PermissionStatus'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'30' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PermissionStatus'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PermissionStatus'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PermissionStatus'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'PermissionStatus' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PermissionStatus'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PermissionStatus'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PermissionStatus'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonType'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonType'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonType'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonType'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonType'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonType'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonType'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonType'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonType'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonType'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'PersonType' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonType'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'31' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonType'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonType'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonType'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'PersonType' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonType'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonType'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonType'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonImage'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonImage'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonImage'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonImage'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonImage'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonImage'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonImage'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonImage'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'PersonImage' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonImage'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'32' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonImage'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonImage'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonImage'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'PersonImage' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonImage'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonImage'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'11' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'PersonImage'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Mother'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Mother'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Mother'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Mother'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Mother'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Mother'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Mother'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Mother'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Mother'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Mother' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Mother'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'33' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Mother'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Mother'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'200' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Mother'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Mother' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Mother'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Mother'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'Mother'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'BoardsRollNo'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'BoardsRollNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'BoardsRollNo'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'BoardsRollNo'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'BoardsRollNo'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'BoardsRollNo'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'BoardsRollNo'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'BoardsRollNo'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'BoardsRollNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BoardsRollNo' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'BoardsRollNo'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'34' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'BoardsRollNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'BoardsRollNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'BoardsRollNo'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BoardsRollNo' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'BoardsRollNo'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'BoardsRollNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson', @level2type=N'COLUMN', @level2name=N'BoardsRollNo'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson'

GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2007-05-14 1:35:04 PM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson'

GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2010-08-16 11:01:58 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tblPerson_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson'

GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'14' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson'

GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblPerson'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblGetID]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblGetID](
	[tid] [float] NULL,
	[pid] [float] NULL,
	[cid] [int] NULL DEFAULT ((0)),
	[gid] [int] NULL DEFAULT ((0)),
	[rid] [int] NULL DEFAULT ((0)),
	[tcID] [int] NULL DEFAULT ((0)),
	[Aid] [int] NULL DEFAULT ((0)),
	[Bid] [int] NULL DEFAULT ((0)),
	[xid] [int] NULL DEFAULT ((0)),
	[yid] [int] NULL DEFAULT ((0))
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'tid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblGetID_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'pid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'pid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblGetID_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'cid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'cid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblGetID_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'gid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'gid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'gid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'gid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'gid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'gid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'gid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'gid'

GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'gid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'gid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'gid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'gid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'gid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'gid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'gid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'gid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'gid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'gid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblGetID_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'gid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'gid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'rid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'rid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'rid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'rid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'rid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'rid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'rid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'rid'

GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'rid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'rid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'rid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'rid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'rid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'rid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'rid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'rid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'rid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'rid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblGetID_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'rid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'rid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tcID'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tcID'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tcID'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tcID'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tcID'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tcID'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tcID'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tcID'

GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tcID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tcID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tcID'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tcID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tcID'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tcID'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tcID'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tcID'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'tcID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tcID'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblGetID_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tcID'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'tcID'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Aid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Aid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Aid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Aid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Aid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Aid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Aid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Aid'

GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Aid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Aid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Aid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Aid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Aid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Aid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Aid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Aid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Aid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Aid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblGetID_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Aid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Aid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Bid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Bid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Bid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Bid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Bid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Bid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Bid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Bid'

GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Bid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Bid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Bid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Bid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Bid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Bid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Bid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Bid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Bid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Bid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblGetID_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Bid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'Bid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'xid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'xid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'xid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'xid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'xid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'xid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'xid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'xid'

GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'xid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'xid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'xid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'xid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'xid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'xid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'xid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'xid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'xid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'xid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblGetID_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'xid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'xid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'yid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'yid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'yid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'yid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'yid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'yid'

GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'yid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'yid'

GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'yid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'yid'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'yid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'yid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'yid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'yid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'yid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'yid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'yid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'yid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblGetID_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'yid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID', @level2type=N'COLUMN', @level2name=N'yid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID'

GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2007-01-13 6:41:32 PM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID'

GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2010-08-16 11:01:59 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tblGetID_local' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID'

GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID'

GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblGetID'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFeeHead]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblFeeHead](
	[FeeHeadId] [int] IDENTITY(1,1) NOT NULL,
	[HeadName] [varchar](100) NOT NULL,
	[HeadDescription] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[FeeHeadId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblStudent]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblStudent](
	[tid] [int] NULL,
	[cid] [nvarchar](50) NULL,
	[Subject] [nvarchar](200) NULL,
	[Marks] [nvarchar](200) NULL,
	[ClassName] [nvarchar](200) NULL,
	[PID] [nvarchar](50) NULL,
	[Term] [nvarchar](200) NULL,
	[sGroup] [nvarchar](200) NULL
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'tid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblStudent_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'tid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'cid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'cid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblStudent_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'cid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Subject'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Subject'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Subject'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Subject'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Subject'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Subject' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Subject'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Subject'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Subject'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'200' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Subject'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Subject' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Subject'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblStudent_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Subject'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Subject'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Marks'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Marks'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Marks'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Marks'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Marks'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Marks' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Marks'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Marks'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Marks'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'200' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Marks'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Marks' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Marks'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblStudent_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Marks'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Marks'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'ClassName'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'ClassName'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'ClassName'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'ClassName'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'ClassName'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ClassName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'ClassName'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'ClassName'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'ClassName'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'200' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'ClassName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ClassName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'ClassName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblStudent_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'ClassName'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'ClassName'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'PID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'PID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblStudent_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Term'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Term'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Term'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Term'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Term'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Term' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Term'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Term'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Term'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'200' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Term'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Term' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Term'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblStudent_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Term'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'Term'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'sGroup'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'sGroup'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'sGroup'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'sGroup'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'sGroup'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'sGroup' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'sGroup'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'sGroup'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'sGroup'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'200' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'sGroup'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'sGroup' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'sGroup'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblStudent_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'sGroup'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent', @level2type=N'COLUMN', @level2name=N'sGroup'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'536870912' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent'

GO
EXEC sys.sp_addextendedproperty @name=N'Connect', @value=N'ODBC;Description=SqlNativeDescr;DRIVER=SQL Native Client;SERVER=SANDEEP;APP=2007 Microsoft Office system;' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent'

GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2010-08-16 10:47:13 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent'

GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2010-08-16 10:47:13 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tblStudent_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent'

GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTableName', @value=N'dbo.tblStudent' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent'

GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblStudent'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblLedgerBalance]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblLedgerBalance](
	[LedgerBalanceID] [int] IDENTITY(1,1) NOT NULL,
	[Acname] [nvarchar](100) NULL,
	[Ldate] [datetime] NULL,
	[PARTICULARS] [nvarchar](500) NULL,
	[DR] [float] NULL,
	[CR] [float] NULL,
	[SP] [nvarchar](2) NULL,
	[BALANCE] [float] NULL,
	[pid] [nvarchar](100) NULL,
	[lid] [nvarchar](50) NULL,
	[CreatedAt] [datetime] NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[LedgerBalanceID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Acname'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Acname'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Acname'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Acname'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Acname'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Acname' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Acname'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Acname'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Acname'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Acname'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Acname' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Acname'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedgerBalance_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Acname'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Acname'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Ldate' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Ldate' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedgerBalance_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'PARTICULARS'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'PARTICULARS'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'PARTICULARS'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'PARTICULARS'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'PARTICULARS'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'PARTICULARS' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'PARTICULARS'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'PARTICULARS'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'PARTICULARS'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'PARTICULARS'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'PARTICULARS' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'PARTICULARS'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedgerBalance_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'PARTICULARS'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'PARTICULARS'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'DR' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'DR' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedgerBalance_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CR' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CR' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedgerBalance_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'SP'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'SP'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'SP'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'SP'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'SP'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'SP' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'SP'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'SP'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'SP'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'SP'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'SP' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'SP'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedgerBalance_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'SP'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'SP'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'BALANCE'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'BALANCE'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'BALANCE'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'BALANCE'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'BALANCE'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'BALANCE'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BALANCE' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'BALANCE'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'BALANCE'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'BALANCE'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'BALANCE'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BALANCE' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'BALANCE'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedgerBalance_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'BALANCE'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'BALANCE'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'pid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'pid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedgerBalance_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'pid'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'lid'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'lid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'lid'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'lid'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'lid'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'lid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'lid'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'lid'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'lid'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'lid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'lid' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'lid'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedgerBalance_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'lid'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance', @level2type=N'COLUMN', @level2name=N'lid'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'536870912' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance'

GO
EXEC sys.sp_addextendedproperty @name=N'Connect', @value=N'ODBC;Description=SqlNativeDescr;DRIVER=SQL Native Client;SERVER=SANDEEP;APP=2007 Microsoft Office system;' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance'

GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2010-08-16 10:47:13 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance'

GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2010-08-16 10:47:13 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tblLedgerBalance_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance'

GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTableName', @value=N'dbo.tblLedgerBalance' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance'

GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedgerBalance'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblLedger]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblLedger](
	[LedgerID] [int] IDENTITY(1,1) NOT NULL,
	[AcName] [nvarchar](100) NULL,
	[Ldate] [datetime] NULL,
	[Particulars] [nvarchar](100) NULL,
	[DR] [float] NULL,
	[CR] [float] NULL,
	[Sp] [nvarchar](2) NULL,
	[Balance] [float] NULL,
	[CID] [nvarchar](10) NULL,
	[Source] [nvarchar](2) NULL,
	[PID] [nvarchar](200) NULL,
	[Group_Name] [nvarchar](100) NULL,
	[RC] [nvarchar](1) NULL,
	[Ch_Group] [nvarchar](35) NULL,
	[CreatedAt] [datetime] NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[LedgerID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'AcName'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'AcName'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'AcName'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'AcName'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'AcName'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'AcName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'AcName'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'AcName'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'AcName'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'AcName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'AcName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'AcName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedger_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'AcName'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'AcName'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Ldate' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Ldate' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedger_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ldate'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Particulars'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Particulars'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Particulars'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Particulars'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Particulars'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Particulars' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Particulars'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Particulars'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Particulars'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Particulars'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Particulars' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Particulars'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedger_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Particulars'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Particulars'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'DR' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'DR' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedger_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'DR'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CR' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CR' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedger_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CR'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Sp'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Sp'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Sp'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Sp'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Sp'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Sp' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Sp'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Sp'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Sp'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Sp'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Sp' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Sp'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedger_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Sp'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Sp'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Balance'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Balance'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Balance'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Balance'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Balance'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Balance' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Balance'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Balance'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Balance'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Balance'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Balance' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Balance'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedger_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Balance'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Balance'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedger_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Source'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Source'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Source'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Source'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Source'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Source' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Source'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Source'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Source'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Source'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Source' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Source'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedger_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Source'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Source'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'PID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'200' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'PID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedger_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Group_Name'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Group_Name'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Group_Name'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Group_Name'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Group_Name'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Group_Name' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Group_Name'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'11' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Group_Name'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Group_Name'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Group_Name'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Group_Name' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Group_Name'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedger_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Group_Name'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Group_Name'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'RC'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'RC'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'RC'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'RC'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'RC'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'RC' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'RC'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'12' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'RC'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'RC'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'RC'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'RC' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'RC'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedger_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'RC'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'RC'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ch_Group'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ch_Group'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ch_Group'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ch_Group'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ch_Group'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Ch_Group' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ch_Group'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'13' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ch_Group'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ch_Group'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'35' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ch_Group'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Ch_Group' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ch_Group'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblLedger_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ch_Group'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger', @level2type=N'COLUMN', @level2name=N'Ch_Group'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'536870912' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger'

GO
EXEC sys.sp_addextendedproperty @name=N'Connect', @value=N'ODBC;Description=SqlNativeDescr;DRIVER=SQL Native Client;SERVER=SANDEEP;APP=2007 Microsoft Office system;' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger'

GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2010-08-16 10:47:13 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger'

GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2010-08-16 10:47:13 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tblLedger_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger'

GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTableName', @value=N'dbo.tblLedger' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger'

GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblLedger'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblBreakUpReport]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblBreakUpReport](
	[cid] [varchar](30) NULL,
	[bDate] [datetime] NULL,
	[Pid] [varchar](30) NULL,
	[Name] [varchar](30) NULL,
	[Class] [varchar](30) NULL,
	[RcptNo] [varchar](30) NULL,
	[GamesFee] [varchar](30) NULL,
	[LateFee] [varchar](30) NULL,
	[TuitionFee] [varchar](30) NULL,
	[Total] [varchar](30) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblHome]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblHome](
	[SchoolName] [nvarchar](100) NULL,
	[SchoolAddress] [nvarchar](100) NULL,
	[Afiliation] [nvarchar](100) NULL,
	[DiscountHead] [nvarchar](50) NULL,
	[financialYear] [nvarchar](50) NULL,
	[b] [nvarchar](50) NULL,
	[c] [nvarchar](50) NULL,
	[d] [nvarchar](50) NULL,
	[CreatedAt] [datetime] NULL DEFAULT (getdate())
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolName'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolName'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolName'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolName'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolName'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'SchoolName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolName'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolName'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolName'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'SchoolName' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolName'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblHome_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolName'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolName'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolAddress'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolAddress'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolAddress'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolAddress'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolAddress'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'SchoolAddress' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolAddress'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolAddress'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolAddress'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolAddress'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'SchoolAddress' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolAddress'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblHome_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolAddress'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'SchoolAddress'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'Afiliation'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'Afiliation'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'Afiliation'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'Afiliation'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'Afiliation'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Afiliation' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'Afiliation'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'Afiliation'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'Afiliation'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'Afiliation'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Afiliation' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'Afiliation'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblHome_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'Afiliation'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'Afiliation'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'DiscountHead' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'DiscountHead' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblHome_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'DiscountHead'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'financialYear'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'financialYear'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'financialYear'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'financialYear'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'financialYear'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'financialYear' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'financialYear'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'financialYear'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'financialYear'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'financialYear'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'financialYear' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'financialYear'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblHome_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'financialYear'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'financialYear'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'b'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'b'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'b'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'b'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'b'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'b' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'b'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'b'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'b'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'b'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'b' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'b'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblHome_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'b'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'b'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'c'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'c'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'c'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'c'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'c'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'c' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'c'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'c'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'c'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'c'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'c' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'c'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblHome_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'c'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'c'

GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'd'

GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'd'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'd'

GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'd'

GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'd'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'd' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'd'

GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'd'

GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'd'

GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'd'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'd' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'd'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tblHome_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'd'

GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome', @level2type=N'COLUMN', @level2name=N'd'

GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'536870912' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome'

GO
EXEC sys.sp_addextendedproperty @name=N'Connect', @value=N'ODBC;Description=SqlNativeDescr;DRIVER=SQL Native Client;SERVER=SANDEEP;APP=2007 Microsoft Office system;' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome'

GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2010-08-16 10:47:14 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome'

GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2010-08-16 10:47:14 AM' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome'

GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tblHome_local1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome'

GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'-1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome'

GO
EXEC sys.sp_addextendedproperty @name=N'SourceTableName', @value=N'dbo.tblHome' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome'

GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'False' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'tblHome'


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_SumOfBreakUp]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_SumOfBreakUp] AS
select cid,  SUM(amount)TotalFee 
from tblBreakup 
GROUP BY cid' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Ledger]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_Ledger] AS  
SELECT   
 ACName  
, LDate  
, Particulars  
, Dr  
, Cr  
, SP  
, Balance  
, cid  
, Source  
, PID  
, Group_Name  
, RC  
, Ch_Group  
FROM   
(  
SELECT   
 ACName  
, LDate  
, Particulars  
, (CASE WHEN (ACName = ''Cash'' OR ACName IN (SELECT ACNAME FROM tblLedger WHERE ch_group = ''Bank Account'')) THEN b.TotalFee ELSE NULL END ) Dr  
, (CASE WHEN ACName = ''Student Account'' THEN b.TotalFee ELSE NULL END ) Cr  
, SP  
, Balance  
, l.cid cid  
, Source  
, PID  
, Group_Name  
, RC  
, Ch_Group  
FROM tblLedger L  
LEFT OUTER JOIN vw_SumOfBreakUp b ON b.cid = SUBSTRING (l.cid , 1, LEN(l.cid)-1)   
WHERE LEN(pid) > 0  
  
UNION  
  
SELECT   
 ACName  
, LDate  
, Particulars  
, Dr  
, Cr  
, SP  
, Balance  
, l.cid cid  
, Source  
, PID  
, Group_Name  
, RC  
, Ch_Group  
FROM tblLedger L  
WHERE LEN(pid) < 1  
) as A  ' 



INSERT INTO tblUtil select 'C:\Program Files\WonderCam\CamManager.exe',	'C:\Program Files\WonderCam\WorkTemp\',	'Gscomputer',	'image0001.bmp',	4,	6,	5,	2, '2011-03-07 15:49:41.530'
go

INSERT INTO tblPerson(tid, pid, userID, firstName, userPermission, userPassword) 
VALUES(999, 999, 999, 'Admin', 0, 1) 
go


delete from tblHome 
go
INSERT INTO tblHome (schoolName, schoolAddress, afiliation
, discountHead, financialYear, c) 
SELECT '',	'', '', 'Tuition Fee', 15, 10500
go

INSERT INTO tblGetID (tid, pid, cid, gid, tcID) 
VALUES( 5372, 5000 , 2000, 1000 , 1)
go

ALTER TABLE tblPerson Alter column Phone2 VARCHAR(100)

ALTER TABLE tblPerson ADD DOBInwords VARCHAR(200)




----------------------------------------------------------------------------------------------


CREATE TABLE tblGroup
(
    GroupID  INT PRIMARY KEY IDENTITY(1,1),  
	GroupName VARCHAR(200) NOT NULL,
	UnderGroup  VARCHAR (200) NOT NULL,
	Description VARCHAR (200) NULL,
	CanBeDeleted VARCHAR (1) NOT NULL,
	[CreatedAt] [datetime] NULL DEFAULT (getdate()),
 
)

GO

delete from tblGroup;
go

INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Cash', 'Current Assets', 'Cash-In-hand', 'N');
INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Student Account', 'All Income', 'Fee Collection from Students', 'N');

INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Bank Account', 'Current Assets', 'Bank Accouts', 'N');

INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Bank Interest', 'All Income', 'Interest Earned From Bank Accounts', 'N');

INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Bank Charges', 'All Expenses', 'Charges/Interest Paid to Bank Accounts', 'N');

INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Purchase Account', 'All Expenses', 'Purchases Accounts', 'N');

INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Capital Account', 'All Liabilities', 'Capital Account', 'N');

INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Current Assets', 'All Assets', 'Current Assets', 'N');

INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Current Liabilities', 'All Liabilities', 'Current Liabilities', 'N');

INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Duties & Taxes', 'Current Liabilities', 'Duties & Taxes', 'N');

INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Expenses Direct', 'All Expenses', 'Expenses Direct', 'N');

INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Expenses InDirect', 'All Expenses', 'Expenses InDirect', 'N');

INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Fixed Assets', 'All Assets', 'Fixed Assets', 'N');

INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Sales Account', 'All Income', 'Sales Account', 'N');

INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Sundry Creditors', 'Current Liabilities', 'Sundry Creditors', 'N');

INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Sundry Debtors', 'Current Assets', 'Sundry Debtors', 'N');

INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Stock-In-Hand', 'Current Assets', 'Stock-In-Hand', 'N');

INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Loans', 'All Liabilities', 'Loans(Liabilities)', 'N');

INSERT INTO tblGroup(GroupName, UnderGroup, Description, CanBeDeleted) 
        VALUES      ('Loans & Advances', 'Current Assets', 'Loans & Advances(Assets)', 'N');


--select * from tblGroup
--SELECT * INTO tblFine3 FROM tblFine where pid <> '5066' order by pid 

ALTER TABLE tblLedger ADD UnderGroup VARCHAR(200);

go

DROP VIEW vw_ledger;
go

CREATE VIEW [dbo].[vw_Ledger] AS    
SELECT     
 ACName    
, LDate    
, Particulars    
, Dr    
, Cr    
, SP    
, Balance    
, cid    
, Source    
, PID    
, Group_Name    
, RC    
, Ch_Group
, UnderGroup      
FROM     
(    
SELECT     
 ACName    
, LDate    
, Particulars    
, (CASE WHEN (ACName = 'Cash' OR ACName IN (SELECT ACNAME FROM tblLedger 

 WHERE ACNAME IN (SELECT FirstNAme FROM tblPerson 
					WHERE RegistrationNo = 'Bank Account'
					AND personType=3
					AND tid IN (SELECT MAX(TID)tid FROM tblPerson GROUP BY PID)
				))) THEN b.TotalFee ELSE NULL END ) Dr   
, (CASE WHEN ACName = 'Student Account' THEN b.TotalFee ELSE NULL END ) Cr    
, SP    
, Balance    
, l.cid cid    
, Source    
, PID    
, Group_Name    
, RC    
, Ch_Group 
, UnderGroup   
FROM tblLedger L    
LEFT OUTER JOIN vw_SumOfBreakUp b ON b.cid = SUBSTRING (l.cid , 1, LEN(l.cid)-1)     
WHERE LEN(pid) > 0    
    
UNION    
    
SELECT     
 ACName    
, LDate    
, Particulars    
, Dr    
, Cr    
, SP    
, Balance    
, l.cid cid    
, Source    
, PID    
, Group_Name    
, RC    
, Ch_Group
, UnderGroup
FROM tblLedger L    
WHERE LEN(pid) < 1    
) as A 

go

CREATE TABLE tblRoute
(
	RouteID [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    RouteName   VARCHAR(500),
    RouteFee    float,
	VehicleNo   VARCHAR(100),
    [CreatedAt] [datetime] NULL DEFAULT (getdate())
 
)
GO


ALTER TABLE tblPerson ADD RouteID INT;

go

INSERT INTO tblRoute(RouteName, RouteFee, VehicleNo) VALUES('Self Transport', 0, '');
GO

--DROP TABLE tblFeeMonth

CREATE TABLE tblFeeMonth 
(
	FeeMonthID [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    BreakUpId     INT  NOT NULL,
    PID           VARCHAR(20) NOT NULL,
	Head          VARCHAR(200),
    FeeMonth      INT,
    FeeAmount     float,
    [CreatedAt] [datetime] NULL DEFAULT (getdate())
 
)
GO

DROP VIEW vw_SumOfBreakUp
go

CREATE VIEW vw_SumOfBreakUp As
select BreakUpID cid, sum(Feeamount) TotalFee
from tblFeeMonth
GROUP BY BreakUpID
go


--select b.Head, FeeMonth 
--    , SUM(amount)
-- FeeRcd 
--from tblBreakUp B 
--LEFT JOIN tblFeeMonth F ON f.BreakUpId = B.Cid 
-- AND f.Head=B.Head 
--Where b.pid = 5047 
--GROUP BY b.Head, FeeMonth 



CREATE TABLE [dbo].[tblDoc](
	[DocumentId] [int] IDENTITY(1,1) NOT NULL,
	[DocId] [int] NOT NULL,
	[PID] [int] NOT NULL,
	[DocName] [varchar](100) NOT NULL,
	[DocImage] [image] NULL,
	[CreatedAt] [datetime] NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[DocumentId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

go


--DROP TABLE tblFee

CREATE TABLE dbo.tblFee 
(
	FeeID [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    PID           VARCHAR(20) NOT NULL,
    StudentName   VARCHAR(100),
	ClassName     VARCHAR(50),
	FeeMonth     VARCHAR(50),
	MonthNo     Integer,
	FeeDate	      DateTime,
    FeeHead 	  VARCHAR(100),	
	FeeAmount     float,
	Discount      float,
	FeeAfterDiscount float,
	PaymentRcd    float,
    BalanceAmount float,
    MobileNo      VARCHAR(50),
    [CreatedAt] [datetime] NULL DEFAULT (getdate())
 
)
GO


ALTER TABLE tblBreakup ADD HeadFee Varchar(100)


ALTER TABLE tblPerson ADD IsOBC Varchar(50)
ALTER TABLE tblPerson ADD HasFailed Varchar(50)

ALTER TABLE tblPerson ADD Subjects Varchar(200)

ALTER TABLE tblPerson ADD HasPassed Varchar(50);

ALTER TABLE tblPerson ADD HasPaidDues Varchar(50);

ALTER TABLE tblPerson ADD HasFeeDiscount Varchar(50);

ALTER TABLE tblPerson ADD HasNcc Varchar(50);

ALTER TABLE tblPerson ADD NoOfMeetings Varchar(50);

ALTER TABLE tblPerson ADD attendance Varchar(50);

ALTER TABLE tblPerson ADD ReasonToLeave Varchar(50);

Go





