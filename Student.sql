USE [master]
GO
/****** Object:  Database [StudentPortal]    Script Date: 13-06-2016 14:52:37 ******/
CREATE DATABASE [StudentPortal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StudentPortal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\StudentPortal.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'StudentPortal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\StudentPortal_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [StudentPortal] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentPortal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudentPortal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudentPortal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudentPortal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudentPortal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudentPortal] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudentPortal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StudentPortal] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [StudentPortal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudentPortal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudentPortal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudentPortal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudentPortal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudentPortal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudentPortal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudentPortal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudentPortal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StudentPortal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudentPortal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudentPortal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudentPortal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudentPortal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudentPortal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StudentPortal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudentPortal] SET RECOVERY FULL 
GO
ALTER DATABASE [StudentPortal] SET  MULTI_USER 
GO
ALTER DATABASE [StudentPortal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudentPortal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudentPortal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudentPortal] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [StudentPortal]
GO
/****** Object:  Table [dbo].[StudentDetails]    Script Date: 13-06-2016 14:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[StudentNumber] [int] NOT NULL,
	[Branch] [nvarchar](max) NOT NULL,
	[Semester] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_StudentDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[StudentDetails] ON 

INSERT [dbo].[StudentDetails] ([Id], [Name], [StudentNumber], [Branch], [Semester], [Email], [Password]) VALUES (1, N'Akash', 1413081, N'Information Technology', N'VI', N'connectakashkool@outlook.com', N'12345')
INSERT [dbo].[StudentDetails] ([Id], [Name], [StudentNumber], [Branch], [Semester], [Email], [Password]) VALUES (5, N'Akash', 1413081, N'IT', N'IV', N'2801.ak@gmail.com', N'12345')
INSERT [dbo].[StudentDetails] ([Id], [Name], [StudentNumber], [Branch], [Semester], [Email], [Password]) VALUES (6, N'Akash', 1413081, N'IT', N'IV', N'2801.ak@gmail.com', N'12345')
INSERT [dbo].[StudentDetails] ([Id], [Name], [StudentNumber], [Branch], [Semester], [Email], [Password]) VALUES (7, N'Akash', 1413081, N'IT', N'IV', N'2801.ak@gmail.com', N'12345')
INSERT [dbo].[StudentDetails] ([Id], [Name], [StudentNumber], [Branch], [Semester], [Email], [Password]) VALUES (8, N'Ajay', 1413091, N'CSE', N'IV', N'ajay@gmail.com', N'12345')
SET IDENTITY_INSERT [dbo].[StudentDetails] OFF
USE [master]
GO
ALTER DATABASE [StudentPortal] SET  READ_WRITE 
GO
