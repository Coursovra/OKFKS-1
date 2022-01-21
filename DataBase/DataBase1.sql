USE [master]
GO
/****** Object:  Database [OKFKS-1]    Script Date: 21.01.2022 14:44:43 ******/
CREATE DATABASE [OKFKS-1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OKFKS-1', FILENAME = N'C:\OKFKS\OKFKS-1\DataBase\OKFKS-1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OKFKS-1_log', FILENAME = N'C:\OKFKS\OKFKS-1\DataBase\OKFKS-1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OKFKS-1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OKFKS-1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OKFKS-1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OKFKS-1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OKFKS-1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OKFKS-1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OKFKS-1] SET ARITHABORT OFF 
GO
ALTER DATABASE [OKFKS-1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OKFKS-1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OKFKS-1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OKFKS-1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OKFKS-1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OKFKS-1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OKFKS-1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OKFKS-1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OKFKS-1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OKFKS-1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OKFKS-1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OKFKS-1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OKFKS-1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OKFKS-1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OKFKS-1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OKFKS-1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OKFKS-1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OKFKS-1] SET RECOVERY FULL 
GO
ALTER DATABASE [OKFKS-1] SET  MULTI_USER 
GO
ALTER DATABASE [OKFKS-1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OKFKS-1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OKFKS-1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OKFKS-1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OKFKS-1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OKFKS-1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'OKFKS-1', N'ON'
GO
ALTER DATABASE [OKFKS-1] SET QUERY_STORE = OFF
GO
USE [OKFKS-1]
GO
/****** Object:  Table [dbo].[Charity]    Script Date: 21.01.2022 14:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Charity](
	[ID_Сharity] [int] IDENTITY(1,1) NOT NULL,
	[Charity_Name] [nvarchar](100) NOT NULL,
	[Charity_Description] [nvarchar](3000) NULL,
	[Charity_Logo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Charity] PRIMARY KEY CLUSTERED 
(
	[ID_Сharity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 21.01.2022 14:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID_Country] [nchar](3) NOT NULL,
	[Country_Name] [varchar](50) NOT NULL,
	[Country_Flag] [varchar](50) NOT NULL,
 CONSTRAINT [PK_contry] PRIMARY KEY CLUSTERED 
(
	[ID_Country] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 21.01.2022 14:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[ID_Event] [int] IDENTITY(1,1) NOT NULL,
	[Event_Name] [nvarchar](50) NOT NULL,
	[ID_EventType] [nchar](5) NOT NULL,
	[ID_Race] [int] NOT NULL,
	[StartDateTime] [datetime] NOT NULL,
	[Cost] [decimal](10, 2) NOT NULL,
	[MaxParticipants] [smallint] NOT NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[ID_Event] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event_Type]    Script Date: 21.01.2022 14:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event_Type](
	[ID_Event_type] [nchar](5) NOT NULL,
	[Event_Type_Name] [varchar](80) NOT NULL,
 CONSTRAINT [PK_Event_Type_1] PRIMARY KEY CLUSTERED 
(
	[ID_Event_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 21.01.2022 14:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID_Gender] [nchar](1) NOT NULL,
	[Gender_Name] [varchar](50) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[ID_Gender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 21.01.2022 14:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[PositionId] [int] IDENTITY(1,1) NOT NULL,
	[PositionName] [nvarchar](50) NOT NULL,
	[PositionDescription] [nvarchar](50) NOT NULL,
	[PayPeriod] [date] NOT NULL,
	[PayRate] [int] NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[PositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Race]    Script Date: 21.01.2022 14:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Race](
	[ID_Race] [int] IDENTITY(1,1) NOT NULL,
	[Race_Name] [varchar](80) NOT NULL,
	[Sity] [varchar](50) NOT NULL,
	[ID_Country] [nchar](3) NOT NULL,
	[Year_Held] [smallint] NOT NULL,
 CONSTRAINT [PK_Race] PRIMARY KEY CLUSTERED 
(
	[ID_Race] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Racer]    Script Date: 21.01.2022 14:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Racer](
	[ID_Racer] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [nvarchar](50) NOT NULL,
	[Last_Name] [nvarchar](50) NOT NULL,
	[Gender] [nchar](1) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[ID_Country] [nchar](3) NOT NULL,
 CONSTRAINT [PK_Racer] PRIMARY KEY CLUSTERED 
(
	[ID_Racer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 21.01.2022 14:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[ID_Registration] [int] IDENTITY(1,1) NOT NULL,
	[ID_Racer] [int] NOT NULL,
	[Registration_Date] [date] NOT NULL,
	[ID_Registration_Status] [int] NOT NULL,
	[Cost] [decimal](10, 2) NOT NULL,
	[ID_Charity] [int] NOT NULL,
	[SponsorshipTarget] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[ID_Registration] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration_Status]    Script Date: 21.01.2022 14:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration_Status](
	[ID_Registration_Status] [int] IDENTITY(1,1) NOT NULL,
	[Statu_Name] [varchar](80) NOT NULL,
 CONSTRAINT [PK_Registration_Status] PRIMARY KEY CLUSTERED 
(
	[ID_Registration_Status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result]    Script Date: 21.01.2022 14:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[ID_Result] [int] IDENTITY(1,1) NOT NULL,
	[ID_Registration] [int] NOT NULL,
	[ID_Event] [int] NOT NULL,
	[BidNumber] [smallint] NOT NULL,
	[RaceTime] [time](7) NOT NULL,
 CONSTRAINT [PK_RegistrationEvent] PRIMARY KEY CLUSTERED 
(
	[ID_Result] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 21.01.2022 14:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID_Role] [nchar](1) NOT NULL,
	[Role_Name] [varchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sponsorship]    Script Date: 21.01.2022 14:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sponsorship](
	[ID_Sponsorship] [int] IDENTITY(1,1) NOT NULL,
	[SponsorName] [nvarchar](150) NOT NULL,
	[Amount] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Sponsorship] PRIMARY KEY CLUSTERED 
(
	[ID_Sponsorship] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 21.01.2022 14:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Gender] [nvarchar](7) NOT NULL,
	[PositionId] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Comments] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timesheet]    Script Date: 21.01.2022 14:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timesheet](
	[TimesheerId] [int] IDENTITY(1,1) NOT NULL,
	[StaffId] [int] NOT NULL,
	[StartDateTime] [datetime] NOT NULL,
	[EndDateTime] [datetime] NOT NULL,
	[PayAmount] [float] NOT NULL,
 CONSTRAINT [PK_Timesheet] PRIMARY KEY CLUSTERED 
(
	[TimesheerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 21.01.2022 14:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Email] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[First_Name] [nvarchar](30) NULL,
	[Last_Name] [nvarchar](30) NULL,
	[ID_Role] [nchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Volunteer]    Script Date: 21.01.2022 14:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volunteer](
	[ID_Volunteer] [nchar](3) NOT NULL,
	[First_Name] [nvarchar](80) NOT NULL,
	[Last_Name] [nvarchar](80) NOT NULL,
	[ID_Country] [nchar](3) NOT NULL,
	[Gender_ID] [nchar](1) NULL,
 CONSTRAINT [PK_Volunteer] PRIMARY KEY CLUSTERED 
(
	[ID_Volunteer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Event_Type1] FOREIGN KEY([ID_EventType])
REFERENCES [dbo].[Event_Type] ([ID_Event_type])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Event_Type1]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Race] FOREIGN KEY([ID_Race])
REFERENCES [dbo].[Race] ([ID_Race])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Race]
GO
ALTER TABLE [dbo].[Race]  WITH CHECK ADD  CONSTRAINT [FK_Race_Country] FOREIGN KEY([ID_Country])
REFERENCES [dbo].[Country] ([ID_Country])
GO
ALTER TABLE [dbo].[Race] CHECK CONSTRAINT [FK_Race_Country]
GO
ALTER TABLE [dbo].[Racer]  WITH CHECK ADD  CONSTRAINT [FK_Racer_Country] FOREIGN KEY([ID_Country])
REFERENCES [dbo].[Country] ([ID_Country])
GO
ALTER TABLE [dbo].[Racer] CHECK CONSTRAINT [FK_Racer_Country]
GO
ALTER TABLE [dbo].[Racer]  WITH CHECK ADD  CONSTRAINT [FK_Racer_Gender] FOREIGN KEY([Gender])
REFERENCES [dbo].[Gender] ([ID_Gender])
GO
ALTER TABLE [dbo].[Racer] CHECK CONSTRAINT [FK_Racer_Gender]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Charity] FOREIGN KEY([ID_Charity])
REFERENCES [dbo].[Charity] ([ID_Сharity])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Charity]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Racer] FOREIGN KEY([ID_Racer])
REFERENCES [dbo].[Racer] ([ID_Racer])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Racer]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Event_Event] FOREIGN KEY([ID_Event])
REFERENCES [dbo].[Event] ([ID_Event])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Registration_Event_Event]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Event_Registration] FOREIGN KEY([ID_Registration])
REFERENCES [dbo].[Registration] ([ID_Registration])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Registration_Event_Registration]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Position] FOREIGN KEY([PositionId])
REFERENCES [dbo].[Position] ([PositionId])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Position]
GO
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD  CONSTRAINT [FK_Timesheet_Staff] FOREIGN KEY([StaffId])
REFERENCES [dbo].[Staff] ([StaffId])
GO
ALTER TABLE [dbo].[Timesheet] CHECK CONSTRAINT [FK_Timesheet_Staff]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([ID_Role])
REFERENCES [dbo].[Role] ([ID_Role])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
ALTER TABLE [dbo].[Volunteer]  WITH CHECK ADD  CONSTRAINT [FK_Volunteer_Country] FOREIGN KEY([ID_Country])
REFERENCES [dbo].[Country] ([ID_Country])
GO
ALTER TABLE [dbo].[Volunteer] CHECK CONSTRAINT [FK_Volunteer_Country]
GO
ALTER TABLE [dbo].[Volunteer]  WITH CHECK ADD  CONSTRAINT [FK_Volunteer_Gender] FOREIGN KEY([Gender_ID])
REFERENCES [dbo].[Gender] ([ID_Gender])
GO
ALTER TABLE [dbo].[Volunteer] CHECK CONSTRAINT [FK_Volunteer_Gender]
GO
USE [master]
GO
ALTER DATABASE [OKFKS-1] SET  READ_WRITE 
GO
