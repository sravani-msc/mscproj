USE [master]
GO
/****** Object:  Database [Survey]    Script Date: 16/05/2020 22:19:50 ******/
CREATE DATABASE [Survey]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Survey', FILENAME = N'D:\db\MSSQL15.MSSQLSERVER\MSSQL\DATA\Survey.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Survey_log', FILENAME = N'D:\db\MSSQL15.MSSQLSERVER\MSSQL\DATA\Survey.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Survey] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Survey].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Survey] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [Survey] SET ANSI_NULLS ON 
GO
ALTER DATABASE [Survey] SET ANSI_PADDING ON 
GO
ALTER DATABASE [Survey] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [Survey] SET ARITHABORT ON 
GO
ALTER DATABASE [Survey] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Survey] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Survey] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Survey] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Survey] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [Survey] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [Survey] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Survey] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [Survey] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Survey] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Survey] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Survey] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Survey] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Survey] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Survey] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Survey] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Survey] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Survey] SET RECOVERY FULL 
GO
ALTER DATABASE [Survey] SET  MULTI_USER 
GO
ALTER DATABASE [Survey] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Survey] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Survey] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Survey] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Survey] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Survey', N'ON'
GO
ALTER DATABASE [Survey] SET QUERY_STORE = OFF
GO
USE [Survey]
GO
/****** Object:  Table [dbo].[CustomSurvey]    Script Date: 16/05/2020 22:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomSurvey](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[adminid] [varchar](20) NULL,
	[studyid] [int] NULL,
	[q1] [varchar](20) NULL,
	[q2] [varchar](20) NULL,
	[q3] [varchar](20) NULL,
	[q4] [varchar](20) NULL,
	[q5] [varchar](20) NULL,
	[q6] [varchar](20) NULL,
	[q7] [varchar](20) NULL,
	[q8] [varchar](20) NULL,
	[q9] [varchar](20) NULL,
	[q10] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SAUsers]    Script Date: 16/05/2020 22:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAUsers](
	[SAEmailid] [varchar](100) NOT NULL,
	[SAPassword] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SAEmailid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SCAnswerDetails]    Script Date: 16/05/2020 22:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SCAnswerDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[sno] [int] NULL,
	[a1] [varchar](50) NULL,
	[a2] [varchar](50) NULL,
	[a3] [varchar](50) NULL,
	[a4] [varchar](50) NULL,
	[a5] [varchar](50) NULL,
	[a6] [varchar](50) NULL,
	[a7] [varchar](100) NULL,
	[a8] [varchar](50) NULL,
	[a9] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SCAnswers]    Script Date: 16/05/2020 22:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SCAnswers](
	[SCEmailid] [varchar](100) NOT NULL,
	[Scode] [int] NULL,
	[SurveyDate] [date] NULL,
	[sno] [int] IDENTITY(1,1) NOT NULL,
	[studytype] [varchar](10) NULL,
 CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SCUsers]    Script Date: 16/05/2020 22:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SCUsers](
	[SCEmailid] [varchar](100) NOT NULL,
	[SCPassword] [varchar](100) NULL,
	[SCode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SCEmailid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Studies]    Script Date: 16/05/2020 22:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Studies](
	[SCode] [int] IDENTITY(1,1) NOT NULL,
	[StudyName] [varchar](50) NULL,
	[NumStudents] [int] NULL,
	[SchoolName] [varchar](50) NULL,
	[StudyType] [varchar](50) NULL,
	[CTEQ] [varchar](10) NULL,
	[CTUQ] [varchar](10) NULL,
	[CTHQ] [varchar](10) NULL,
	[Other] [varchar](10) NULL,
	[saemailid] [varchar](100) NULL,
	[ConsentForm] [varchar](100) NULL,
 CONSTRAINT [PK__tmp_ms_x__0FA9E1C03BB10224] PRIMARY KEY CLUSTERED 
(
	[SCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudyQuestions]    Script Date: 16/05/2020 22:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudyQuestions](
	[Scode] [int] NOT NULL,
	[q1] [varchar](50) NULL,
	[q2] [varchar](50) NULL,
	[q3] [varchar](50) NULL,
	[q4] [varchar](50) NULL,
	[q5] [varchar](50) NULL,
	[q6] [varchar](50) NULL,
	[q7] [varchar](50) NULL,
	[q8] [varchar](50) NULL,
	[q9] [varchar](50) NULL,
	[StudyType] [varchar](10) NOT NULL,
 CONSTRAINT [PK_StudyQuestions] PRIMARY KEY CLUSTERED 
(
	[Scode] ASC,
	[StudyType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudySurveys]    Script Date: 16/05/2020 22:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudySurveys](
	[SSid] [int] IDENTITY(1,1) NOT NULL,
	[SCode] [int] NOT NULL,
	[StudyType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_StudySurveys] PRIMARY KEY CLUSTERED 
(
	[SCode] ASC,
	[StudyType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudyTypes]    Script Date: 16/05/2020 22:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudyTypes](
	[studytype] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[studytype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[SAUsers] ([SAEmailid], [SAPassword]) VALUES (N'admin', N'secret')
GO
INSERT [dbo].[SAUsers] ([SAEmailid], [SAPassword]) VALUES (N'admin2', N'secret2')
GO
INSERT [dbo].[SAUsers] ([SAEmailid], [SAPassword]) VALUES (N'researcher1', N'secret')
GO
INSERT [dbo].[SAUsers] ([SAEmailid], [SAPassword]) VALUES (N'researcher2', N'researcher2')
GO
SET IDENTITY_INSERT [dbo].[SCAnswerDetails] ON 
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4003, 4003, N'1', N'1', N'1', N'2', N'2', N'1', N'abc', NULL, NULL)
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4004, 4004, N'0', N'1', N'0', N'1', N'I use electrical items to make things easier to do', N'a', N'very easy', NULL, NULL)
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4005, 4005, N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'bcd')
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4006, 4006, N'0', N'1', N'0', N'1', N'0', N'1', N'0', NULL, NULL)
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4007, 4007, N'0', N'0', N'3', N'4', N'3', N'0', N'ggg', NULL, NULL)
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4008, 4008, N'1', N'1', N'1', N'1', N'I use electrical items when I am bored', N'b', N'very easy', NULL, NULL)
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4009, 4009, N'0', N'1', N'0', N'1', N'2', N'1', N'0', N'1', N'hhh')
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4010, 4010, N'1', N'1', N'1', N'1', N'1', N'1', N'1', NULL, NULL)
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4011, 4011, N'1', N'0', N'6', N'3', N'3', N'0', N'hhhh
jjjj
nnnn
mmmm', NULL, NULL)
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4012, 4013, N'1', N'0', N'1', N'2', N'2', N'0', N'0', N'1', N'ggggg')
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4013, 4014, N'1', N'1', N'2', N'1', N'2', N'1', N'abc
bcd', NULL, NULL)
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4014, 4015, N'0', N'0', N'0', N'0', N'4', N'def', N'easy', NULL, NULL)
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4015, 4016, N'1', N'0', N'1', N'2', N'1', N'0', N'1', N'0', N'asdf
asdf')
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4016, 4017, N'0', N'0', N'2', N'2', N'2', N'0', N'asdf
asdf', NULL, NULL)
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4017, 4018, N'1', N'0', N'1', N'0', N'3', N'abc', N'easy', NULL, NULL)
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4018, 4019, N'0', N'1', N'0', N'3', N'3', N'0', N'1', N'1', N'asdf
asdf')
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4019, 4020, N'1', N'1', N'0', N'2', N'2', N'0', N'll', NULL, NULL)
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4020, 4021, N'0', N'0', N'1', N'1', N'3', N'abc', N'hard', NULL, NULL)
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4021, 4022, N'0', N'1', N'0', N'1', N'5', N'0', N'0', N'1', N'jj')
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4022, 4023, N'1', N'0', N'9', N'3', N'3', N'1', N'charger
earphones', NULL, NULL)
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4023, 4026, N'0', N'0', N'1', N'3', N'4', N'0', N'0', N'0', N'apps
calling')
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4024, 4027, N'1', N'1', N'1', N'1', N'1', N'1', N'1', NULL, NULL)
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4025, 4029, N'1', N'1', N'1', N'0', N'3', N'b', N'easy', NULL, NULL)
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4026, 4030, N'0', N'1', N'0', N'2', N'1', N'0', N'kkk', NULL, NULL)
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4027, 4031, N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'll')
GO
INSERT [dbo].[SCAnswerDetails] ([Id], [sno], [a1], [a2], [a3], [a4], [a5], [a6], [a7], [a8], [a9]) VALUES (4028, 4032, N'0', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[SCAnswerDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[SCAnswers] ON 
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'UFQCU ', 5005, CAST(N'2020-04-30' AS Date), 4003, N'CTEQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'UFQCU ', 5005, CAST(N'2020-04-30' AS Date), 4004, N'CTHQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'UFQCU ', 5005, CAST(N'2020-04-30' AS Date), 4005, N'CTUQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'UFQCU ', 5005, CAST(N'2020-04-30' AS Date), 4006, N'Other')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'BPHSG ', 5005, CAST(N'2020-04-30' AS Date), 4007, N'CTEQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'BPHSG ', 5005, CAST(N'2020-04-30' AS Date), 4008, N'CTHQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'BPHSG ', 5005, CAST(N'2020-04-30' AS Date), 4009, N'CTUQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'BPHSG ', 5005, CAST(N'2020-04-30' AS Date), 4010, N'Other')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'XGVIQ', 5008, CAST(N'2020-05-01' AS Date), 4011, N'CTEQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'XGVIQ', 5008, CAST(N'2020-05-01' AS Date), 4012, N'CTHQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'XGVIQ', 5008, CAST(N'2020-05-01' AS Date), 4013, N'CTUQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'AKKXU', 5009, CAST(N'2020-05-09' AS Date), 4014, N'CTEQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'AKKXU', 5009, CAST(N'2020-05-09' AS Date), 4015, N'CTHQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'AKKXU', 5009, CAST(N'2020-05-09' AS Date), 4016, N'CTUQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'IYKDT', 5009, CAST(N'2020-05-09' AS Date), 4017, N'CTEQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'IYKDT', 5009, CAST(N'2020-05-09' AS Date), 4018, N'CTHQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'IYKDT', 5009, CAST(N'2020-05-09' AS Date), 4019, N'CTUQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'QRHCA', 5009, CAST(N'2020-05-09' AS Date), 4020, N'CTEQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'QRHCA', 5009, CAST(N'2020-05-09' AS Date), 4021, N'CTHQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'QRHCA', 5009, CAST(N'2020-05-09' AS Date), 4022, N'CTUQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'ZIJZS', 5010, CAST(N'2020-05-15' AS Date), 4023, N'CTEQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'ZIJZS', 5010, CAST(N'2020-05-15' AS Date), 4024, N'CTHQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'ZIJZS', 5010, CAST(N'2020-05-15' AS Date), 4025, N'CTHQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'ZIJZS', 5010, CAST(N'2020-05-15' AS Date), 4026, N'CTUQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'ZIJZS', 5010, CAST(N'2020-05-15' AS Date), 4027, N'Other')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'EJHUT', 5010, CAST(N'2020-05-16' AS Date), 4029, N'CTHQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'EJHUT', 5010, CAST(N'2020-05-16' AS Date), 4030, N'CTEQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'EJHUT', 5010, CAST(N'2020-05-16' AS Date), 4031, N'CTUQ')
GO
INSERT [dbo].[SCAnswers] ([SCEmailid], [Scode], [SurveyDate], [sno], [studytype]) VALUES (N'EJHUT', 5010, CAST(N'2020-05-16' AS Date), 4032, N'Other')
GO
SET IDENTITY_INSERT [dbo].[SCAnswers] OFF
GO
INSERT [dbo].[SCUsers] ([SCEmailid], [SCPassword], [SCode]) VALUES (N'AKKXU', N'RFJKX', 5009)
GO
INSERT [dbo].[SCUsers] ([SCEmailid], [SCPassword], [SCode]) VALUES (N'ANUQP', N'GYQZQ', 5006)
GO
INSERT [dbo].[SCUsers] ([SCEmailid], [SCPassword], [SCode]) VALUES (N'BPHSG', N'KDUID', 5005)
GO
INSERT [dbo].[SCUsers] ([SCEmailid], [SCPassword], [SCode]) VALUES (N'DGSGR', N'DCPRF', 5010)
GO
INSERT [dbo].[SCUsers] ([SCEmailid], [SCPassword], [SCode]) VALUES (N'EJHUT', N'OVXFS', 5010)
GO
INSERT [dbo].[SCUsers] ([SCEmailid], [SCPassword], [SCode]) VALUES (N'GRWHY', N'EFTKZ', 5006)
GO
INSERT [dbo].[SCUsers] ([SCEmailid], [SCPassword], [SCode]) VALUES (N'IAPWS', N'SECTP', 5006)
GO
INSERT [dbo].[SCUsers] ([SCEmailid], [SCPassword], [SCode]) VALUES (N'IYKDT', N'YCKVD', 5009)
GO
INSERT [dbo].[SCUsers] ([SCEmailid], [SCPassword], [SCode]) VALUES (N'JZCXA', N'ZYXAB', 5012)
GO
INSERT [dbo].[SCUsers] ([SCEmailid], [SCPassword], [SCode]) VALUES (N'MYRHT', N'CIIEB', 5012)
GO
INSERT [dbo].[SCUsers] ([SCEmailid], [SCPassword], [SCode]) VALUES (N'OLSMN', N'RJMPC', 5005)
GO
INSERT [dbo].[SCUsers] ([SCEmailid], [SCPassword], [SCode]) VALUES (N'QRHCA', N'PTMZI', 5009)
GO
INSERT [dbo].[SCUsers] ([SCEmailid], [SCPassword], [SCode]) VALUES (N'UFQCU', N'QGRMW', 5005)
GO
INSERT [dbo].[SCUsers] ([SCEmailid], [SCPassword], [SCode]) VALUES (N'XGVIQ', N'WWJIL', 5008)
GO
INSERT [dbo].[SCUsers] ([SCEmailid], [SCPassword], [SCode]) VALUES (N'ZIJZS', N'XSWPQ', 5010)
GO
SET IDENTITY_INSERT [dbo].[Studies] ON 
GO
INSERT [dbo].[Studies] ([SCode], [StudyName], [NumStudents], [SchoolName], [StudyType], [CTEQ], [CTUQ], [CTHQ], [Other], [saemailid], [ConsentForm]) VALUES (5005, N'study1', 3, N'school1', NULL, NULL, NULL, NULL, NULL, N'admin', N'I agree to the survey')
GO
INSERT [dbo].[Studies] ([SCode], [StudyName], [NumStudents], [SchoolName], [StudyType], [CTEQ], [CTUQ], [CTHQ], [Other], [saemailid], [ConsentForm]) VALUES (5006, N'survey', 3, N'Mhs', NULL, NULL, NULL, NULL, NULL, N'admin', N'I agree to participate in this survey.')
GO
INSERT [dbo].[Studies] ([SCode], [StudyName], [NumStudents], [SchoolName], [StudyType], [CTEQ], [CTUQ], [CTHQ], [Other], [saemailid], [ConsentForm]) VALUES (5007, N'survey', 3, N'Mhs', NULL, NULL, NULL, NULL, NULL, N'admin', NULL)
GO
INSERT [dbo].[Studies] ([SCode], [StudyName], [NumStudents], [SchoolName], [StudyType], [CTEQ], [CTUQ], [CTHQ], [Other], [saemailid], [ConsentForm]) VALUES (5008, N'test', 1, N'dps', NULL, NULL, NULL, NULL, NULL, N'admin', N'I agree to participate in this survey.')
GO
INSERT [dbo].[Studies] ([SCode], [StudyName], [NumStudents], [SchoolName], [StudyType], [CTEQ], [CTUQ], [CTHQ], [Other], [saemailid], [ConsentForm]) VALUES (5009, N'study2', 3, N'school2', NULL, NULL, NULL, NULL, NULL, N'researcher2', N'I agree to participate in this survey.')
GO
INSERT [dbo].[Studies] ([SCode], [StudyName], [NumStudents], [SchoolName], [StudyType], [CTEQ], [CTUQ], [CTHQ], [Other], [saemailid], [ConsentForm]) VALUES (5010, N'Study1', 3, N'School1', NULL, NULL, NULL, NULL, NULL, N'admin2', NULL)
GO
INSERT [dbo].[Studies] ([SCode], [StudyName], [NumStudents], [SchoolName], [StudyType], [CTEQ], [CTUQ], [CTHQ], [Other], [saemailid], [ConsentForm]) VALUES (5011, N'Study2', 2, N'School2', NULL, NULL, NULL, NULL, NULL, N'admin2', NULL)
GO
SET IDENTITY_INSERT [dbo].[Studies] OFF
GO
INSERT [dbo].[StudyQuestions] ([Scode], [q1], [q2], [q3], [q4], [q5], [q6], [q7], [q8], [q9], [StudyType]) VALUES (5005, N'sometask', N'carried out sometask', N'time$0', N'sometask', N'sometask', N'sometask$sometasksometask', N'2$sometask', NULL, NULL, N'CTEQ')
GO
INSERT [dbo].[StudyQuestions] ([Scode], [q1], [q2], [q3], [q4], [q5], [q6], [q7], [q8], [q9], [StudyType]) VALUES (5005, N'-', N'-', N'-', N'-', N'-', N'a$b$c$d$e$f$g$h', N'-', NULL, NULL, N'CTHQ')
GO
INSERT [dbo].[StudyQuestions] ([Scode], [q1], [q2], [q3], [q4], [q5], [q6], [q7], [q8], [q9], [StudyType]) VALUES (5005, N'sometask2', N'sometask2', N'sometask2', N'sometask2', N'sometask2', N'sometask2', NULL, N'sometask2$sometask2', N'3$sometask2', N'CTUQ')
GO
INSERT [dbo].[StudyQuestions] ([Scode], [q1], [q2], [q3], [q4], [q5], [q6], [q7], [q8], [q9], [StudyType]) VALUES (5005, N'othertasksq1', N'othertasks q2', N'othertasks q3', N'othertasks q4', N'othertasks q5', N'othertasks q6', N'othertasks q7', NULL, NULL, N'Other')
GO
INSERT [dbo].[StudyQuestions] ([Scode], [q1], [q2], [q3], [q4], [q5], [q6], [q7], [q8], [q9], [StudyType]) VALUES (5006, N'-', N'-', N'-', N'-', N'-', N'TOUCJ$GGGG$GGGG$GGGGG$GGGG$GGG$FFFFF$GGGG', N'-', NULL, NULL, N'CTHQ')
GO
INSERT [dbo].[StudyQuestions] ([Scode], [q1], [q2], [q3], [q4], [q5], [q6], [q7], [q8], [q9], [StudyType]) VALUES (5006, N'GGGGG', N'GGGGG', N'GGGGGG', N'GGGGG', N'GGGGG', N'HHHHHH', NULL, N'HHHHHH$GGGGGG', N'GGGGGG$GGGGGG', N'CTUQ')
GO
INSERT [dbo].[StudyQuestions] ([Scode], [q1], [q2], [q3], [q4], [q5], [q6], [q7], [q8], [q9], [StudyType]) VALUES (5007, N'yes', N'ggggg', N'jajasj$0', N'hsyhshsh', N'nxhss', N'nhxss$jnnjsjs', N'askakMA$HSJSNZ', NULL, NULL, N'CTEQ')
GO
INSERT [dbo].[StudyQuestions] ([Scode], [q1], [q2], [q3], [q4], [q5], [q6], [q7], [q8], [q9], [StudyType]) VALUES (5008, N'hhhh', N'hhhhhh', N'nnnnnn$0', N'hhhhh', N'mmmmmm', N'bbbbbbb$nnnnn', N'nnnnnnn$nnnnnn', NULL, NULL, N'CTEQ')
GO
INSERT [dbo].[StudyQuestions] ([Scode], [q1], [q2], [q3], [q4], [q5], [q6], [q7], [q8], [q9], [StudyType]) VALUES (5008, N'bbbbb', N'bbbbbbb', N'bbbbbbb', N'bbbbbbbb', N'bbbbbbbbb', N'bbbbbbbb', NULL, N'bbbbbb$bbbbbb', N'bbbbbbbbb$bbbbbbbbb', N'CTUQ')
GO
INSERT [dbo].[StudyQuestions] ([Scode], [q1], [q2], [q3], [q4], [q5], [q6], [q7], [q8], [q9], [StudyType]) VALUES (5009, N'tesk2', N'tesk2', N'tesk2$0', N'tesk2', N'tesk2', N'tesk2$tesk2', N'2$tesk2', NULL, NULL, N'CTEQ')
GO
INSERT [dbo].[StudyQuestions] ([Scode], [q1], [q2], [q3], [q4], [q5], [q6], [q7], [q8], [q9], [StudyType]) VALUES (5009, N'-', N'-', N'-', N'-', N'-', N'abc$bcd$cde$def$efg$$$', N'-', NULL, NULL, N'CTHQ')
GO
INSERT [dbo].[StudyQuestions] ([Scode], [q1], [q2], [q3], [q4], [q5], [q6], [q7], [q8], [q9], [StudyType]) VALUES (5009, N'tech2', N'tech2', N'tech2', N'tech2', N'tech2', N'tech2', NULL, N'tech2$tech2', N'2$tech2', N'CTUQ')
GO
INSERT [dbo].[StudyQuestions] ([Scode], [q1], [q2], [q3], [q4], [q5], [q6], [q7], [q8], [q9], [StudyType]) VALUES (5010, N'mobile', N'used it', N'times did you used$0', N' using mobile', N'using mobile', N'used games$mobile', N'2$operate mobile', NULL, NULL, N'CTEQ')
GO
INSERT [dbo].[StudyQuestions] ([Scode], [q1], [q2], [q3], [q4], [q5], [q6], [q7], [q8], [q9], [StudyType]) VALUES (5010, N'-', N'-', N'-', N'-', N'-', N'a$b$c$d$e$f$$', N'-', NULL, NULL, N'CTHQ')
GO
INSERT [dbo].[StudyQuestions] ([Scode], [q1], [q2], [q3], [q4], [q5], [q6], [q7], [q8], [q9], [StudyType]) VALUES (5010, N' mobile', N'mobile', N'mobile', N'mobile', N'mobile', N'mobile', NULL, N'used learning $ mobile', N'2$ mobile', N'CTUQ')
GO
INSERT [dbo].[StudyQuestions] ([Scode], [q1], [q2], [q3], [q4], [q5], [q6], [q7], [q8], [q9], [StudyType]) VALUES (5010, N'do you know what mobile is', N'did you ever used mobile', N'do you use mobile frequently', N'does your mother use mobile', N'does your father use mobile', N'do you like using mobile', N'do you like using apple mobile', NULL, NULL, N'Other')
GO
INSERT [dbo].[StudyTypes] ([studytype]) VALUES (N'CTEQ')
GO
INSERT [dbo].[StudyTypes] ([studytype]) VALUES (N'CTHQ')
GO
INSERT [dbo].[StudyTypes] ([studytype]) VALUES (N'CTUQ')
GO
INSERT [dbo].[StudyTypes] ([studytype]) VALUES (N'Other')
GO
ALTER TABLE [dbo].[SCAnswerDetails]  WITH CHECK ADD  CONSTRAINT [FK_SCAnswerDetails_ToTable] FOREIGN KEY([sno])
REFERENCES [dbo].[SCAnswers] ([sno])
GO
ALTER TABLE [dbo].[SCAnswerDetails] CHECK CONSTRAINT [FK_SCAnswerDetails_ToTable]
GO
ALTER TABLE [dbo].[SCAnswers]  WITH CHECK ADD  CONSTRAINT [FK_SCAnswers_ToTable] FOREIGN KEY([studytype])
REFERENCES [dbo].[StudyTypes] ([studytype])
GO
ALTER TABLE [dbo].[SCAnswers] CHECK CONSTRAINT [FK_SCAnswers_ToTable]
GO
ALTER TABLE [dbo].[SCAnswers]  WITH CHECK ADD  CONSTRAINT [FK_SCAnswers_ToTable_1] FOREIGN KEY([Scode])
REFERENCES [dbo].[Studies] ([SCode])
GO
ALTER TABLE [dbo].[SCAnswers] CHECK CONSTRAINT [FK_SCAnswers_ToTable_1]
GO
ALTER TABLE [dbo].[SCAnswers]  WITH CHECK ADD  CONSTRAINT [FK_SCAnswers_ToTable_2] FOREIGN KEY([SCEmailid])
REFERENCES [dbo].[SCUsers] ([SCEmailid])
GO
ALTER TABLE [dbo].[SCAnswers] CHECK CONSTRAINT [FK_SCAnswers_ToTable_2]
GO
ALTER TABLE [dbo].[Studies]  WITH CHECK ADD  CONSTRAINT [FK_Studies_ToTable] FOREIGN KEY([saemailid])
REFERENCES [dbo].[SAUsers] ([SAEmailid])
GO
ALTER TABLE [dbo].[Studies] CHECK CONSTRAINT [FK_Studies_ToTable]
GO
ALTER TABLE [dbo].[StudyQuestions]  WITH CHECK ADD  CONSTRAINT [FK_StudyQuestions_ToTable] FOREIGN KEY([Scode])
REFERENCES [dbo].[Studies] ([SCode])
GO
ALTER TABLE [dbo].[StudyQuestions] CHECK CONSTRAINT [FK_StudyQuestions_ToTable]
GO
ALTER TABLE [dbo].[StudyQuestions]  WITH CHECK ADD  CONSTRAINT [FK_StudyQuestions_ToTable_1] FOREIGN KEY([StudyType])
REFERENCES [dbo].[StudyTypes] ([studytype])
GO
ALTER TABLE [dbo].[StudyQuestions] CHECK CONSTRAINT [FK_StudyQuestions_ToTable_1]
GO
USE [master]
GO
ALTER DATABASE [Survey] SET  READ_WRITE 
GO
