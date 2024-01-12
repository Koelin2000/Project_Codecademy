USE [master]
GO
/****** Object:  Database [Codecademy]    Script Date: 11/01/2024 23:41:28 ******/
CREATE DATABASE [Codecademy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Codecademy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Codecademy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Codecademy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Codecademy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Codecademy] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Codecademy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Codecademy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Codecademy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Codecademy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Codecademy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Codecademy] SET ARITHABORT OFF 
GO
ALTER DATABASE [Codecademy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Codecademy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Codecademy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Codecademy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Codecademy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Codecademy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Codecademy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Codecademy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Codecademy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Codecademy] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Codecademy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Codecademy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Codecademy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Codecademy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Codecademy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Codecademy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Codecademy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Codecademy] SET RECOVERY FULL 
GO
ALTER DATABASE [Codecademy] SET  MULTI_USER 
GO
ALTER DATABASE [Codecademy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Codecademy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Codecademy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Codecademy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Codecademy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Codecademy] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Codecademy', N'ON'
GO
ALTER DATABASE [Codecademy] SET QUERY_STORE = ON
GO
ALTER DATABASE [Codecademy] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Codecademy]
GO
/****** Object:  Table [dbo].[Certificaat]    Script Date: 11/01/2024 23:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificaat](
	[ID] [int] NOT NULL,
	[NaamCert] [nchar](20) NULL,
	[Cijfer] [int] NULL,
	[NaamMedewerker] [nchar](15) NULL,
 CONSTRAINT [PK_Certificaat] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentItem]    Script Date: 11/01/2024 23:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentItem](
	[ID] [int] NOT NULL,
	[PublicatieDatum] [date] NULL,
	[Status] [nchar](20) NULL,
 CONSTRAINT [PK_ContentItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cursisten]    Script Date: 11/01/2024 23:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursisten](
	[ID] [int] NOT NULL,
	[Naam] [nchar](20) NULL,
	[Achternaam] [nchar](25) NULL,
	[GeboorteDatum] [date] NULL,
	[Straat] [nchar](50) NULL,
	[Huisnummer] [int] NULL,
	[Postcode] [nchar](10) NULL,
	[Woonplaats] [nchar](25) NULL,
	[Land] [nchar](50) NULL,
	[Geslacht] [nchar](10) NULL,
 CONSTRAINT [PK_Cursisten] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cursus]    Script Date: 11/01/2024 23:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursus](
	[ID] [int] NULL,
	[NaamCursus] [nchar](35) NULL,
	[Onderwerp] [nchar](50) NULL,
	[IntroTekst] [nchar](150) NULL,
	[Niveau] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Module]    Script Date: 11/01/2024 23:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Module](
	[ID] [int] NOT NULL,
	[Titel] [nchar](20) NULL,
	[Versie] [int] NULL,
	[Beschrijving] [nchar](100) NULL,
	[NaamContactpersoon] [nchar](25) NULL,
 CONSTRAINT [PK_Module] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Module] UNIQUE NONCLUSTERED 
(
	[Versie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Webcasts]    Script Date: 11/01/2024 23:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Webcasts](
	[ID] [int] NOT NULL,
	[Titel] [nchar](10) NULL,
	[Tijdsduur] [int] NULL,
	[Datum] [date] NULL,
	[Publicatie] [date] NULL,
	[URL] [varchar](100) NULL,
	[NaamSpreker] [nchar](10) NULL,
	[Organisatie] [nchar](20) NULL,
 CONSTRAINT [PK_Webcasts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Webcasts] UNIQUE NONCLUSTERED 
(
	[Titel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Codecademy] SET  READ_WRITE 
GO
