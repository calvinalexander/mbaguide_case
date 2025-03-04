USE [master]
GO
/****** Object:  Database [MBAGuide]    Script Date: 26/03/2020 20:24:41 ******/
CREATE DATABASE [MBAGuide]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MBAGuide', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MBAGuide.mdf' , SIZE = 9472KB , MAXSIZE = 256000KB , FILEGROWTH = 25%)
 LOG ON 
( NAME = N'MBAGuide_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MBAGuide_log.ldf' , SIZE = 1024KB , MAXSIZE = 256000KB , FILEGROWTH = 25%)
GO
ALTER DATABASE [MBAGuide] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MBAGuide].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MBAGuide] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MBAGuide] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MBAGuide] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MBAGuide] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MBAGuide] SET ARITHABORT OFF 
GO
ALTER DATABASE [MBAGuide] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MBAGuide] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MBAGuide] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MBAGuide] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MBAGuide] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MBAGuide] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MBAGuide] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MBAGuide] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MBAGuide] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MBAGuide] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MBAGuide] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MBAGuide] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MBAGuide] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MBAGuide] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MBAGuide] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MBAGuide] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MBAGuide] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MBAGuide] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MBAGuide] SET  MULTI_USER 
GO
ALTER DATABASE [MBAGuide] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MBAGuide] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MBAGuide] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MBAGuide] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MBAGuide] SET DELAYED_DURABILITY = DISABLED 
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 26/03/2020 20:24:41 ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 26/03/2020 20:24:41 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQL$SQLEXPRESS]    Script Date: 26/03/2020 20:24:41 ******/
CREATE LOGIN [NT Service\MSSQL$SQLEXPRESS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 26/03/2020 20:24:41 ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [LAPTOP-DM69V33T\Alexander]    Script Date: 26/03/2020 20:24:41 ******/
CREATE LOGIN [LAPTOP-DM69V33T\Alexander] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Chocolate]    Script Date: 26/03/2020 20:24:41 ******/
CREATE LOGIN [Chocolate] WITH PASSWORD=N'«÷öb$x½»(=ô:{°#Có&UØÄë¼NÝD', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Chocolate] DISABLE
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 26/03/2020 20:24:41 ******/
CREATE LOGIN [BUILTIN\Users] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 26/03/2020 20:24:41 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'^®uxîÏÝ?Þa¼ÏJúÇ?<m.ÝîÈ', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 26/03/2020 20:24:41 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'?]jÚâ3&ÄvE±üýòØòþ¼6gD', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQL$SQLEXPRESS]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [LAPTOP-DM69V33T\Alexander]
GO
ALTER SERVER ROLE [securityadmin] ADD MEMBER [Chocolate]
GO
ALTER SERVER ROLE [dbcreator] ADD MEMBER [Chocolate]
GO
USE [MBAGuide]
GO
/****** Object:  User [Coconut]    Script Date: 26/03/2020 20:24:41 ******/
CREATE USER [Coconut] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Chocolate]    Script Date: 26/03/2020 20:24:41 ******/
CREATE USER [Chocolate] FOR LOGIN [Chocolate] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Coconut]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Coconut]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Chocolate]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Chocolate]
GO
GRANT CONNECT TO [Chocolate] AS [dbo]
GO
GRANT CONNECT TO [Coconut] AS [dbo]
GO
/****** Object:  Table [dbo].[Match]    Script Date: 26/03/2020 20:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Match](
	[MatchID] [int] IDENTITY(1,1) NOT NULL,
	[HomeTeamID] [int] NOT NULL,
	[AwayTeamID] [int] NOT NULL,
	[HomeScore] [int] NOT NULL,
	[AwayScore] [int] NOT NULL,
	[MatchDate] [date] NOT NULL,
 CONSTRAINT [PK_Match] PRIMARY KEY CLUSTERED 
(
	[MatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
GRANT UPDATE ON [dbo].[Match] TO [Coconut] WITH GRANT OPTION  AS [dbo]
GO
/****** Object:  Table [dbo].[MatchDetail]    Script Date: 26/03/2020 20:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchDetail](
	[MatchID] [int] NOT NULL,
	[PlayerId] [int] NOT NULL,
	[Point] [int] NOT NULL,
	[Assist] [int] NOT NULL,
	[Rebound] [int] NOT NULL,
	[Turnover] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MatchID] ASC,
	[PlayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
GRANT INSERT ON [dbo].[MatchDetail] TO [Coconut] WITH GRANT OPTION  AS [dbo]
GO
/****** Object:  Table [dbo].[Player]    Script Date: 26/03/2020 20:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Player](
	[PlayerID] [int] IDENTITY(1,1) NOT NULL,
	[TeamID] [int] NOT NULL,
	[PlayerName] [varchar](255) NOT NULL,
	[PlayerDOB] [date] NOT NULL,
	[PlayerNumber] [char](2) NOT NULL,
	[PlayerPosition] [char](255) NOT NULL,
 CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED 
(
	[PlayerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Team]    Script Date: 26/03/2020 20:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Team](
	[TeamID] [int] IDENTITY(1,1) NOT NULL,
	[TeamName] [varchar](255) NOT NULL,
	[TeamArena] [varchar](255) NOT NULL,
	[TeamCity] [varchar](255) NOT NULL,
	[TeamWin] [int] NOT NULL,
	[TeamLose] [int] NOT NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Match] ON 

GO
INSERT [dbo].[Match] ([MatchID], [HomeTeamID], [AwayTeamID], [HomeScore], [AwayScore], [MatchDate]) VALUES (1, 5, 3, 100, 108, CAST(N'2018-10-16' AS Date))
GO
INSERT [dbo].[Match] ([MatchID], [HomeTeamID], [AwayTeamID], [HomeScore], [AwayScore], [MatchDate]) VALUES (2, 1, 2, 109, 124, CAST(N'2018-10-29' AS Date))
GO
INSERT [dbo].[Match] ([MatchID], [HomeTeamID], [AwayTeamID], [HomeScore], [AwayScore], [MatchDate]) VALUES (3, 2, 4, 116, 109, CAST(N'2019-09-01' AS Date))
GO
INSERT [dbo].[Match] ([MatchID], [HomeTeamID], [AwayTeamID], [HomeScore], [AwayScore], [MatchDate]) VALUES (4, 3, 1, 128, 131, CAST(N'2018-11-29' AS Date))
GO
INSERT [dbo].[Match] ([MatchID], [HomeTeamID], [AwayTeamID], [HomeScore], [AwayScore], [MatchDate]) VALUES (5, 4, 5, 111, 112, CAST(N'2019-09-04' AS Date))
GO
INSERT [dbo].[Match] ([MatchID], [HomeTeamID], [AwayTeamID], [HomeScore], [AwayScore], [MatchDate]) VALUES (6, 4, 2, 94, 108, CAST(N'2019-03-26' AS Date))
GO
INSERT [dbo].[Match] ([MatchID], [HomeTeamID], [AwayTeamID], [HomeScore], [AwayScore], [MatchDate]) VALUES (7, 3, 5, 110, 88, CAST(N'2019-03-16' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Match] OFF
GO
INSERT [dbo].[MatchDetail] ([MatchID], [PlayerId], [Point], [Assist], [Rebound], [Turnover]) VALUES (1, 9, 17, 5, 11, 2)
GO
INSERT [dbo].[MatchDetail] ([MatchID], [PlayerId], [Point], [Assist], [Rebound], [Turnover]) VALUES (2, 3, 22, 2, 8, 2)
GO
INSERT [dbo].[MatchDetail] ([MatchID], [PlayerId], [Point], [Assist], [Rebound], [Turnover]) VALUES (3, 1, 27, 5, 21, 3)
GO
INSERT [dbo].[MatchDetail] ([MatchID], [PlayerId], [Point], [Assist], [Rebound], [Turnover]) VALUES (3, 4, 42, 6, 11, 9)
GO
INSERT [dbo].[MatchDetail] ([MatchID], [PlayerId], [Point], [Assist], [Rebound], [Turnover]) VALUES (3, 10, 18, 1, 13, 3)
GO
INSERT [dbo].[MatchDetail] ([MatchID], [PlayerId], [Point], [Assist], [Rebound], [Turnover]) VALUES (4, 2, 37, 3, 8, 1)
GO
INSERT [dbo].[MatchDetail] ([MatchID], [PlayerId], [Point], [Assist], [Rebound], [Turnover]) VALUES (4, 5, 51, 6, 11, 1)
GO
INSERT [dbo].[MatchDetail] ([MatchID], [PlayerId], [Point], [Assist], [Rebound], [Turnover]) VALUES (4, 7, 23, 3, 3, 4)
GO
INSERT [dbo].[MatchDetail] ([MatchID], [PlayerId], [Point], [Assist], [Rebound], [Turnover]) VALUES (5, 4, 39, 3, 10, 4)
GO
INSERT [dbo].[MatchDetail] ([MatchID], [PlayerId], [Point], [Assist], [Rebound], [Turnover]) VALUES (5, 8, 27, 3, 9, 2)
GO
INSERT [dbo].[MatchDetail] ([MatchID], [PlayerId], [Point], [Assist], [Rebound], [Turnover]) VALUES (6, 1, 19, 4, 14, 5)
GO
INSERT [dbo].[MatchDetail] ([MatchID], [PlayerId], [Point], [Assist], [Rebound], [Turnover]) VALUES (7, 6, 33, 3, 7, 4)
GO
SET IDENTITY_INSERT [dbo].[Player] ON 

GO
INSERT [dbo].[Player] ([PlayerID], [TeamID], [PlayerName], [PlayerDOB], [PlayerNumber], [PlayerPosition]) VALUES (1, 2, N'Giannis Antetokounmpo', CAST(N'1994-06-12' AS Date), N'34', N'PF                                                                                                                                                                                                                                                             ')
GO
INSERT [dbo].[Player] ([PlayerID], [TeamID], [PlayerName], [PlayerDOB], [PlayerNumber], [PlayerPosition]) VALUES (2, 1, N'Kawhi Leonard', CAST(N'1991-06-29' AS Date), N'2 ', N'SF                                                                                                                                                                                                                                                             ')
GO
INSERT [dbo].[Player] ([PlayerID], [TeamID], [PlayerName], [PlayerDOB], [PlayerNumber], [PlayerPosition]) VALUES (3, 1, N'Pascal Siakam', CAST(N'1994-02-04' AS Date), N'43', N'PF                                                                                                                                                                                                                                                             ')
GO
INSERT [dbo].[Player] ([PlayerID], [TeamID], [PlayerName], [PlayerDOB], [PlayerNumber], [PlayerPosition]) VALUES (4, 4, N'James Harden', CAST(N'1989-08-26' AS Date), N'13', N'SG                                                                                                                                                                                                                                                             ')
GO
INSERT [dbo].[Player] ([PlayerID], [TeamID], [PlayerName], [PlayerDOB], [PlayerNumber], [PlayerPosition]) VALUES (5, 3, N'Kevin Durant', CAST(N'1988-09-29' AS Date), N'35', N'SF                                                                                                                                                                                                                                                             ')
GO
INSERT [dbo].[Player] ([PlayerID], [TeamID], [PlayerName], [PlayerDOB], [PlayerNumber], [PlayerPosition]) VALUES (6, 3, N'Stephen Curry', CAST(N'1988-03-14' AS Date), N'30', N'PG                                                                                                                                                                                                                                                             ')
GO
INSERT [dbo].[Player] ([PlayerID], [TeamID], [PlayerName], [PlayerDOB], [PlayerNumber], [PlayerPosition]) VALUES (7, 3, N'Klay Thompson', CAST(N'1990-08-02' AS Date), N'11', N'SG                                                                                                                                                                                                                                                             ')
GO
INSERT [dbo].[Player] ([PlayerID], [TeamID], [PlayerName], [PlayerDOB], [PlayerNumber], [PlayerPosition]) VALUES (8, 5, N'Paul George', CAST(N'1990-02-05' AS Date), N'13', N'SF                                                                                                                                                                                                                                                             ')
GO
INSERT [dbo].[Player] ([PlayerID], [TeamID], [PlayerName], [PlayerDOB], [PlayerNumber], [PlayerPosition]) VALUES (9, 5, N'Steven Adams', CAST(N'1993-07-20' AS Date), N'12', N'C                                                                                                                                                                                                                                                              ')
GO
INSERT [dbo].[Player] ([PlayerID], [TeamID], [PlayerName], [PlayerDOB], [PlayerNumber], [PlayerPosition]) VALUES (10, 4, N'Clint Capela', CAST(N'1994-05-18' AS Date), N'15', N'C                                                                                                                                                                                                                                                              ')
GO
SET IDENTITY_INSERT [dbo].[Player] OFF
GO
SET IDENTITY_INSERT [dbo].[Team] ON 

GO
INSERT [dbo].[Team] ([TeamID], [TeamName], [TeamArena], [TeamCity], [TeamWin], [TeamLose]) VALUES (1, N'Toronto Raptors', N'Air Canada Centre', N'Toronto', 58, 24)
GO
INSERT [dbo].[Team] ([TeamID], [TeamName], [TeamArena], [TeamCity], [TeamWin], [TeamLose]) VALUES (2, N'Milwaukee Bucks', N'Fiserv Forum', N'Milwaukee', 60, 22)
GO
INSERT [dbo].[Team] ([TeamID], [TeamName], [TeamArena], [TeamCity], [TeamWin], [TeamLose]) VALUES (3, N'Golden State Warriors', N'Oakland Arena', N'San Fransisco', 57, 25)
GO
INSERT [dbo].[Team] ([TeamID], [TeamName], [TeamArena], [TeamCity], [TeamWin], [TeamLose]) VALUES (4, N'Houston Rockets', N'Toyota Center', N'Houston', 53, 29)
GO
INSERT [dbo].[Team] ([TeamID], [TeamName], [TeamArena], [TeamCity], [TeamWin], [TeamLose]) VALUES (5, N'Oklahoma City Thunder', N'Chesapeake Energy Arena', N'Oklahoma City', 49, 33)
GO
SET IDENTITY_INSERT [dbo].[Team] OFF
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_Team] FOREIGN KEY([HomeTeamID])
REFERENCES [dbo].[Team] ([TeamID])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_Team]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_Team1] FOREIGN KEY([AwayTeamID])
REFERENCES [dbo].[Team] ([TeamID])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_Team1]
GO
ALTER TABLE [dbo].[MatchDetail]  WITH CHECK ADD  CONSTRAINT [FK_MatchDetail_Match] FOREIGN KEY([MatchID])
REFERENCES [dbo].[Match] ([MatchID])
GO
ALTER TABLE [dbo].[MatchDetail] CHECK CONSTRAINT [FK_MatchDetail_Match]
GO
ALTER TABLE [dbo].[MatchDetail]  WITH CHECK ADD  CONSTRAINT [FK_MatchDetail_Player] FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Player] ([PlayerID])
GO
ALTER TABLE [dbo].[MatchDetail] CHECK CONSTRAINT [FK_MatchDetail_Player]
GO
ALTER TABLE [dbo].[Player]  WITH CHECK ADD  CONSTRAINT [FK_Player_Team] FOREIGN KEY([TeamID])
REFERENCES [dbo].[Team] ([TeamID])
GO
ALTER TABLE [dbo].[Player] CHECK CONSTRAINT [FK_Player_Team]
GO
ALTER TABLE [dbo].[Player]  WITH CHECK ADD  CONSTRAINT [CK_Player] CHECK  (([PlayerPosition]='C' OR [PlayerPosition]='PF' OR [PlayerPosition]='SF' OR [PlayerPosition]='SG' OR [PlayerPosition]='PG'))
GO
ALTER TABLE [dbo].[Player] CHECK CONSTRAINT [CK_Player]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [CK_Team] CHECK  (([TeamArena] like '% %'))
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [CK_Team]
GO
USE [master]
GO
ALTER DATABASE [MBAGuide] SET  READ_WRITE 
GO
