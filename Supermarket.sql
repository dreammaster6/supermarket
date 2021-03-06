USE [master]
GO
/****** Object:  Database [db_shopping]    Script Date: 2018/1/6 18:57:30 ******/
CREATE DATABASE [db_shopping]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_shopping', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\db_shopping.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_shopping_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\db_shopping_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_shopping].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_shopping] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_shopping] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_shopping] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_shopping] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_shopping] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_shopping] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [db_shopping] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_shopping] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_shopping] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_shopping] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_shopping] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_shopping] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_shopping] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_shopping] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_shopping] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_shopping] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_shopping] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_shopping] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_shopping] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_shopping] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_shopping] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_shopping] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_shopping] SET RECOVERY FULL 
GO
ALTER DATABASE [db_shopping] SET  MULTI_USER 
GO
ALTER DATABASE [db_shopping] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_shopping] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_shopping] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_shopping] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [db_shopping]
GO
/****** Object:  User [Jay]    Script Date: 2018/1/6 18:57:30 ******/
CREATE USER [Jay] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[tb_brand]    Script Date: 2018/1/6 18:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_brand](
	[ID] [varchar](50) NOT NULL,
	[spname] [varchar](50) NOT NULL,
	[jc] [varchar](50) NULL,
	[cd] [varchar](100) NULL,
	[dw] [varchar](10) NULL,
	[gg] [varchar](50) NULL,
	[bz] [varchar](50) NULL,
	[ph] [varchar](50) NULL,
	[pzwh] [varchar](50) NULL,
	[gysname] [varchar](100) NULL,
	[memo] [varchar](255) NULL,
 CONSTRAINT [PK_tb_brand] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_customer]    Script Date: 2018/1/6 18:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_customer](
	[ID] [varchar](50) NOT NULL,
	[khqc] [varchar](50) NOT NULL,
	[khjc] [varchar](50) NULL,
	[khdz] [varchar](50) NOT NULL,
	[khyb] [varchar](50) NULL,
	[khdh] [varchar](50) NOT NULL,
	[khcz] [varchar](50) NULL,
	[khlxr] [varchar](50) NOT NULL,
	[khlxrdh] [varchar](50) NULL,
	[khyx] [varchar](50) NULL,
	[khkhyh] [varchar](50) NULL,
	[khyhzh] [varchar](50) NULL,
	[khhydj] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tb_customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_kucun]    Script Date: 2018/1/6 18:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_kucun](
	[ID] [char](20) NOT NULL,
	[spname] [char](50) NOT NULL,
	[jc] [char](20) NULL,
	[cd] [char](30) NULL,
	[gg] [char](20) NULL,
	[bz] [char](30) NULL,
	[dw] [char](10) NULL,
	[dj] [money] NOT NULL,
	[kcsl] [float] NOT NULL,
	[kcje] [money] NOT NULL,
 CONSTRAINT [PK_tb_kucun] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_rkjz]    Script Date: 2018/1/6 18:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_rkjz](
	[ID] [char](15) NOT NULL,
	[rkid] [char](15) NOT NULL,
	[gysname] [char](100) NULL,
	[bcjk] [money] NOT NULL,
	[ye] [money] NOT NULL,
	[jkdate] [datetime] NOT NULL,
	[czy] [char](10) NOT NULL,
	[jsr] [char](10) NOT NULL,
 CONSTRAINT [PK_tb_rkjz] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_rkph]    Script Date: 2018/1/6 18:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_rkph](
	[rkph] [varchar](15) NOT NULL,
	[sl] [float] NOT NULL,
	[yf] [money] NOT NULL,
	[sf] [money] NOT NULL,
	[wf] [money] NOT NULL,
	[gysname] [varchar](50) NULL,
	[rkdate] [datetime] NOT NULL,
	[czy] [varchar](10) NULL,
	[jsr] [varchar](10) NULL,
	[jsfs] [varchar](30) NOT NULL,
	[whether] [varchar](2) NOT NULL,
 CONSTRAINT [PK_tb_rkph] PRIMARY KEY CLUSTERED 
(
	[rkph] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ruku]    Script Date: 2018/1/6 18:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ruku](
	[ID] [char](15) NOT NULL,
	[spid] [char](7) NOT NULL,
	[spname] [char](50) NOT NULL,
	[jc] [char](20) NULL,
	[cd] [char](100) NULL,
	[gg] [char](50) NULL,
	[bz] [char](50) NULL,
	[dw] [char](10) NULL,
	[dj] [money] NOT NULL,
	[sl] [float] NOT NULL,
	[je] [money] NOT NULL,
	[gysname] [char](50) NULL,
	[rkdate] [datetime] NOT NULL,
	[czy] [char](10) NOT NULL,
	[jsr] [char](10) NOT NULL,
	[jsfs] [char](20) NOT NULL,
 CONSTRAINT [PK_tb_rk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_rukuth]    Script Date: 2018/1/6 18:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_rukuth](
	[ID] [varchar](15) NOT NULL,
	[spid] [varchar](7) NOT NULL,
	[spname] [varchar](50) NOT NULL,
	[jc] [varchar](20) NULL,
	[cd] [varchar](100) NULL,
	[gg] [varchar](50) NULL,
	[bz] [varchar](50) NULL,
	[dw] [varchar](10) NULL,
	[dj] [money] NOT NULL,
	[sl] [float] NOT NULL,
	[je] [money] NOT NULL,
	[gysname] [varchar](50) NULL,
	[thdate] [datetime] NOT NULL,
	[czy] [varchar](10) NULL,
	[jsr] [varchar](10) NULL,
	[jsfs] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tb_rukuth] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_sell]    Script Date: 2018/1/6 18:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_sell](
	[ID] [char](15) NOT NULL,
	[spid] [char](7) NOT NULL,
	[spname] [char](50) NOT NULL,
	[jc] [char](20) NULL,
	[cd] [char](30) NULL,
	[gg] [char](20) NULL,
	[bz] [char](30) NULL,
	[dw] [char](10) NULL,
	[dj] [money] NOT NULL,
	[sl] [float] NOT NULL,
	[je] [money] NOT NULL,
	[khname] [char](100) NOT NULL,
	[xsdate] [datetime] NOT NULL,
	[czy] [char](10) NOT NULL,
	[jsr] [char](10) NOT NULL,
	[jsfs] [char](20) NOT NULL,
 CONSTRAINT [PK_tb_sell] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_selljz]    Script Date: 2018/1/6 18:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_selljz](
	[ID] [char](15) NOT NULL,
	[xsid] [char](15) NOT NULL,
	[khname] [char](100) NOT NULL,
	[bcjk] [money] NOT NULL,
	[ye] [money] NOT NULL,
	[jkdate] [datetime] NOT NULL,
	[czy] [char](10) NOT NULL,
	[jsr] [char](10) NOT NULL,
 CONSTRAINT [PK_tb_selljz] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_sellph]    Script Date: 2018/1/6 18:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_sellph](
	[xsph] [varchar](15) NOT NULL,
	[sl] [float] NOT NULL,
	[ys] [money] NOT NULL,
	[ss] [money] NOT NULL,
	[ws] [money] NOT NULL,
	[khname] [varchar](100) NOT NULL,
	[xsdate] [datetime] NOT NULL,
	[czy] [varchar](10) NULL,
	[jsr] [varchar](10) NULL,
	[jsfs] [varchar](30) NOT NULL,
	[whether] [varchar](2) NOT NULL,
 CONSTRAINT [PK_tb_sellph] PRIMARY KEY CLUSTERED 
(
	[xsph] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_sellth]    Script Date: 2018/1/6 18:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_sellth](
	[ID] [varchar](15) NOT NULL,
	[spid] [varchar](7) NOT NULL,
	[spname] [varchar](50) NOT NULL,
	[jc] [varchar](20) NULL,
	[cd] [varchar](30) NULL,
	[gg] [varchar](20) NULL,
	[bz] [varchar](30) NULL,
	[dw] [varchar](10) NULL,
	[dj] [money] NOT NULL,
	[sl] [float] NOT NULL,
	[je] [money] NOT NULL,
	[khname] [varchar](100) NOT NULL,
	[thdate] [datetime] NOT NULL,
	[czy] [varchar](10) NULL,
	[jsr] [varchar](10) NULL,
	[jsfs] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tb_sellth] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_supermarket]    Script Date: 2018/1/6 18:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_supermarket](
	[ldzj] [money] NOT NULL,
	[kcyjsl] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_supplier]    Script Date: 2018/1/6 18:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_supplier](
	[ID] [varchar](50) NOT NULL,
	[gysname] [varchar](50) NOT NULL,
	[jc] [varchar](50) NULL,
	[address] [varchar](100) NOT NULL,
	[postcode] [varchar](50) NULL,
	[tel] [varchar](50) NOT NULL,
	[fax] [varchar](50) NULL,
	[lxr] [varchar](50) NOT NULL,
	[lxrtel] [varchar](50) NULL,
	[khyh] [varchar](50) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_tb_supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_thjz_rk]    Script Date: 2018/1/6 18:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_thjz_rk](
	[ID] [varchar](15) NOT NULL,
	[thid] [varchar](15) NOT NULL,
	[gysname] [varchar](100) NOT NULL,
	[bcjk] [money] NOT NULL,
	[ye] [money] NOT NULL,
	[jkdate] [datetime] NOT NULL,
	[czy] [varchar](10) NOT NULL,
	[jsr] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tb_thjz_rk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_thjz_xz]    Script Date: 2018/1/6 18:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_thjz_xz](
	[ID] [varchar](15) NOT NULL,
	[thid] [varchar](15) NOT NULL,
	[khname] [varchar](100) NOT NULL,
	[bcjk] [money] NOT NULL,
	[ye] [money] NOT NULL,
	[jkdate] [datetime] NOT NULL,
	[czy] [varchar](10) NOT NULL,
	[jsr] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tb_thjz_xz] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_thph_rk]    Script Date: 2018/1/6 18:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_thph_rk](
	[thph] [varchar](15) NOT NULL,
	[sl] [float] NOT NULL,
	[ys] [money] NOT NULL,
	[ss] [money] NOT NULL,
	[ws] [money] NOT NULL,
	[gysname] [varchar](50) NOT NULL,
	[thdate] [datetime] NOT NULL,
	[czy] [varchar](10) NOT NULL,
	[jsr] [varchar](10) NOT NULL,
	[jsfs] [varchar](30) NOT NULL,
	[whether] [varchar](2) NOT NULL,
 CONSTRAINT [PK_tb_thph_rk] PRIMARY KEY CLUSTERED 
(
	[thph] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_thph_xs]    Script Date: 2018/1/6 18:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_thph_xs](
	[thph] [varchar](15) NOT NULL,
	[sl] [float] NOT NULL,
	[yt] [money] NOT NULL,
	[st] [money] NOT NULL,
	[wt] [money] NOT NULL,
	[khname] [varchar](100) NOT NULL,
	[thdate] [datetime] NOT NULL,
	[czy] [varchar](10) NOT NULL,
	[jsr] [varchar](10) NOT NULL,
	[jsfs] [varchar](30) NOT NULL,
	[whether] [varchar](2) NOT NULL,
 CONSTRAINT [PK_tb_thph_xs] PRIMARY KEY CLUSTERED 
(
	[thph] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_user]    Script Date: 2018/1/6 18:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_user](
	[zgbh] [char](12) NOT NULL,
	[zgxm] [varchar](20) NOT NULL,
	[zgxb] [char](2) NOT NULL,
	[zgzz] [varchar](50) NULL,
	[lxdh] [varchar](20) NOT NULL,
	[dzyx] [varchar](50) NULL,
	[csrq] [date] NOT NULL,
	[djrq] [date] NOT NULL,
	[xse] [float] NULL,
	[username] [varchar](40) NOT NULL,
	[password] [varchar](40) NOT NULL,
	[userLastLogTime] [date] NULL,
 CONSTRAINT [PK_tb_zhigong] PRIMARY KEY CLUSTERED 
(
	[zgbh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_user', @level2type=N'COLUMN',@level2name=N'zgzz'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_user', @level2type=N'COLUMN',@level2name=N'lxdh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_user', @level2type=N'COLUMN',@level2name=N'dzyx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_user', @level2type=N'COLUMN',@level2name=N'csrq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记日期（招募日期）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_user', @level2type=N'COLUMN',@level2name=N'djrq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_user', @level2type=N'COLUMN',@level2name=N'xse'
GO
USE [master]
GO
ALTER DATABASE [db_shopping] SET  READ_WRITE 
GO
