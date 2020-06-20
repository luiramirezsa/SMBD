USE [master]
GO

/****** Object:  Database [DW_Farmacia]    Script Date: 6/19/2020 10:17:29 AM ******/
CREATE DATABASE [DW_Farmacia]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DW_Farmacia', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DW_Farmacia.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DW_Farmacia_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DW_Farmacia_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DW_Farmacia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [DW_Farmacia] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [DW_Farmacia] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [DW_Farmacia] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [DW_Farmacia] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [DW_Farmacia] SET ARITHABORT OFF 
GO

ALTER DATABASE [DW_Farmacia] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [DW_Farmacia] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [DW_Farmacia] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [DW_Farmacia] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [DW_Farmacia] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [DW_Farmacia] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [DW_Farmacia] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [DW_Farmacia] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [DW_Farmacia] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [DW_Farmacia] SET  DISABLE_BROKER 
GO

ALTER DATABASE [DW_Farmacia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [DW_Farmacia] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [DW_Farmacia] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [DW_Farmacia] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [DW_Farmacia] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [DW_Farmacia] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [DW_Farmacia] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [DW_Farmacia] SET RECOVERY FULL 
GO

ALTER DATABASE [DW_Farmacia] SET  MULTI_USER 
GO

ALTER DATABASE [DW_Farmacia] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [DW_Farmacia] SET DB_CHAINING OFF 
GO

ALTER DATABASE [DW_Farmacia] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [DW_Farmacia] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [DW_Farmacia] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [DW_Farmacia] SET QUERY_STORE = OFF
GO

ALTER DATABASE [DW_Farmacia] SET  READ_WRITE 
GO
