USE [master]
GO
/****** Object:  Database [elecciones]    Script Date: 29/6/2023 08:18:36 ******/
CREATE DATABASE [elecciones]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'elecciones', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\elecciones.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'elecciones_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\elecciones_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [elecciones] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [elecciones].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [elecciones] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [elecciones] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [elecciones] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [elecciones] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [elecciones] SET ARITHABORT OFF 
GO
ALTER DATABASE [elecciones] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [elecciones] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [elecciones] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [elecciones] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [elecciones] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [elecciones] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [elecciones] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [elecciones] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [elecciones] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [elecciones] SET  DISABLE_BROKER 
GO
ALTER DATABASE [elecciones] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [elecciones] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [elecciones] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [elecciones] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [elecciones] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [elecciones] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [elecciones] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [elecciones] SET RECOVERY FULL 
GO
ALTER DATABASE [elecciones] SET  MULTI_USER 
GO
ALTER DATABASE [elecciones] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [elecciones] SET DB_CHAINING OFF 
GO
ALTER DATABASE [elecciones] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [elecciones] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [elecciones] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'elecciones', N'ON'
GO
ALTER DATABASE [elecciones] SET QUERY_STORE = OFF
GO
USE [elecciones]
GO
/****** Object:  User [alumno]    Script Date: 29/6/2023 08:18:36 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 29/6/2023 08:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidato](
	[IdCandidato] [int] NOT NULL,
	[IdPartido] [int] NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[foto] [varchar](100) NOT NULL,
	[Postulacion] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partido]    Script Date: 29/6/2023 08:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partido](
	[IdPartido] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Logo] [varchar](100) NOT NULL,
	[SitioWeb] [varchar](100) NOT NULL,
	[FechaFundacion] [date] NOT NULL,
	[CantidadDiputados] [int] NOT NULL,
	[CantidadSenadores] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [foto], [Postulacion]) VALUES (1, 1, N'Milei', N'Javier', CAST(N'1970-10-22' AS Date), N'milei.jfif', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [foto], [Postulacion]) VALUES (2, 2, N'Bregman', N'Myriam', CAST(N'1972-02-25' AS Date), N'bregman.jfif', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [foto], [Postulacion]) VALUES (3, 3, N'Massa', N'Sergio', CAST(N'1972-04-28' AS Date), N'massa.jfif', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [foto], [Postulacion]) VALUES (4, 4, N'Larreta', N'Horacio', CAST(N'1965-10-29' AS Date), N'larreta.jfif', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [foto], [Postulacion]) VALUES (5, 1, N'Villaruel', N'Victoria', CAST(N'1975-04-13' AS Date), N'villaruel.jfif', N'Vicepresidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [foto], [Postulacion]) VALUES (6, 2, N'Del Caño', N'Nicolas', CAST(N'1980-02-06' AS Date), N'caño.jfif', N'Vicepresidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [foto], [Postulacion]) VALUES (7, 3, N'Rossi', N'Agustin', CAST(N'1959-10-18' AS Date), N'rossi.jfif', N'Vicepresidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [foto], [Postulacion]) VALUES (8, 4, N'Morales', N'Gerardo', CAST(N'1959-07-18' AS Date), N'morales.jfif', N'Vicepresidente')
GO
USE [master]
GO
ALTER DATABASE [elecciones] SET  READ_WRITE 
GO
