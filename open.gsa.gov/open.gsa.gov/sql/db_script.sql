USE [sam.gov]
GO
/****** Object:  Table [dbo].[pointofcontact]    Script Date: 01/03/2022 10:28:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pointofcontact](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[noticeId] [varchar](50) NOT NULL,
	[fax] [varchar](50) NULL,
	[type] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[phone] [varchar](50) NULL,
	[title] [varchar](50) NULL,
	[fullName] [varchar](50) NULL,
 CONSTRAINT [PK_pointofcontact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[opportunities]    Script Date: 01/03/2022 10:28:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[opportunities](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[noticeId] [varchar](50) NOT NULL,
	[title] [varchar](200) NULL,
	[solicitationNumber] [varchar](50) NULL,
	[fullParentPathName] [varchar](500) NULL,
	[fullParentPathCode] [varchar](200) NULL,
	[postedDate] [date] NULL,
	[type] [varchar](50) NULL,
	[baseType] [varchar](50) NULL,
	[archiveType] [varchar](25) NULL,
	[archiveDate] [date] NULL,
	[typeOfSetAsideDescription] [varchar](500) NULL,
	[typeOfSetAside] [varchar](200) NULL,
	[responseDeadLine] [datetime] NULL,
	[naicsCode] [varchar](50) NULL,
	[classificationCode] [varchar](50) NULL,
	[active] [varchar](50) NULL,
	[award] [varchar](200) NULL,
	[description] [varchar](500) NULL,
	[organizationType] [varchar](50) NULL,
	[placeOfPerformance] [varchar](200) NULL,
	[additionalInfoLink] [varchar](200) NULL,
	[uiLink] [varchar](200) NULL,
 CONSTRAINT [PK_opportunities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[officeaddress]    Script Date: 01/03/2022 10:28:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[officeaddress](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[noticeId] [varchar](50) NOT NULL,
	[zipcode] [varchar](10) NULL,
	[city] [varchar](50) NULL,
	[countryCode] [varchar](50) NULL,
	[state] [varchar](50) NULL,
 CONSTRAINT [PK_officeaddress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[links]    Script Date: 01/03/2022 10:28:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[links](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[noticeId] [varchar](50) NOT NULL,
	[type] [varchar](10) NULL,
	[link] [varchar](500) NULL,
 CONSTRAINT [PK_links] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[save_poc]    Script Date: 01/03/2022 10:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[save_poc]
(
 @noticeId varchar(50),
           @fax varchar(50),
           @type varchar(50),
           @email varchar(100),
           @phone varchar(50),
           @title varchar(50),
           @fullName varchar(50)
           )
           as
           
INSERT INTO [sam.gov].[dbo].[pointofcontact]
           ([noticeId]
           ,[fax]
           ,[type]
           ,[email]
           ,[phone]
           ,[title]
           ,[fullName])
     VALUES
           (@noticeId ,
           @fax ,
           @type ,
           @email ,
           @phone,
           @title ,
           @fullName )
GO
/****** Object:  StoredProcedure [dbo].[save_opportunities]    Script Date: 01/03/2022 10:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[save_opportunities] 
(
@noticeId varchar(50),
@title varchar(200),
@solicitationNumber varchar(50),
@fullParentPathName varchar(500),
@fullParentPathCode varchar(200),
@postedDate date,
@type varchar(50),
@baseType varchar(50),
@archiveType varchar(25),
@archiveDate date,
@typeOfSetAsideDescription varchar(500),
@typeOfSetAside varchar(200),
@responseDeadLine datetime,
@naicsCode varchar(50),
@classificationCode varchar(50),
@active varchar(50),
@award varchar(200),
@description varchar(500),
@organizationType varchar(50),
@placeOfPerformance varchar(200),
@additionalInfoLink varchar(200),
@uiLink varchar(200)
)
as
INSERT INTO [sam.gov].[dbo].[opportunities]
           ([noticeId] ,[title],[solicitationNumber] ,[fullParentPathName]   ,[fullParentPathCode],[postedDate],[type] ,[baseType] ,[archiveType] ,[archiveDate],[typeOfSetAsideDescription],
           [typeOfSetAside] ,[responseDeadLine],[naicsCode],[classificationCode] ,[active],[award],[description],[organizationType],[placeOfPerformance],[additionalInfoLink],[uiLink])
     VALUES
           (@noticeId,  @title,  @solicitationNumber,
           @fullParentPathName,
           @fullParentPathCode,
           @postedDate, 
           @type, 
           @baseType, 
           @archiveType,
           @archiveDate, 
           @typeOfSetAsideDescription, 
           @typeOfSetAside, 
           @responseDeadLine, 
           @naicsCode, 
           @classificationCode, 
           @active, 
           @award, 
           @description, 
           @organizationType,
           @placeOfPerformance, 
           @additionalInfoLink,
           @uiLink)
GO
/****** Object:  StoredProcedure [dbo].[save_office_address]    Script Date: 01/03/2022 10:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[save_office_address]
(

  @noticeId varchar(50),
           @zipcode varchar(10),
           @city varchar(50),
           @countryCode varchar(50),
           @state varchar(50)

)
AS
INSERT INTO [sam.gov].[dbo].[officeaddress]
           ([noticeId]
           ,[zipcode]
           ,[city]
           ,[countryCode]
           ,[state])
     VALUES
           ( @noticeId ,           @zipcode ,           @city,           @countryCode ,           @state        )
GO
/****** Object:  StoredProcedure [dbo].[save_links]    Script Date: 01/03/2022 10:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[save_links]
(

@noticeId varchar(50),
@type varchar(10),
@link varchar(500)

)
AS


INSERT INTO [sam.gov].[dbo].[links]           ([noticeId]           ,[type]           ,[link])
     VALUES
           (@noticeId ,@type ,@link )
GO
