USE [s17guest33]
GO
ALTER TABLE [dbo].[vendor] DROP CONSTRAINT [CK__vendor__table_nu__58F12BAE]
GO
ALTER TABLE [dbo].[vendor] DROP CONSTRAINT [FK__vendor__attendee__59E54FE7]
GO
ALTER TABLE [dbo].[scheduling] DROP CONSTRAINT [FK__schedulin__locat__71BCD978]
GO
ALTER TABLE [dbo].[scheduling] DROP CONSTRAINT [FK__schedulin__cd_id__6FD49106]
GO
ALTER TABLE [dbo].[scheduling] DROP CONSTRAINT [FK__schedulin__AR_id__70C8B53F]
GO
ALTER TABLE [dbo].[room] DROP CONSTRAINT [FK__room__location_i__6462DE5A]
GO
ALTER TABLE [dbo].[raffle] DROP CONSTRAINT [FK__raffle__gift_id__60924D76]
GO
ALTER TABLE [dbo].[raffle] DROP CONSTRAINT [FK__raffle__event_id__5F9E293D]
GO
ALTER TABLE [dbo].[raffle] DROP CONSTRAINT [FK__raffle__attendee__618671AF]
GO
ALTER TABLE [dbo].[presenter] DROP CONSTRAINT [FK__presenter__atten__49AEE81E]
GO
ALTER TABLE [dbo].[organizer] DROP CONSTRAINT [FK__organizer__atten__673F4B05]
GO
ALTER TABLE [dbo].[loc_address] DROP CONSTRAINT [FK__loc_addre__locat__45DE573A]
GO
ALTER TABLE [dbo].[loc_address] DROP CONSTRAINT [FK__loc_addre__addre__46D27B73]
GO
ALTER TABLE [dbo].[gift] DROP CONSTRAINT [FK__gift__vendor_id__5CC1BC92]
GO
ALTER TABLE [dbo].[event] DROP CONSTRAINT [FK__event__location___4C8B54C9]
GO
ALTER TABLE [dbo].[class_track] DROP CONSTRAINT [FK__class_tra__track__515009E6]
GO
ALTER TABLE [dbo].[class_track] DROP CONSTRAINT [FK__class_tra__locat__52442E1F]
GO
ALTER TABLE [dbo].[class_track] DROP CONSTRAINT [FK__class_tra__class__53385258]
GO
ALTER TABLE [dbo].[class_duration] DROP CONSTRAINT [FK__class_dur__class__5614BF03]
GO
ALTER TABLE [dbo].[attendee_role] DROP CONSTRAINT [FK__attendee___role___6CF8245B]
GO
ALTER TABLE [dbo].[attendee_role] DROP CONSTRAINT [FK__attendee___atten__6C040022]
GO
ALTER TABLE [dbo].[a_address] DROP CONSTRAINT [FK__a_address__atten__4301EA8F]
GO
ALTER TABLE [dbo].[a_address] DROP CONSTRAINT [FK__a_address__addre__420DC656]
GO
/****** Object:  Table [dbo].[vendor]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[vendor]
GO
/****** Object:  Table [dbo].[track]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[track]
GO
/****** Object:  Table [dbo].[scheduling]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[scheduling]
GO
/****** Object:  Table [dbo].[room]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[room]
GO
/****** Object:  Table [dbo].[role]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[role]
GO
/****** Object:  Table [dbo].[raffle]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[raffle]
GO
/****** Object:  Table [dbo].[presenter]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[presenter]
GO
/****** Object:  Table [dbo].[organizer]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[organizer]
GO
/****** Object:  Table [dbo].[location]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[location]
GO
/****** Object:  Table [dbo].[loc_address]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[loc_address]
GO
/****** Object:  Table [dbo].[gift]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[gift]
GO
/****** Object:  Table [dbo].[event]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[event]
GO
/****** Object:  Table [dbo].[class_track]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[class_track]
GO
/****** Object:  Table [dbo].[class_duration]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[class_duration]
GO
/****** Object:  Table [dbo].[class]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[class]
GO
/****** Object:  Table [dbo].[attendees]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[attendees]
GO
/****** Object:  Table [dbo].[attendee_role]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[attendee_role]
GO
/****** Object:  Table [dbo].[address]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[address]
GO
/****** Object:  Table [dbo].[a_address]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP TABLE [dbo].[a_address]
GO
/****** Object:  StoredProcedure [dbo].[insertSpeaker]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP PROCEDURE [dbo].[insertSpeaker]
GO
/****** Object:  StoredProcedure [dbo].[classSelect]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP PROCEDURE [dbo].[classSelect]
GO
/****** Object:  User [s17guest33]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP USER [s17guest33]
GO
USE [master]
GO
/****** Object:  Database [s17guest33]    Script Date: 5/18/2017 7:23:19 PM ******/
DROP DATABASE [s17guest33]
GO
/****** Object:  Database [s17guest33]    Script Date: 5/18/2017 7:23:19 PM ******/
CREATE DATABASE [s17guest33]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N's17guest33', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.CSDB440\MSSQL\DATA\s17guest33.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N's17guest33_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.CSDB440\MSSQL\DATA\s17guest33_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [s17guest33] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [s17guest33].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [s17guest33] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [s17guest33] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [s17guest33] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [s17guest33] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [s17guest33] SET ARITHABORT OFF 
GO
ALTER DATABASE [s17guest33] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [s17guest33] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [s17guest33] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [s17guest33] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [s17guest33] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [s17guest33] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [s17guest33] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [s17guest33] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [s17guest33] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [s17guest33] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [s17guest33] SET  ENABLE_BROKER 
GO
ALTER DATABASE [s17guest33] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [s17guest33] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [s17guest33] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [s17guest33] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [s17guest33] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [s17guest33] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [s17guest33] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [s17guest33] SET RECOVERY FULL 
GO
ALTER DATABASE [s17guest33] SET  MULTI_USER 
GO
ALTER DATABASE [s17guest33] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [s17guest33] SET DB_CHAINING OFF 
GO
ALTER DATABASE [s17guest33] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [s17guest33] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N's17guest33', N'ON'
GO
USE [s17guest33]
GO
/****** Object:  User [s17guest33]    Script Date: 5/18/2017 7:23:19 PM ******/
CREATE USER [s17guest33] FOR LOGIN [s17guest33] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [s17guest33]
GO
/****** Object:  StoredProcedure [dbo].[classSelect]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Bryant Barron
--Comp440 final

CREATE procedure [dbo].[classSelect](
	@difficulty varchar(25),
	@loc_name varchar(25)
)
as 
begin
	Select C.difficulty, CT.location_id, L.loc_name
	from class C
	left join class_track CT on C.class_id = CT.class_id
	left join location  L on CT.location_id = L.location_id
	where loc_name = @loc_name and difficulty = @difficulty
end


GO
/****** Object:  StoredProcedure [dbo].[insertSpeaker]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertSpeaker]
	@speaker varchar(255),
	@class varchar(255)
AS
begin 
	insert into presenter(name) values (@speaker)
end;



GO
/****** Object:  Table [dbo].[a_address]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_address](
	[a_address_id] [int] IDENTITY(1,1) NOT NULL,
	[address_id] [int] NOT NULL,
	[attendees_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[a_address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[address]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[address](
	[address_id] [int] IDENTITY(1,1) NOT NULL,
	[address] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[zip] [varchar](10) NULL,
	[state] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[attendee_role]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attendee_role](
	[AR_id] [int] IDENTITY(1,1) NOT NULL,
	[attendees_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AR_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[attendees]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[attendees](
	[attendees_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](16) NOT NULL,
	[last_name] [varchar](16) NULL,
	[email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[attendees_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[class]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[class](
	[class_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [text] NOT NULL,
	[difficulty] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[class_duration]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class_duration](
	[cd_id] [int] IDENTITY(1,1) NOT NULL,
	[class_id] [int] NOT NULL,
	[duration] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cd_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[class_track]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class_track](
	[class_track_id] [int] IDENTITY(1,1) NOT NULL,
	[track_id] [int] NOT NULL,
	[location_id] [int] NOT NULL,
	[class_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[class_track_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[event]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[event](
	[event_id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[event_name] [varchar](max) NOT NULL,
	[location_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[gift]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gift](
	[gift_id] [int] IDENTITY(1,1) NOT NULL,
	[vendor_id] [int] NOT NULL,
	[gift_name] [varchar](16) NOT NULL,
	[gift_description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[gift_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loc_address]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loc_address](
	[loc_add_id] [int] IDENTITY(1,1) NOT NULL,
	[location_id] [int] NOT NULL,
	[address_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[loc_add_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[location]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[location](
	[location_id] [int] IDENTITY(1,1) NOT NULL,
	[loc_name] [varchar](25) NOT NULL,
	[country] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[organizer]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[organizer](
	[organizer_id] [int] IDENTITY(1,1) NOT NULL,
	[attendees_id] [int] NOT NULL,
	[AR_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[organizer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[presenter]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[presenter](
	[presenter_id] [int] IDENTITY(1,1) NOT NULL,
	[attendees_id] [int] NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[presenter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[raffle]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[raffle](
	[raffle_id] [int] IDENTITY(1,1) NOT NULL,
	[event_id] [int] NOT NULL,
	[gift_id] [int] NOT NULL,
	[attendees_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[raffle_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[role]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[room]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room](
	[room_id] [int] IDENTITY(1,1) NOT NULL,
	[size] [int] NOT NULL,
	[location_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[scheduling]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scheduling](
	[schedule_id] [int] IDENTITY(1,1) NOT NULL,
	[cd_id] [int] NOT NULL,
	[AR_id] [int] NOT NULL,
	[location_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[schedule_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[track]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[track](
	[track_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[track_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[vendor]    Script Date: 5/18/2017 7:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vendor](
	[vendor_id] [int] IDENTITY(1,1) NOT NULL,
	[table_number] [int] NOT NULL,
	[attendees_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[vendor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[address] ON 

INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (1, N'10 Napa Ct.', N'Lebanon', N'2450', N'Oregon')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (2, N'1000 Bidweld Street', N'Haney', N'98371', N'British Columbia')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (3, N'1002 N. Spoonwood Court', N'Hervey Bay', N'PB12', N'Queensland')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (4, N'1003 Matterhorn Ct', N'Lebanon', N'21201', N'Oregon')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (5, N'1005 Matterhorn Ct.', N'Cambridge', N'94704', N'England')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (6, N'1005 Matterhorn Ct.', N'Mill Valley', N'V7L 4J4', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (7, N'1005 Tanager Court', N'Corvallis', N'98312', N'Oregon')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (8, N'1005 Tanager Court', N'Milsons Point', N'GA10', N'New South Wales')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (9, N'1006 Deercreek Ln', N'Bellflower', N'V9', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (10, N'1006 Deercreek Ln', N'Torrance', N'94704', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (11, N'101 Adobe Dr', N'Coffs Harbour', N'98168', N'New South Wales')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (12, N'101 Adobe Dr', N'Puyallup', N'SW8 4BG', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (13, N'101, avenue de la Gare', N'Peterborough', N'90401', N'England')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (14, N'1010 Maple', N'Baltimore', N'98312', N'Maryland')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (15, N'1011 Yolanda Circle', N'Berkeley', N'2036', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (16, N'1011 Yolanda Circle', N'N. Vancouver', N'95062', N'British Columbia')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (17, N'1013 Holiday Hills Dr.', N'Bremerton', N'97355', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (18, N'1013 Holiday Hills Dr.', N'Gateshead', N'94014', N'England')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (19, N'1015 Lynwood Drive', N'Metchosin', N'LE18', N'British Columbia')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (20, N'1019 Carletto Drive', N'Berkeley', N'98033', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (21, N'1019 Mt. Davidson Court', N'Burien', N'97045', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (22, N'1019 Mt. Davidson Court', N'London', N'91910', N'England')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (23, N'102 Vista Place', N'Santa Monica', N'97045', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (24, N'1020 Book Road', N'Bremerton', N'AS23', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (25, N'1020 Carletto Drive', N'Matraville', N'91791', N'New South Wales')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (26, N'1020 Carletto Drive', N'Santa Cruz', N'2777', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (27, N'1023 Hawkins Street', N'Lebanon', N'97205', N'Oregon')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (28, N'1024 Walnut Blvd.', N'Colma', N'2264', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (29, N'1025 Holly Oak Drive', N'Leeds', N'W1X3SE', N'England')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (30, N'1025 R St.', N'Kirkland', N'45202', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (31, N'1025 Yosemite Dr.', N'Oregon City', N'90505', N'Oregon')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (32, N'1028 Green View Court', N'Chula Vista', N'4810', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (33, N'1028 Green View Court', N'Oregon City', N'2055', N'Oregon')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (34, N'1037 Hayes Court', N'Stoke-on-Trent', N'4655', N'England')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (35, N'1039 Adelaide St.', N'West Covina', N'99362', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (36, N'104 Hilltop Dr.', N'Springwood', N'2500', N'New South Wales')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (37, N'104 Kaski Ln.', N'Portland', N'2444', N'Oregon')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (38, N'1040 Greenbush Drive', N'Silverwater', N'98225', N'New South Wales')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (39, N'1040 Northridge Road', N'London', N'W10 6BL', N'England')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (40, N'1044 San Carlos', N'Cincinnati', N'98104', N'Ohio')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (41, N'1045 Lolita Drive', N'Torrance', N'90012', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (42, N'1045 Lolita Drive', N'Townsville', N'98201', N'Queensland')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (43, N'1047 Las Quebradas Lane', N'North Sydney', N'94704', N'New South Wales')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (44, N'1048 Burwood Way', N'Hervey Bay', N'94014', N'Queensland')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (45, N'1048 Las Quebradas Lane', N'Walla Walla', N'V3A 4R2', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (46, N'1048 Las Quebradas Lane', N'Wollongong', N'SW6 SBY', N'New South Wales')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (47, N'105 Clark Creek Lane', N'Port Macquarie', N'92020', N'New South Wales')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (48, N'105 Woodruff Ln.', N'Bellingham', N'91502', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (49, N'1050 Creed Ave', N'London', N'98052', N'England')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (50, N'081, boulevard du Montparnasse', N'Seattle', N'98225', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (51, N'1 Smiling Tree Court', N'Los Angeles', N'2444', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (52, N'100, rue des Rosiers', N'Everett', N'98901', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (53, N'1002 N. Spoonwood Court', N'Berkeley', N'91502', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (54, N'1005 Fremont Street', N'Colma', N'2138', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (55, N'1005 Valley Oak Plaza', N'Langley', N'91364', N'British Columbia')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (56, N'1005 Valley Oak Plaza', N'London', N'2450', N'England')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (57, N'1007 Cardinet Dr.', N'El Cajon', N'98284', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (58, N'1008 Lydia Lane', N'Burbank', N'97034', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (59, N'101 Candy Rd.', N'Redmond', N'98270', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (60, N'1011 Green St.', N'Bellingham', N'MK8 8DF', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (61, N'1013 Buchanan Rd', N'Port Macquarie', N'T2P 2G8', N'New South Wales')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (62, N'1013 Buchanan Rd', N'Yakima', N'4810', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (63, N'1016 Park Avenue', N'Burbank', N'91502', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (64, N'1019 Book Road', N'Rhodes', N'OX1', N'New South Wales')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (65, N'1019 Buchanan Road', N'Woodland Hills', N'4810', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (66, N'1019 Candy Rd.', N'Coffs Harbour', N'98036', N'New South Wales')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (67, N'1019 Chance Drive', N'Sedro Woolley', N'3205', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (68, N'1019 Kenwal Rd.', N'Lake Oswego', N'98027', N'Oregon')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (69, N'1019 Pennsylvania Blvd', N'Marysville', N'3280', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (70, N'102 Vista Place', N'Milton Keynes', N'94010', N'England')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (71, N'10203 Acorn Avenue', N'Calgary', N'98168', N'Alberta')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (72, N'1023 Hawkins Street', N'Townsville', N'98501', N'Queensland')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (73, N'1023 Riveria Way', N'Burbank', N'PE17', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (74, N'1023 Riviera Way', N'Oxford', N'2113', N'England')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (75, N'1025 Yosemite Dr.', N'Townsville', N'AS23', N'Queensland')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (76, N'1026 Mt. Wilson Pl.', N'Lynnwood', N'92102', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (77, N'1026 Mt. Wilson Pl.', N'South Melbourne', N'98366', N'Victoria')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (78, N'1028 Indigo Ct.', N'Issaquah', N'2444', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (79, N'1028 Indigo Ct.', N'Warrnambool', N'94519', N'Victoria')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (80, N'1028 Royal Oak Rd.', N'Burlingame', N'V2L3W8', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (81, N'1029 Birchwood Dr', N'Burien', N'91364', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (82, N'1029 Birchwood Dr', N'Olympia', N'2300', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (83, N'1030 Ambush Dr.', N'Bury', N'V8Z 4N5', N'England')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (84, N'1032 Buena Vista', N'North Ryde', N'94014', N'New South Wales')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (85, N'1032 Coats Road', N'Stoke-on-Trent', N'V8P', N'England')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (86, N'1035 Arguello Blvd.', N'San Diego', N'V2W 1W2', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (87, N'1036 Mason Dr', N'Port Orchard', N'94611', N'Washington')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (88, N'1039 Adelaide St.', N'Port Macquarie', N'97355', N'New South Wales')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (89, N'104 Hilltop Dr.', N'Concord', N'1597', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (90, N'1040 Greenbush Drive', N'Newton', N'V3A 4R2', N'British Columbia')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (91, N'1040 Northridge Road', N'Woodland Hills', N'', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (92, N'1042 Hooftrail Way', N'Newcastle', N'', N'New South Wales')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (93, N'1046 Cloverleaf Circle', N'Shawnee', N'', N'British Columbia')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (94, N'1046 San Carlos Avenue', N'Colma', N'', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (95, N'1047 Las Quebradas Lane', N'Oak Bay', N'', N'British Columbia')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (96, N'1048 Burwood Way', N'Haney', N'', N'British Columbia')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (97, N'105 Woodruff Ln.', N'Oakland', N'', N'California')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (98, N'1050 Creed Ave', N'Lebanon', N'', N'Oregon')
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (99, N'1050 Greenhills Circle', N'Lane Cove', N'', N'New South Wales')
GO
INSERT [dbo].[address] ([address_id], [address], [city], [zip], [state]) VALUES (100, N'1050 Greenhills Circle', N'Langley', N'', N'British Columbia')
SET IDENTITY_INSERT [dbo].[address] OFF
SET IDENTITY_INSERT [dbo].[attendees] ON 

INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (1, N'Amanda', N'Long', N'ALong@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (2, N'Christian', N'Shan', N'CShan@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (3, N'Troy', N'Sara', N'TSara@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (4, N'Kaitlyn', N'Baker', N'KBaker@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (5, N'Suzanne', N'Ma', N'SMa@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (6, N'Anna', N'Jones', N'AJones@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (7, N'Carlos', N'Baker', N'CBaker@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (8, N'Tanya', N'Munoz', N'TMunoz@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (9, N'Tabitha', N'Gill', N'TGill@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (10, N'Alexis', N'Lee', N'ALee@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (11, N'Erick', N'Suri', N'ESuri@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (12, N'Marcus', N'Evans', N'MEvans@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (13, N'Marcus', N'Clark', N'MClark@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (14, N'Gilbert', N'Xu', N'GXu@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (15, N'Paula', N'Rubio', N'PRubio@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (16, N'Julian', N'Isla', N'JIsla@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (17, N'Jesse', N'Scott', N'JScott@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (18, N'Naomi', N'Sanz', N'NSanz@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (19, N'Isabella', N'Lee', N'ILee@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (20, N'Dawn', N'Yuan', N'DYuan@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (21, N'Olivia', N'Blue', N'OBlue@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (22, N'Emmanuel', N'Lopez', N'ELopez@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (23, N'Nathan', N'Yang', N'NYang@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (24, N'Gabrielle', N'Wood', N'GWood@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (25, N'Katrina', N'Anand', N'KAnand@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (26, N'Anthony', N'Jones', N'AJones@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (27, N'Natalie', N'Reed', N'NReed@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (28, N'Dakota', N'Ross', N'DRoss@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (29, N'Shawn', N'Goel', N'SGoel@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (30, N'Nicole', N'Diaz', N'NDiaz@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (31, N'Wyatt', N'Davis', N'WDavis@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (32, N'Christy', N'Huang', N'CHuang@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (33, N'Sydney', N'Evans', N'SEvans@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (34, N'Katherine', N'Baker', N'KBaker@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (35, N'Edward', N'Wood', N'EWood@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (36, N'Johnny', N'Rai', N'JRai@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (37, N'Emily', N'Moore', N'EMoore@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (38, N'Randy', N'Yang', N'RYang@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (39, N'Roy', N'Ruiz', N'RRuiz@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (40, N'Marshall', N'Sun', N'MSun@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (41, N'Gabriella', N'Perez', N'GPerez@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (42, N'Erika', N'Gill', N'EGill@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (43, N'Kathryn', N'Shen', N'KShen@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (44, N'Sharon', N'Yuan', N'SYuan@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (45, N'Victoria', N'Lee', N'VLee@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (46, N'Brenda', N'Arun', N'BArun@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (47, N'Alex', N'Scott', N'AScott@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (48, N'Yolanda', N'Luo', N'YLuo@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (49, N'Martin', N'Vance', N'MVance@gmail.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (50, N'Jeremy', N'Roberts', N'JRoberts@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (51, N'Amanda', N'Ramirez', N'ARamirez@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (52, N'Jada', N'Nelson', N'JNelson@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (53, N'Hunter', N'Wright', N'HWright@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (54, N'Sierra', N'Wright', N'SWright@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (55, N'Sarah', N'Simmons', N'SSimmons@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (56, N'Mandar', N'Samant', N'MSamant@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (57, N'Isaiah', N'Rogers', N'IRogers@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (58, N'Ian', N'Foster', N'IFoster@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (59, N'Ben', N'Miller', N'BMiller@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (60, N'Sarah', N'Barnes', N'SBarnes@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (61, N'Casey', N'Martin', N'CMartin@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (62, N'Victoria', N'Murphy', N'VMurphy@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (63, N'Sydney', N'Rogers', N'SRogers@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (64, N'Marvin', N'Hernandez', N'MHernandez@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (65, N'Carlos', N'Carter', N'CCarter@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (66, N'Rebekah', N'Garcia', N'RGarcia@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (67, N'Haley', N'Henderson', N'HHenderson@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (68, N'Jacob', N'Taylor', N'JTaylor@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (69, N'Seth', N'Martin', N'SMartin@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (70, N'Larry', N'Suarez', N'LSuarez@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (71, N'Garrett', N'Vargas', N'GVargas@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (72, N'Abby', N'Martinez', N'AMartinez@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (73, N'Justin', N'Thomas', N'JThomas@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (74, N'Evelyn', N'Martinez', N'EMartinez@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (75, N'Pamela', N'Chapman', N'PChapman@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (76, N'Kayla', N'Griffin', N'KGriffin@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (77, N'Jill', N'Navarro', N'JNavarro@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (78, N'Nathan', N'Walker', N'NWalker@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (79, N'Tabitha', N'Moreno', N'TMoreno@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (80, N'Mason', N'Sanchez', N'MSanchez@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (81, N'Natasha', N'Navarro', N'NNavarro@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (82, N'Kevin', N'Russell', N'KRussell@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (83, N'Katelyn', N'Rivera', N'KRivera@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (84, N'Alfredo', N'Ortega', N'AOrtega@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (85, N'Andrea', N'Campbell', N'ACampbell@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (86, N'Jeremy', N'Peterson', N'JPeterson@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (87, N'Arianna', N'Ramirez', N'ARamirez@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (88, N'Mario', N'Sharma', N'MSharma@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (89, N'Adam', N'Collins', N'ACollins@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (90, N'Taylor', N'Martin', N'TMartin@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (91, N'Gabriel', N'Collins', N'GCollins@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (92, N'Randall', N'Martin', N'RMartin@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (93, N'Samantha', N'Jenkins', N'SJenkins@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (94, N'Justin', N'Simmons', N'JSimmons@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (95, N'Ethan', N'Winston', N'EWinston@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (96, N'Hunter', N'Roberts', N'HRoberts@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (97, N'Nathaniel', N'Murphy', N'NMurphy@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (98, N'Charles', N'Wilson', N'CWilson@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (99, N'Carrie', N'Alvarez', N'CAlvarez@yahoo.com')
GO
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (100, N'Paige', N'Alexander', N'PAlexander@yahoo.com')
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (101, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (102, N'Jeremiah', N'Peschka', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (103, N'Jeremiah', N'Peschka', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (104, N'Kevin', N'Goff', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (105, N'Chris', N'Seferlis', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (106, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (107, N'Mohammad', N'Yusuf', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (108, N'Kennie', N'Pontoppidan', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (109, N'John', N'Sterrett', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (110, N'Thomas', N'Grohser', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (111, N'Thomas', N'Grohser', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (112, N'Joe', N'Chang', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (113, N'Joe', N'Chang', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (114, N'Michael', N'Wharton', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (115, N'Sunil', N'Kadimdiwan', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (116, N'Mike', N'Walsh', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (117, N'John', N'Miner', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (118, N'John', N'Miner', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (119, N'James', N'Serra', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (120, N'Joseph', N'D''Antoni', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (121, N'Paresh', N'Motiwala', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (122, N'Mickey', N'Stuewe', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (123, N'John', N'Miner', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (124, N'Stacia', N'Misner', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (125, N'James', N'Serra', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (126, N'James', N'Serra', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (127, N'David', N'Hansen', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (128, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (129, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (130, N'Kevin', N'Goff', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (131, N'Mickey', N'Stuewe', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (132, N'Allan', N'Hirt', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (133, N'Allan', N'Hirt', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (134, N'SQLSatruday', N'364', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (135, N'Robert', N'Pearl', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (136, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (137, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (138, N'John', N'Flannery', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (139, N'John', N'Flannery', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (140, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (141, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (142, N'Edward', N'Pollack', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (143, N'Mohammad', N'Yusuf', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (144, N'Michael', N'Corey', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (145, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (146, N'Robert', N'Pearl', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (147, N'Gigi', N'Bell', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (148, N'John', N'Flannery', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (149, N'Allan', N'Hirt', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (150, N'Jason', N'Horner', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (151, N'Jason', N'Horner', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (152, N'Edward', N'Pollack', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (153, N'Edward', N'Pollack', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (154, N'Brent', N'Ozar', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (155, N'James', N'Serra', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (156, N'Thomas', N'Grohser', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (157, N'Paul', N'Rizza', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (158, N'SQLSaturday', N'364', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (159, N'Grant', N'Fritchey', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (160, N'Sayed', N'Saeed', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (161, N'John', N'Miner', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (162, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (163, N'Paul', N'Rizza', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (164, N'Stéphane', N'Fréchette', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (165, N'Chris', N'Bell', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (166, N'Andy', N'Leonard', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (167, N'Varsham', N'Papikian', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (168, N'David', N'Bermingham', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (169, N'James', N'Serra', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (170, N'Brent', N'Ozar', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (171, N'George', N'Walters', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (172, N'Allan', N'Hirt', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (173, N'Kevin', N'Goff', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (174, N'Jack', N'Corbett', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (175, N'Kevin', N'Goff', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (176, N'David', N'Hansen', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (177, N'Stacia', N'Misner', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (178, N'John', N'Flannery', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (179, N'John', N'Sterrett', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (180, N'John', N'Sterrett', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (181, N'Brandon', N'Leach', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (182, N'Brandon', N'Leach', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (183, N'Allan', N'Hirt', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (184, N'Jeremiah', N'Peschka', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (185, N'SQLSaturday', N'364', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (186, N'SQLSaturday', N'364', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (187, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (188, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (189, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (190, N'James', N'Serra', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (191, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (192, N'Hilary', N'Cotter', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (193, N'Stacia', N'Misner', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (194, N'Jason', N'Brimhall', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (195, N'Mike', N'Walsh', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (196, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (197, N'Kevin', N'Schenega', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (198, N'Chris', N'Bell', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (199, N'Kennie', N'Pontoppidan', NULL)
GO
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (200, N'Todd', N'Chittenden', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (201, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (202, N'Michael', N'Wharton', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (203, N'Jason', N'Horner', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (204, N'Chris', N'Bell', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (205, N'Edward', N'Pollack', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (206, N'SQLSaturday', N'364', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (207, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (208, N'Mike', N'Hillwig', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (209, N'Stacia', N'Misner', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (210, N'SQLSaturday', N'364', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (211, N'Hilary', N'Cotter', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (212, N'Jason', N'Brimhall', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (213, N'Hilary', N'Cotter', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (214, N'Hilary', N'Cotter', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (215, N'Stéphane', N'Fréchette', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (216, N'Paul', N'Rizza', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (217, N'Allan', N'Hirt', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (218, N'Kennie', N'Pontoppidan', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (219, N'Kevin', N'Goff', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (220, N'George', N'Walters', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (221, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (222, N'George', N'Walters', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (223, N'George', N'Walters', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (224, N'David', N'Hansen', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (225, N'Jason', N'Brimhall', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (226, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (227, N'Steve', N'Simon', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (228, N'Kevin', N'Goff', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (229, N'Thomas', N'Grohser', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (230, N'Brandon', N'Leach', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (231, N'Andy', N'Leonard', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (232, N'Carl', N'Berglund', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (233, N'Hilary', N'Cotter', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (234, N'John', N'Miner', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (235, N'Melissa', N'Riley', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (236, N'Adam', N'Jorgensen', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (237, N'Dennis', N'Messina', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (238, N'Richie', N'Rump', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (239, N'Chris', N'Bell', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (240, N'Jack', N'Corbett', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (241, N'Aaron', N'Bertrand', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (242, N'Greg', N'Moore', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (243, N'Aaron', N'Bertrand', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (244, N'Kevin', N'Goff', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (245, N'Grant', N'Fritchey', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (246, N'Jason', N'Brimhall', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (247, N'Brent', N'Ozar', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (248, N'David', N'Bermingham', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (249, N'James', N'Serra', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (250, N'James', N'Serra', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (251, N'Kevin', N'Goff', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (252, N'Paresh', N'Motiwala', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (253, N'Kevin', N'Goff', NULL)
INSERT [dbo].[attendees] ([attendees_id], [first_name], [last_name], [email]) VALUES (254, N'Mike', N'Walsh', NULL)
SET IDENTITY_INSERT [dbo].[attendees] OFF
SET IDENTITY_INSERT [dbo].[class] ON 

INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (1, N'A dive into Data Quality Services', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (2, N'A Dynamic World Demands Dynamic SQL', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (3, N'A Dynamic World Demands Dynamic SQL', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (4, N'Absolute Introductory Session on SQL Server 2014 In-Memory Optimized Databases (Hekaton)', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (5, N'AlwaysOn: Improve reliability and reporting performance with one cool tech', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (6, N'An introduction to Data Mining', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (7, N'An Introduction to Database Design', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (8, N'Autogenerating a process data warehouse', N'Advanced')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (9, N'Automate your daily checklist with PBM and CMS', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (10, N'Automated Installing and Configuration of SQL2014/SQL2012 AlwaysOn Across Multiple Datacenters', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (11, N'Automated Installing and Configuration of SQL2014/SQL2012 AlwaysOn Across Multiple Datacenters', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (12, N'Automating Execution Plan Analysis', N'Advanced')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (13, N'Automating Execution Plan Analysis', N'Advanced')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (14, N'Automating SQL Server using PowerShell', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (15, N'Balanced Scorecards using SSRS', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (16, N'Baselines and Performance Monitoring with PAL', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (17, N'Basic Database Design', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (18, N'Basic Database Programming', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (19, N'Become a BI Independent Consultant!', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (20, N'Becoming a Top DBA--Learning Automation in SQL Server', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (21, N'Best Practices Document', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (22, N'Best Practices for Efficient SSRS Report Creation', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (23, N'Biggest Loser: Database Edition', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (24, N'Building a BI Solution in the Cloud', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (25, N'Building an Effective Data Warehouse Architecture', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (26, N'Building an Effective Data Warehouse Architecture with the cloud and MPP', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (27, N'Bulk load and minimal logged inserts', N'Advanced')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (28, N'Business Analytics with SQL Server & Power Map:Everything you want to know but were afraid to ask', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (29, N'Challenges to designing financial warehouses, lessons learnt', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (30, N'Change Data Capture in SQL Server 2008/2012', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (31, N'Changing Your Habits to Improve the Performance of Your T-SQL', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (32, N'Clusters Your Way: #SANLess Clusters for Physical, Virtual, and Cloud Environments', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (33, N'Clusters Your Way: #SANLess Clusters for Physical, Virtual, and Cloud Environments', N'Non-Technical')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (34, N'Coffee Break', N'Non-Technical')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (35, N'Creating A Performance Health Repository - using MDW', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (36, N'Creating efficient and effective SSRS BI Solutions', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (37, N'Creating efficient and effective SSRS BI Solutions', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (38, N'Data Partitioning', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (39, N'Data Tier Application Testing with NUnit and Distributed Replay', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (40, N'Database design for mere developers', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (41, N'Database design for mere developers', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (42, N'Database Design: Solving Problems Before they Start!', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (43, N'Database Modeling and Design', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (44, N'Database Virtualization and Drinking out of the Fire Hose', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (45, N'DAX and the tabular model', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (46, N'DBA FOR DUMMIES', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (47, N'Dealing With Difficult People', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (48, N'Development Lifecycle with SQL Server Data Tools and DACFx', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (49, N'Did You Vote Today? A DBAs Guide to Cluster Quorum', N'Advanced')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (50, N'Dimensional Modeling Design Patterns: Beyond Basics', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (51, N'Dimensional Modeling Design Patterns: Beyond Basics', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (52, N'Diving Into Query Execution Plans', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (53, N'Dynamic SQL: Writing Efficient Queries on the Fly', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (54, N'Easy Architecture Design for HA and DR', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (55, N'Enhancing your career: Building your personal brand', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (56, N'Establishing a SLA', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (57, N'ETL not ELT! Common mistakes and misconceptions about SSIS', N'Advanced')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (58, N'Event Kickoff and Networking', N'Non-Technical')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (59, N'Execution Plans: What Can You Do With Them?', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (60, N'Faster, Better Decisions with Self Service Business Analytics', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (61, N'Full Text Indexing Basics', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (62, N'Get your Mining Model Predictions out to all', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (63, N'Getting a job with Microsoft', N'Non-Technical')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (64, N'Graph Databases for SQL Server Professionals', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (65, N'Hacking Exposé - Using SSL to Protect SQL Connections', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (66, N'Hacking the SSIS 2012 Catalog', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (67, N'Hidden in plain sight: master your tools', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (68, N'Highly Available SQL Server in Windows Azure IaaS', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (69, N'How to Make a LOT More Money as a Consultant', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (70, N'How to Think Like the Engine', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (71, N'Hybrid Cloud Scenarios with SQL Server 2014', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (72, N'Hybrid Solutions: The Future of SQL Server Disaster Recovery', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (73, N'Implementing Data Warehouse Patterns with the Microsoft BI Tools', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (74, N'Inroduction to Triggers', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (75, N'Integrating Reporting Services with SharePoint', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (76, N'Integration Services (SSIS) for the DBA', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (77, N'Introducing Power BI', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (78, N'Introduction to Database Recovery', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (79, N'Introduction to High Availability with SQL Server', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (80, N'Introduction to Powershell for DBA''s', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (81, N'Introduction to SQL Server - Part 1', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (82, N'Introduction to SQL Server - Part 2', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (83, N'Is That A Failover Cluster On Your Laptop/Desktop?', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (84, N'Leaving the Windows Open', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (85, N'Lunch Break', N'Non-Technical')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (86, N'Lunchtime Keynote', N'Non-Technical')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (87, N'Master Data Services Best Practices', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (88, N'Master Data Services Disaster Recovery', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (89, N'Mind your language!! Cursors are a dirty word', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (90, N'Modern Data Warehousing', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (91, N'Monitoring Server health via Reporting Services dashboards', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (92, N'Monitoring SQL Server using Extended Events', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (93, N'Multidimensional vs Tabular - May the Best Model Win', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (94, N'Murder They Wrote', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (95, N'Never Have to Say "Mayday!!!" Again', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (96, N'Now you see it! Now you don’t! Conjuring many reports utilizing only one SSRS report.', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (97, N'Optimal Infrastructure Strategies for Cisco UCS, Nexus and SQL Server', N'Non-Technical')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (98, N'Optimizing Protected Indexes', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (99, N'Partitioning as a design pattern', N'Advanced')
GO
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (100, N'Power BI Components in Microsoft''s Self-Service BI Suite', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (101, N'Power to the people!!', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (102, N'PowerShell Basics for SQLServer', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (103, N'PowerShell for the Reluctant DBA / Developer', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (104, N'Prevent Recovery Amnesia – Forget the Backups', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (105, N'Query Optimization Crash Course', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (106, N'Raffle', N'Non-Technical')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (107, N'Rapid Application Development with Master Data Services', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (108, N'Recovery and Backup for Beginners', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (109, N'Reduce, Reuse, Recycle: Automating Your BI Framework', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (110, N'Registrations', N'Non-Technical')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (111, N'Replicaton Technologies', N'Advanced')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (112, N'Reporting Services for Mere DBAs', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (113, N'Scaling with SQL Server Service Broker', N'Advanced')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (114, N'Scaling with SQL Server Service Broker', N'Advanced')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (115, N'Self-Service Data Integration with Power Query', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (116, N'Shortcuts to Building SSIS in .Net', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (117, N'So You Want To Be A Consultant?', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (118, N'SQL anti patterns', N'Advanced')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (119, N'SQL Server 2012/2014 Columnstore index', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (120, N'SQL Server 2012/2014 Performance Tuning All Up', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (121, N'SQL Server 2014 Data Access Layers', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (122, N'SQL Server 2014 New Features', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (123, N'SQL Server AlwaysOn Availability Groups', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (124, N'SQL Server and the Cloud', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (125, N'SQL Server Compression and what it can do for you', N'Advanced')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (126, N'SQL Server Reporting Services 2014 on Steroids!!', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (127, N'SQL Server Reporting Services Best Practices', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (128, N'SQL Server Reporting Services, attendees choose', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (129, N'SQL Server Storage Engine under the hood', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (130, N'SQL Server Storage internals: Looking under the hood.', N'Advanced')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (131, N'SSIS 2014 Data Flow Tuning Tips and Tricks', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (132, N'Standalone to High-Availability Clusters over Lunch—with Time to Spare', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (133, N'Stress testing SQL Server', N'Advanced')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (134, N'Table partitioning for Azure SQL Databases', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (135, N'Testing', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (136, N'The future of the data professional', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (137, N'The Quest for the Golden Record:MDM Best Practices', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (138, N'The Quest to Find Bad Data With Data Profiling', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (139, N'The Spy Who Loathed Me - An Intro to SQL Security', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (140, N'Tired of the CRUD? Automate it!', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (141, N'Top 5 Ways to Improve Your triggers', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (142, N'Tricks that have saved my bacon', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (143, N'T-SQL : Bad Habits & Best Practices', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (144, N'T-SQL for Application Developers - Attendees chose', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (145, N'Tune Queries By Fixing Bad Parameter Sniffing', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (146, N'Using Extended Events in SQL Server', N'Advanced')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (147, N'Watch Brent Tune Queries', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (148, N'What every SQL Server DBA needs to know about Windows Server 10 Technical Preview', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (149, N'What exactly is big data and why should I care?', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (150, N'What is it like to work for Microsoft?', N'Beginner')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (151, N'What’s new in SQL Server Integration Services 2012', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (152, N'Why do we shun using tools for DBA job?', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (153, N'Why OLAP? Building SSAS cubes and benefits of OLAP', N'Intermediate')
INSERT [dbo].[class] ([class_id], [title], [difficulty]) VALUES (154, N'You''re Doing It Wrong!!', N'Intermediate')
SET IDENTITY_INSERT [dbo].[class] OFF
SET IDENTITY_INSERT [dbo].[class_track] ON 

INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (1, 1, 5, 1)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (2, 4, 4, 2)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (3, 4, 4, 3)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (4, 4, 1, 4)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (5, 2, 5, 5)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (6, 1, 4, 6)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (7, 1, 5, 7)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (8, 1, 5, 8)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (9, 2, 1, 9)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (10, 4, 5, 10)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (11, 4, 4, 11)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (12, 2, 4, 12)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (13, 2, 5, 13)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (14, 4, 5, 14)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (15, 2, 1, 15)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (16, 2, 5, 16)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (17, 1, 5, 17)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (18, 1, 4, 18)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (19, 5, 1, 19)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (20, 4, 4, 20)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (21, 2, 4, 21)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (22, 2, 5, 22)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (23, 1, 5, 23)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (24, 5, 1, 24)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (25, 1, 5, 25)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (26, 1, 5, 26)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (27, 2, 5, 27)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (28, 4, 5, 28)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (29, 2, 5, 29)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (30, 4, 5, 30)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (31, 4, 4, 31)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (32, 2, 4, 32)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (33, 2, 4, 33)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (34, 3, 1, 34)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (35, 2, 4, 35)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (36, 5, 4, 36)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (37, 5, 5, 37)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (38, 1, 5, 38)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (39, 1, 5, 39)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (40, 1, 1, 40)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (41, 1, 5, 41)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (42, 1, 5, 42)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (43, 1, 5, 43)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (44, 1, 5, 44)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (45, 2, 4, 45)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (46, 1, 1, 46)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (47, 2, 4, 47)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (48, 4, 4, 48)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (49, 1, 4, 49)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (50, 2, 4, 50)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (51, 2, 1, 51)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (52, 4, 5, 52)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (53, 4, 4, 53)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (54, 2, 5, 54)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (55, 2, 5, 55)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (56, 1, 5, 56)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (57, 2, 1, 57)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (58, 2, 5, 58)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (59, 2, 5, 59)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (60, 2, 5, 60)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (61, 1, 1, 61)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (62, 1, 5, 62)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (63, 2, 5, 63)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (64, 4, 5, 64)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (65, 4, 5, 65)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (66, 2, 1, 66)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (67, 2, 5, 67)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (68, 4, 5, 68)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (69, 2, 5, 69)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (70, 2, 5, 70)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (71, 4, 1, 71)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (72, 4, 1, 72)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (73, 1, 1, 73)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (74, 2, 1, 74)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (75, 2, 5, 75)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (76, 1, 5, 76)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (77, 5, 5, 77)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (78, 1, 5, 78)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (79, 4, 5, 79)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (80, 1, 5, 80)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (81, 4, 5, 81)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (82, 4, 5, 82)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (83, 2, 5, 83)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (84, 2, 5, 84)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (85, 3, 5, 85)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (86, 3, 5, 86)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (87, 1, 5, 87)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (88, 1, 5, 88)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (89, 2, 5, 89)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (90, 1, 5, 90)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (91, 2, 5, 91)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (92, 4, 5, 92)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (93, 2, 5, 93)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (94, 2, 5, 94)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (95, 2, 5, 95)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (96, 2, 5, 96)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (97, 4, 1, 97)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (98, 2, 1, 98)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (99, 2, 1, 99)
GO
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (100, 5, 5, 100)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (101, 2, 4, 101)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (102, 4, 4, 102)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (103, 1, 4, 103)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (104, 2, 4, 104)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (105, 1, 4, 105)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (106, 3, 9, 106)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (107, 1, 4, 107)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (108, 2, 4, 108)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (109, 5, 4, 109)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (110, 3, 9, 110)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (111, 2, 4, 111)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (112, 1, 4, 112)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (113, 4, 4, 113)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (114, 4, 4, 114)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (115, 1, 4, 115)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (116, 2, 4, 116)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (117, 2, 4, 117)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (118, 4, 4, 118)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (119, 4, 4, 119)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (120, 4, 4, 120)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (121, 4, 4, 121)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (122, 4, 4, 122)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (123, 4, 4, 123)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (124, 4, 4, 124)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (125, 4, 4, 125)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (126, 4, 4, 126)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (127, 4, 4, 127)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (128, 4, 4, 128)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (129, 4, 4, 129)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (130, 4, 4, 130)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (131, 1, 4, 131)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (132, 2, 1, 132)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (133, 4, 4, 133)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (134, 4, 4, 134)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (135, 2, 4, 135)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (136, 1, 4, 136)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (137, 2, 1, 137)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (138, 1, 1, 138)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (139, 4, 1, 139)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (140, 2, 1, 140)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (141, 2, 1, 141)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (142, 2, 1, 142)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (143, 4, 1, 143)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (144, 4, 1, 144)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (145, 1, 1, 145)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (146, 4, 1, 146)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (147, 1, 1, 147)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (148, 4, 1, 148)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (149, 1, 1, 149)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (150, 2, 1, 150)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (151, 4, 1, 151)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (152, 1, 1, 152)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (153, 2, 1, 153)
INSERT [dbo].[class_track] ([class_track_id], [track_id], [location_id], [class_id]) VALUES (154, 2, 1, 154)
SET IDENTITY_INSERT [dbo].[class_track] OFF
SET IDENTITY_INSERT [dbo].[event] ON 

INSERT [dbo].[event] ([event_id], [date], [event_name], [location_id]) VALUES (1, CAST(0xC63C0B00 AS Date), N'SQLSaturday #626 - Budapest 2017', 1)
INSERT [dbo].[event] ([event_id], [date], [event_name], [location_id]) VALUES (2, CAST(0xC63C0B00 AS Date), N'SQLSaturday #615 - Baltimore 2017', 2)
INSERT [dbo].[event] ([event_id], [date], [event_name], [location_id]) VALUES (3, CAST(0xCD3C0B00 AS Date), N'SQLSaturday #608 - Bogota 2017', 3)
INSERT [dbo].[event] ([event_id], [date], [event_name], [location_id]) VALUES (4, CAST(0xD43C0B00 AS Date), N'SQLSaturday #616 - Kyiv 2017', 4)
INSERT [dbo].[event] ([event_id], [date], [event_name], [location_id]) VALUES (5, CAST(0xD43C0B00 AS Date), N'SQLSaturday #588 - New York City 2017', 5)
INSERT [dbo].[event] ([event_id], [date], [event_name], [location_id]) VALUES (6, CAST(0xDB3C0B00 AS Date), N'SQLSaturday #630 - Brisbane 2017', 6)
INSERT [dbo].[event] ([event_id], [date], [event_name], [location_id]) VALUES (7, CAST(0xDB3C0B00 AS Date), N'SQLSaturday #599 - Plovdiv 2017', 7)
INSERT [dbo].[event] ([event_id], [date], [event_name], [location_id]) VALUES (8, CAST(0xE23C0B00 AS Date), N'SQLSaturday #638 - Philadelphia 2017', 8)
SET IDENTITY_INSERT [dbo].[event] OFF
SET IDENTITY_INSERT [dbo].[location] ON 

INSERT [dbo].[location] ([location_id], [loc_name], [country]) VALUES (1, N'Budapest', N'Europe/Middle East/Africa')
INSERT [dbo].[location] ([location_id], [loc_name], [country]) VALUES (2, N'Baltimore', N'Canada/US')
INSERT [dbo].[location] ([location_id], [loc_name], [country]) VALUES (3, N'Bogota', N'Latin America')
INSERT [dbo].[location] ([location_id], [loc_name], [country]) VALUES (4, N'Kyiv', N'Europe/Middle East/Africa')
INSERT [dbo].[location] ([location_id], [loc_name], [country]) VALUES (5, N'New York City', N'Canada/US')
INSERT [dbo].[location] ([location_id], [loc_name], [country]) VALUES (6, N'Brisbane', N'Asia Pacific')
INSERT [dbo].[location] ([location_id], [loc_name], [country]) VALUES (7, N'Plovdiv', N'Europe/Middle East/Africa')
INSERT [dbo].[location] ([location_id], [loc_name], [country]) VALUES (8, N'Philadelphia', N'Canada/US')
INSERT [dbo].[location] ([location_id], [loc_name], [country]) VALUES (9, N'All', N'All')
SET IDENTITY_INSERT [dbo].[location] OFF
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([role_id], [role_description]) VALUES (1, N'presenter')
INSERT [dbo].[role] ([role_id], [role_description]) VALUES (2, N'attendee')
INSERT [dbo].[role] ([role_id], [role_description]) VALUES (3, N'organizer')
INSERT [dbo].[role] ([role_id], [role_description]) VALUES (4, N'volunteer')
INSERT [dbo].[role] ([role_id], [role_description]) VALUES (5, N'sponsor')
SET IDENTITY_INSERT [dbo].[role] OFF
SET IDENTITY_INSERT [dbo].[track] ON 

INSERT [dbo].[track] ([track_id], [name]) VALUES (1, N'data')
INSERT [dbo].[track] ([track_id], [name]) VALUES (2, N'improvement')
INSERT [dbo].[track] ([track_id], [name]) VALUES (3, N'relax')
INSERT [dbo].[track] ([track_id], [name]) VALUES (4, N'sql')
INSERT [dbo].[track] ([track_id], [name]) VALUES (5, N'bi')
SET IDENTITY_INSERT [dbo].[track] OFF
ALTER TABLE [dbo].[a_address]  WITH CHECK ADD FOREIGN KEY([address_id])
REFERENCES [dbo].[address] ([address_id])
GO
ALTER TABLE [dbo].[a_address]  WITH CHECK ADD FOREIGN KEY([attendees_id])
REFERENCES [dbo].[attendees] ([attendees_id])
GO
ALTER TABLE [dbo].[attendee_role]  WITH CHECK ADD FOREIGN KEY([attendees_id])
REFERENCES [dbo].[attendees] ([attendees_id])
GO
ALTER TABLE [dbo].[attendee_role]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[class_duration]  WITH CHECK ADD FOREIGN KEY([class_id])
REFERENCES [dbo].[class] ([class_id])
GO
ALTER TABLE [dbo].[class_track]  WITH CHECK ADD FOREIGN KEY([class_id])
REFERENCES [dbo].[class] ([class_id])
GO
ALTER TABLE [dbo].[class_track]  WITH CHECK ADD FOREIGN KEY([location_id])
REFERENCES [dbo].[location] ([location_id])
GO
ALTER TABLE [dbo].[class_track]  WITH CHECK ADD FOREIGN KEY([track_id])
REFERENCES [dbo].[track] ([track_id])
GO
ALTER TABLE [dbo].[event]  WITH CHECK ADD FOREIGN KEY([location_id])
REFERENCES [dbo].[location] ([location_id])
GO
ALTER TABLE [dbo].[gift]  WITH CHECK ADD FOREIGN KEY([vendor_id])
REFERENCES [dbo].[vendor] ([vendor_id])
GO
ALTER TABLE [dbo].[loc_address]  WITH CHECK ADD FOREIGN KEY([address_id])
REFERENCES [dbo].[address] ([address_id])
GO
ALTER TABLE [dbo].[loc_address]  WITH CHECK ADD FOREIGN KEY([location_id])
REFERENCES [dbo].[location] ([location_id])
GO
ALTER TABLE [dbo].[organizer]  WITH CHECK ADD FOREIGN KEY([attendees_id])
REFERENCES [dbo].[attendees] ([attendees_id])
GO
ALTER TABLE [dbo].[presenter]  WITH CHECK ADD FOREIGN KEY([attendees_id])
REFERENCES [dbo].[attendees] ([attendees_id])
GO
ALTER TABLE [dbo].[raffle]  WITH CHECK ADD FOREIGN KEY([attendees_id])
REFERENCES [dbo].[attendees] ([attendees_id])
GO
ALTER TABLE [dbo].[raffle]  WITH CHECK ADD FOREIGN KEY([event_id])
REFERENCES [dbo].[event] ([event_id])
GO
ALTER TABLE [dbo].[raffle]  WITH CHECK ADD FOREIGN KEY([gift_id])
REFERENCES [dbo].[gift] ([gift_id])
GO
ALTER TABLE [dbo].[room]  WITH CHECK ADD FOREIGN KEY([location_id])
REFERENCES [dbo].[location] ([location_id])
GO
ALTER TABLE [dbo].[scheduling]  WITH CHECK ADD FOREIGN KEY([AR_id])
REFERENCES [dbo].[attendee_role] ([AR_id])
GO
ALTER TABLE [dbo].[scheduling]  WITH CHECK ADD FOREIGN KEY([cd_id])
REFERENCES [dbo].[class_duration] ([cd_id])
GO
ALTER TABLE [dbo].[scheduling]  WITH CHECK ADD FOREIGN KEY([location_id])
REFERENCES [dbo].[location] ([location_id])
GO
ALTER TABLE [dbo].[vendor]  WITH CHECK ADD FOREIGN KEY([attendees_id])
REFERENCES [dbo].[attendees] ([attendees_id])
GO
ALTER TABLE [dbo].[vendor]  WITH CHECK ADD CHECK  (([table_number]>=(1) AND [table_number]<=(10)))
GO
USE [master]
GO
ALTER DATABASE [s17guest33] SET  READ_WRITE 
GO
