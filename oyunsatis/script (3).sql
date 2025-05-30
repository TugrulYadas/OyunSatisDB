/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2022 (16.0.1000)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2022
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [OyunSatis_DB]    Script Date: 12.05.2024 14:48:25 ******/
CREATE DATABASE [OyunSatis_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OyunSatis_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\OyunSatis_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OyunSatis_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\OyunSatis_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [OyunSatis_DB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OyunSatis_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OyunSatis_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OyunSatis_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OyunSatis_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OyunSatis_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OyunSatis_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OyunSatis_DB] SET  MULTI_USER 
GO
ALTER DATABASE [OyunSatis_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OyunSatis_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OyunSatis_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OyunSatis_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OyunSatis_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OyunSatis_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OyunSatis_DB] SET QUERY_STORE = ON
GO
ALTER DATABASE [OyunSatis_DB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/****** Object:  Login [NT Service\MSSQL$SQLEXPRESS]    Script Date: 12.05.2024 14:48:25 ******/
CREATE LOGIN [NT Service\MSSQL$SQLEXPRESS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 12.05.2024 14:48:25 ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 12.05.2024 14:48:25 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY$SQLEXPRESS]    Script Date: 12.05.2024 14:48:25 ******/
CREATE LOGIN [NT SERVICE\SQLTELEMETRY$SQLEXPRESS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 12.05.2024 14:48:25 ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [gr0ve\berka]    Script Date: 12.05.2024 14:48:25 ******/
CREATE LOGIN [gr0ve\berka] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 12.05.2024 14:48:25 ******/
CREATE LOGIN [BUILTIN\Users] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 12.05.2024 14:48:25 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'BF8j8bRuBKUn4yMXhQM9MgGvDLQQVF1M/FZiqq5nXe8=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 12.05.2024 14:48:25 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'6xeQkUpK5ssoDh+v0EFphq8n27gcC6f9skqDrg7vi2k=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQL$SQLEXPRESS]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [gr0ve\berka]
GO
USE [OyunSatis_DB]
GO
/****** Object:  UserDefinedFunction [dbo].[KDVHesapla]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[KDVHesapla](@Fiyat DECIMAL(18, 2), @KDVOrani DECIMAL(5, 2))
RETURNS DECIMAL(18, 2)
AS
BEGIN
    DECLARE @KDV DECIMAL(18, 2);
    SET @KDV = @Fiyat * @KDVOrani / 100;
    RETURN @KDV;
END;
GO
/****** Object:  UserDefinedFunction [dbo].[YasHesapla]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[YasHesapla](@DogumTarihi DATE)
RETURNS INT
AS
BEGIN
    DECLARE @Yas INT;
    SET @Yas = DATEDIFF(YEAR, @DogumTarihi, GETDATE());
    RETURN @Yas;
END;
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[MusteriID] [int] NOT NULL,
	[Isim] [nvarchar](50) NULL,
	[Soyisim] [nvarchar](50) NULL,
	[Eposta] [nvarchar](100) NULL,
	[Telefon] [nvarchar](20) NULL,
	[Adres] [nvarchar](200) NULL,
	[Sehir] [nvarchar](50) NULL,
	[Ulke] [nvarchar](50) NULL,
	[PostaKodu] [nvarchar](20) NULL,
	[BolgeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[MusterileriListele]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[MusterileriListele](@Sehir NVARCHAR(50))
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM Musteriler
    WHERE Sehir = @Sehir
);
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[UrunID] [int] NOT NULL,
	[UrunAdi] [nvarchar](100) NULL,
	[KategoriID] [int] NULL,
	[Fiyat] [decimal](10, 2) NOT NULL,
	[StokMiktari] [int] NOT NULL,
	[Aciklama] [nvarchar](500) NULL,
	[YayinciUretici] [nvarchar](100) NOT NULL,
	[OyunMotoru] [nvarchar](100) NULL,
	[YayinTarihi] [date] NULL,
 CONSTRAINT [PK__Urunler__623D364B7B3E539A] PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[UrunleriListele]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[UrunleriListele](@KategoriID INT)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM Urunler
    WHERE KategoriID = @KategoriID
);
GO
/****** Object:  Table [dbo].[Bolgeler]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bolgeler](
	[BolgeID] [int] NOT NULL,
	[BolgeAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bolgeler] PRIMARY KEY CLUSTERED 
(
	[BolgeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Degerlendirme]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Degerlendirme](
	[DegerlendirmeID] [int] NOT NULL,
	[Yıldız(0-5)] [int] NOT NULL,
	[UrunAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Degerlendirme] PRIMARY KEY CLUSTERED 
(
	[DegerlendirmeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Depolar]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Depolar](
	[DepoID] [int] NOT NULL,
	[DepoAdi] [nvarchar](100) NOT NULL,
	[Adres] [nvarchar](200) NOT NULL,
	[Sehir] [nvarchar](50) NOT NULL,
	[Ulke] [nvarchar](50) NOT NULL,
	[Kapasite] [int] NOT NULL,
 CONSTRAINT [PK__Depolar__000B05C2AD1B96E5] PRIMARY KEY CLUSTERED 
(
	[DepoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Envanter]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Envanter](
	[UrunID] [int] NOT NULL,
	[DepoID] [int] NOT NULL,
	[Miktar] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC,
	[DepoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IadeIslemleri]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IadeIslemleri](
	[IslemID] [int] NOT NULL,
	[SiparisID] [int] NOT NULL,
	[UrunID] [int] NOT NULL,
	[Miktar] [int] NOT NULL,
	[IadeTarihi] [date] NOT NULL,
 CONSTRAINT [PK_IadeIslemleri] PRIMARY KEY CLUSTERED 
(
	[IslemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndirimKampanyalari]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndirimKampanyalari](
	[KampanyaID] [int] NOT NULL,
	[KampanyaAdi] [nvarchar](100) NULL,
	[BaslangicTarihi] [date] NULL,
	[BitisTarihi] [date] NULL,
	[IndirimOrani] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[KampanyaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[KategoriID] [int] NOT NULL,
	[KategoriAdi] [nvarchar](100) NULL,
	[UstKategoriID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kuponlar]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kuponlar](
	[KuponID] [int] NOT NULL,
	[KuponKodu] [nvarchar](50) NULL,
	[IndirimOrani] [decimal](5, 2) NOT NULL,
	[BaslangicTarihi] [date] NOT NULL,
	[BitisTarihi] [date] NOT NULL,
	[KullanimDurumu] [nvarchar](20) NULL,
 CONSTRAINT [PK__Kuponlar__CE352E33DDE26F16] PRIMARY KEY CLUSTERED 
(
	[KuponID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MusteriIncelemeleri]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MusteriIncelemeleri](
	[IncelemeID] [int] NOT NULL,
	[MusteriID] [int] NULL,
	[UrunID] [int] NULL,
	[IncelemeMetni] [nvarchar](500) NULL,
	[Puanlama] [int] NULL,
	[Tarih] [date] NULL,
 CONSTRAINT [PK__MusteriI__FB914F38B6D9363A] PRIMARY KEY CLUSTERED 
(
	[IncelemeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MusterilerYedek]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MusterilerYedek](
	[MusteriID] [int] NOT NULL,
	[Isim] [nvarchar](50) NULL,
	[Soyisim] [nvarchar](50) NULL,
	[Eposta] [nvarchar](100) NULL,
	[Telefon] [nvarchar](20) NULL,
	[Adres] [nvarchar](200) NULL,
	[Sehir] [nvarchar](50) NULL,
	[Ulke] [nvarchar](50) NULL,
	[PostaKodu] [nvarchar](20) NULL,
	[SistemTarihi] [datetime] NULL,
	[KayitAtanKullanici] [nvarchar](100) NULL,
	[SilinmeDurumu] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OdemeBilgileri]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OdemeBilgileri](
	[OdemeID] [int] NOT NULL,
	[SiparisID] [int] NULL,
	[OdemeTarihi] [date] NULL,
	[OdemeTipi] [nvarchar](50) NULL,
	[Tutar] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[OdemeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OyunGelistiricileri]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OyunGelistiricileri](
	[GelistiriciID] [int] NOT NULL,
	[GelistiriciAdi] [nvarchar](100) NOT NULL,
	[KurulusTarihi] [date] NULL,
	[Ulke] [nvarchar](50) NOT NULL,
	[WebSitesi] [nvarchar](200) NULL,
 CONSTRAINT [PK__OyunGeli__E84D03540C32B4EF] PRIMARY KEY CLUSTERED 
(
	[GelistiriciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OyunMotorlari]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OyunMotorlari](
	[MotorID] [int] NOT NULL,
	[MotorAdi] [nvarchar](100) NULL,
	[Surum] [nvarchar](50) NULL,
	[GelistiriciID] [int] NULL,
 CONSTRAINT [PK_OyunMotorlari] PRIMARY KEY CLUSTERED 
(
	[MotorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OyunOzellikleri]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OyunOzellikleri](
	[OzellikID] [int] NOT NULL,
	[OzellikAdi] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OzellikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[PersonelID] [int] NOT NULL,
	[Isim] [nvarchar](50) NOT NULL,
	[Soyisim] [nvarchar](50) NOT NULL,
	[Pozisyon] [nvarchar](50) NULL,
	[Departman] [nvarchar](50) NULL,
	[Maas] [decimal](10, 2) NOT NULL,
	[IseBaslamaTarihi] [date] NULL,
 CONSTRAINT [PK__Personel__0F0C57516614730E] PRIMARY KEY CLUSTERED 
(
	[PersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatisIptalNedenleri]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatisIptalNedenleri](
	[NedenID] [int] NOT NULL,
	[NedenAdi] [nvarchar](100) NULL,
	[Aciklama] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[NedenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatisRaporlari]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatisRaporlari](
	[RaporID] [int] NOT NULL,
	[Tarih] [date] NULL,
	[SatisMiktari] [decimal](10, 2) NOT NULL,
	[ToplamGelir] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK__SatisRap__CFBFE4ED6AD487A9] PRIMARY KEY CLUSTERED 
(
	[RaporID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiparisDetaylari]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiparisDetaylari](
	[DetayID] [int] NOT NULL,
	[SiparisID] [int] NULL,
	[UrunID] [int] NULL,
	[Miktar] [int] NULL,
	[BirimFiyat] [decimal](10, 2) NULL,
	[IndirimOrani] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[DetayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siparisler]    Script Date: 12.05.2024 14:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparisler](
	[SiparisID] [int] NOT NULL,
	[MusteriID] [int] NULL,
	[SiparisTarihi] [date] NULL,
	[ToplamTutar] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[SiparisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Bolgeler] ([BolgeID], [BolgeAdi]) VALUES (1, N'EgeBolgesi')
INSERT [dbo].[Bolgeler] ([BolgeID], [BolgeAdi]) VALUES (2, N'Marmara')
INSERT [dbo].[Bolgeler] ([BolgeID], [BolgeAdi]) VALUES (3, N'IcAnadolu')
INSERT [dbo].[Bolgeler] ([BolgeID], [BolgeAdi]) VALUES (4, N'Karadeniz')
INSERT [dbo].[Bolgeler] ([BolgeID], [BolgeAdi]) VALUES (5, N'Akdeniz')
INSERT [dbo].[Bolgeler] ([BolgeID], [BolgeAdi]) VALUES (6, N'DoguAnadolu')
INSERT [dbo].[Bolgeler] ([BolgeID], [BolgeAdi]) VALUES (7, N'GuneyDoguAnadolu')
GO
INSERT [dbo].[Degerlendirme] ([DegerlendirmeID], [Yıldız(0-5)], [UrunAdi]) VALUES (1, 5, N'Elden Ring')
INSERT [dbo].[Degerlendirme] ([DegerlendirmeID], [Yıldız(0-5)], [UrunAdi]) VALUES (2, 5, N'Elden Ring')
INSERT [dbo].[Degerlendirme] ([DegerlendirmeID], [Yıldız(0-5)], [UrunAdi]) VALUES (3, 5, N'Elden Ring')
GO
INSERT [dbo].[Depolar] ([DepoID], [DepoAdi], [Adres], [Sehir], [Ulke], [Kapasite]) VALUES (1, N'Merkez Depo', N'Merkez Cad. No: 123', N'Istanbul', N'Turkiye', 100)
INSERT [dbo].[Depolar] ([DepoID], [DepoAdi], [Adres], [Sehir], [Ulke], [Kapasite]) VALUES (2, N'Ankara Depo', N'Ankara Cad. No: 456', N'Ankara', N'Turkiye', 80)
INSERT [dbo].[Depolar] ([DepoID], [DepoAdi], [Adres], [Sehir], [Ulke], [Kapasite]) VALUES (3, N'Izmir Depo', N'Izmir Cad. No: 789', N'Izmir', N'Turkiye', 60)
INSERT [dbo].[Depolar] ([DepoID], [DepoAdi], [Adres], [Sehir], [Ulke], [Kapasite]) VALUES (4, N'Bursa Depo', N'Bursa Cad. No: 101', N'Bursa', N'Turkiye', 40)
INSERT [dbo].[Depolar] ([DepoID], [DepoAdi], [Adres], [Sehir], [Ulke], [Kapasite]) VALUES (5, N'Antalya Depo', N'Antalya Cad. No: 202', N'Antalya', N'Turkiye', 20)
GO
INSERT [dbo].[Envanter] ([UrunID], [DepoID], [Miktar]) VALUES (1, 1, 50)
INSERT [dbo].[Envanter] ([UrunID], [DepoID], [Miktar]) VALUES (2, 2, 40)
INSERT [dbo].[Envanter] ([UrunID], [DepoID], [Miktar]) VALUES (3, 3, 30)
INSERT [dbo].[Envanter] ([UrunID], [DepoID], [Miktar]) VALUES (4, 4, 20)
INSERT [dbo].[Envanter] ([UrunID], [DepoID], [Miktar]) VALUES (5, 5, 10)
GO
INSERT [dbo].[IadeIslemleri] ([IslemID], [SiparisID], [UrunID], [Miktar], [IadeTarihi]) VALUES (1, 1, 2, 1, CAST(N'2024-03-02' AS Date))
INSERT [dbo].[IadeIslemleri] ([IslemID], [SiparisID], [UrunID], [Miktar], [IadeTarihi]) VALUES (2, 2, 1, 1, CAST(N'2024-05-10' AS Date))
INSERT [dbo].[IadeIslemleri] ([IslemID], [SiparisID], [UrunID], [Miktar], [IadeTarihi]) VALUES (3, 3, 4, 1, CAST(N'2024-04-25' AS Date))
GO
INSERT [dbo].[IndirimKampanyalari] ([KampanyaID], [KampanyaAdi], [BaslangicTarihi], [BitisTarihi], [IndirimOrani]) VALUES (1, N'Yaz İndirimi', CAST(N'2024-06-01' AS Date), CAST(N'2024-06-30' AS Date), CAST(15.00 AS Decimal(5, 2)))
INSERT [dbo].[IndirimKampanyalari] ([KampanyaID], [KampanyaAdi], [BaslangicTarihi], [BitisTarihi], [IndirimOrani]) VALUES (2, N'Bahar Fırsatları', CAST(N'2024-05-15' AS Date), CAST(N'2024-05-31' AS Date), CAST(10.00 AS Decimal(5, 2)))
INSERT [dbo].[IndirimKampanyalari] ([KampanyaID], [KampanyaAdi], [BaslangicTarihi], [BitisTarihi], [IndirimOrani]) VALUES (3, N'Sonbahar İndirimi', CAST(N'2024-09-01' AS Date), CAST(N'2024-09-30' AS Date), CAST(20.00 AS Decimal(5, 2)))
INSERT [dbo].[IndirimKampanyalari] ([KampanyaID], [KampanyaAdi], [BaslangicTarihi], [BitisTarihi], [IndirimOrani]) VALUES (4, N'Kış Kampanyası', CAST(N'2024-12-01' AS Date), CAST(N'2025-01-15' AS Date), CAST(25.00 AS Decimal(5, 2)))
INSERT [dbo].[IndirimKampanyalari] ([KampanyaID], [KampanyaAdi], [BaslangicTarihi], [BitisTarihi], [IndirimOrani]) VALUES (5, N'Yılbaşı Özel', CAST(N'2024-12-20' AS Date), CAST(N'2025-01-05' AS Date), CAST(30.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi], [UstKategoriID]) VALUES (1, N'Aksiyon', NULL)
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi], [UstKategoriID]) VALUES (2, N'Spor', NULL)
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi], [UstKategoriID]) VALUES (3, N'Rol Yapma', NULL)
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi], [UstKategoriID]) VALUES (4, N'Macera', NULL)
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi], [UstKategoriID]) VALUES (5, N'Simulasyon', NULL)
GO
INSERT [dbo].[Kuponlar] ([KuponID], [KuponKodu], [IndirimOrani], [BaslangicTarihi], [BitisTarihi], [KullanimDurumu]) VALUES (1, N'INDIRIM', CAST(50.00 AS Decimal(5, 2)), CAST(N'2024-04-23' AS Date), CAST(N'2024-04-30' AS Date), N'BITTI')
INSERT [dbo].[Kuponlar] ([KuponID], [KuponKodu], [IndirimOrani], [BaslangicTarihi], [BitisTarihi], [KullanimDurumu]) VALUES (2, N'DARK10', CAST(10.00 AS Decimal(5, 2)), CAST(N'2024-06-27' AS Date), CAST(N'2024-07-17' AS Date), N'YAKINDA')
INSERT [dbo].[Kuponlar] ([KuponID], [KuponKodu], [IndirimOrani], [BaslangicTarihi], [BitisTarihi], [KullanimDurumu]) VALUES (3, N'CS', CAST(5.00 AS Decimal(5, 2)), CAST(N'2024-05-15' AS Date), CAST(N'2024-09-20' AS Date), N'YAKINDA')
INSERT [dbo].[Kuponlar] ([KuponID], [KuponKodu], [IndirimOrani], [BaslangicTarihi], [BitisTarihi], [KullanimDurumu]) VALUES (4, N'TUYAD', CAST(25.00 AS Decimal(5, 2)), CAST(N'2024-05-12' AS Date), CAST(N'2024-05-25' AS Date), N'AKTIF')
GO
INSERT [dbo].[MusteriIncelemeleri] ([IncelemeID], [MusteriID], [UrunID], [IncelemeMetni], [Puanlama], [Tarih]) VALUES (1, 1, 1, N'Harika bir oyun, kesinlikle tavsiye ederim!', 5, CAST(N'2024-05-03' AS Date))
INSERT [dbo].[MusteriIncelemeleri] ([IncelemeID], [MusteriID], [UrunID], [IncelemeMetni], [Puanlama], [Tarih]) VALUES (2, 2, 2, N'Grafikler çok gerçekçi, oyun çok eğlenceli.', 4, CAST(N'2024-05-04' AS Date))
INSERT [dbo].[MusteriIncelemeleri] ([IncelemeID], [MusteriID], [UrunID], [IncelemeMetni], [Puanlama], [Tarih]) VALUES (3, 3, 3, N'Oyunun hikayesi muhteşem, ancak bazı teknik sorunlar var.', 4, CAST(N'2024-05-05' AS Date))
INSERT [dbo].[MusteriIncelemeleri] ([IncelemeID], [MusteriID], [UrunID], [IncelemeMetni], [Puanlama], [Tarih]) VALUES (4, 4, 4, N'FIFA serisi her zamanki gibi mükemmel!', 5, CAST(N'2024-05-06' AS Date))
INSERT [dbo].[MusteriIncelemeleri] ([IncelemeID], [MusteriID], [UrunID], [IncelemeMetni], [Puanlama], [Tarih]) VALUES (5, 5, 5, N'Ücretsiz olmasına rağmen harika bir deneyim!', 5, CAST(N'2024-05-07' AS Date))
GO
INSERT [dbo].[Musteriler] ([MusteriID], [Isim], [Soyisim], [Eposta], [Telefon], [Adres], [Sehir], [Ulke], [PostaKodu], [BolgeID]) VALUES (1, N'Ali', N'Yilmaz', N'ali@example.com', N'555-123-4567', N'123 Main St', N'Istanbul', N'Turkiye', N'34000', NULL)
INSERT [dbo].[Musteriler] ([MusteriID], [Isim], [Soyisim], [Eposta], [Telefon], [Adres], [Sehir], [Ulke], [PostaKodu], [BolgeID]) VALUES (2, N'Ayse', N'Kaya', N'ayse@example.com', N'555-234-5678', N'456 Elm St', N'Ankara', N'Turkiye', N'06000', NULL)
INSERT [dbo].[Musteriler] ([MusteriID], [Isim], [Soyisim], [Eposta], [Telefon], [Adres], [Sehir], [Ulke], [PostaKodu], [BolgeID]) VALUES (3, N'Tugrul', N'Yadas', N'tuyad35@hotmail.com', N'545-531-3960', N'1881 Atatürk St', N'Kars', N'Turkiye', N'36000', NULL)
INSERT [dbo].[Musteriler] ([MusteriID], [Isim], [Soyisim], [Eposta], [Telefon], [Adres], [Sehir], [Ulke], [PostaKodu], [BolgeID]) VALUES (4, N'Fatma', N'Sahin', N'fatma@example.com', N'555-456-7890', N'101 Pine St', N'Bursa', N'Turkiye', N'16000', NULL)
INSERT [dbo].[Musteriler] ([MusteriID], [Isim], [Soyisim], [Eposta], [Telefon], [Adres], [Sehir], [Ulke], [PostaKodu], [BolgeID]) VALUES (5, N'Mustafa', N'Koc', N'mustafa@example.com', N'555-567-8901', N'202 Maple St', N'Antalya', N'Turkiye', N'07000', NULL)
INSERT [dbo].[Musteriler] ([MusteriID], [Isim], [Soyisim], [Eposta], [Telefon], [Adres], [Sehir], [Ulke], [PostaKodu], [BolgeID]) VALUES (6, N'Ali Altay', N'Has', N'alialtay35@hotmail.com', N'545-538-4565', N'Inonu St', N'Kars', N'Turkiye', N'36010', NULL)
GO
INSERT [dbo].[OdemeBilgileri] ([OdemeID], [SiparisID], [OdemeTarihi], [OdemeTipi], [Tutar]) VALUES (1, 1, CAST(N'2024-05-02' AS Date), N'Kredi Kartı', CAST(149.97 AS Decimal(10, 2)))
INSERT [dbo].[OdemeBilgileri] ([OdemeID], [SiparisID], [OdemeTarihi], [OdemeTipi], [Tutar]) VALUES (2, 2, CAST(N'2024-05-03' AS Date), N'Havale', CAST(99.98 AS Decimal(10, 2)))
INSERT [dbo].[OdemeBilgileri] ([OdemeID], [SiparisID], [OdemeTarihi], [OdemeTipi], [Tutar]) VALUES (3, 3, CAST(N'2024-05-04' AS Date), N'Nakit', CAST(49.99 AS Decimal(10, 2)))
INSERT [dbo].[OdemeBilgileri] ([OdemeID], [SiparisID], [OdemeTarihi], [OdemeTipi], [Tutar]) VALUES (4, 4, CAST(N'2024-05-05' AS Date), N'Kapıda Ödeme', CAST(29.99 AS Decimal(10, 2)))
INSERT [dbo].[OdemeBilgileri] ([OdemeID], [SiparisID], [OdemeTarihi], [OdemeTipi], [Tutar]) VALUES (5, 5, CAST(N'2024-05-06' AS Date), N'Ücretsiz', CAST(0.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[OyunGelistiricileri] ([GelistiriciID], [GelistiriciAdi], [KurulusTarihi], [Ulke], [WebSitesi]) VALUES (1, N'CD Projekt Red', CAST(N'1994-05-01' AS Date), N'Polonya', N'https://www.cdprojekt.com')
INSERT [dbo].[OyunGelistiricileri] ([GelistiriciID], [GelistiriciAdi], [KurulusTarihi], [Ulke], [WebSitesi]) VALUES (2, N'Rockstar Games', CAST(N'1998-12-01' AS Date), N'ABD', N'https://www.rockstargames.com')
INSERT [dbo].[OyunGelistiricileri] ([GelistiriciID], [GelistiriciAdi], [KurulusTarihi], [Ulke], [WebSitesi]) VALUES (3, N'EA Sports', CAST(N'1982-05-28' AS Date), N'ABD', N'https://www.ea.com')
INSERT [dbo].[OyunGelistiricileri] ([GelistiriciID], [GelistiriciAdi], [KurulusTarihi], [Ulke], [WebSitesi]) VALUES (4, N'Activision', CAST(N'1979-10-01' AS Date), N'ABD', N'https://www.activision.com')
INSERT [dbo].[OyunGelistiricileri] ([GelistiriciID], [GelistiriciAdi], [KurulusTarihi], [Ulke], [WebSitesi]) VALUES (5, N'Infinity Ward', CAST(N'2002-05-01' AS Date), N'ABD', N'https://www.infinityward.com')
GO
INSERT [dbo].[OyunMotorlari] ([MotorID], [MotorAdi], [Surum], [GelistiriciID]) VALUES (1, N'RAGE', N'1,9', 2)
INSERT [dbo].[OyunMotorlari] ([MotorID], [MotorAdi], [Surum], [GelistiriciID]) VALUES (2, N'Frostbite', N'v3.0', 3)
INSERT [dbo].[OyunMotorlari] ([MotorID], [MotorAdi], [Surum], [GelistiriciID]) VALUES (3, N'IW 2.0', N'2.0', 5)
GO
INSERT [dbo].[OyunOzellikleri] ([OzellikID], [OzellikAdi]) VALUES (1, N'Su Fizikleri')
INSERT [dbo].[OyunOzellikleri] ([OzellikID], [OzellikAdi]) VALUES (2, N'RTX')
INSERT [dbo].[OyunOzellikleri] ([OzellikID], [OzellikAdi]) VALUES (3, N'FSR')
INSERT [dbo].[OyunOzellikleri] ([OzellikID], [OzellikAdi]) VALUES (4, N'Vsync')
INSERT [dbo].[OyunOzellikleri] ([OzellikID], [OzellikAdi]) VALUES (5, N'SALVO')
GO
INSERT [dbo].[Personel] ([PersonelID], [Isim], [Soyisim], [Pozisyon], [Departman], [Maas], [IseBaslamaTarihi]) VALUES (1, N'Ahmet', N'Yılmaz', N'Satış Temsilcisi', N'Satış Departmanı', CAST(4000.00 AS Decimal(10, 2)), CAST(N'2020-01-15' AS Date))
INSERT [dbo].[Personel] ([PersonelID], [Isim], [Soyisim], [Pozisyon], [Departman], [Maas], [IseBaslamaTarihi]) VALUES (2, N'Ayşe', N'Demir', N'Muhasebe Sorumlusu', N'Muhasebe Departmanı', CAST(4500.00 AS Decimal(10, 2)), CAST(N'2019-03-20' AS Date))
INSERT [dbo].[Personel] ([PersonelID], [Isim], [Soyisim], [Pozisyon], [Departman], [Maas], [IseBaslamaTarihi]) VALUES (3, N'Mustafa', N'Kaya', N'Depo Görevlisi', N'Depo Departmanı', CAST(3500.00 AS Decimal(10, 2)), CAST(N'2021-06-10' AS Date))
INSERT [dbo].[Personel] ([PersonelID], [Isim], [Soyisim], [Pozisyon], [Departman], [Maas], [IseBaslamaTarihi]) VALUES (4, N'Fatma', N'Çelik', N'Müşteri Hizmetleri', N'Destek Departmanı', CAST(3800.00 AS Decimal(10, 2)), CAST(N'2018-11-05' AS Date))
INSERT [dbo].[Personel] ([PersonelID], [Isim], [Soyisim], [Pozisyon], [Departman], [Maas], [IseBaslamaTarihi]) VALUES (5, N'Mehmet', N'Koç', N'Yazılım Geliştirici', N'Teknoloji Departmanı', CAST(6000.00 AS Decimal(10, 2)), CAST(N'2017-09-12' AS Date))
GO
INSERT [dbo].[SatisIptalNedenleri] ([NedenID], [NedenAdi], [Aciklama]) VALUES (1, N'', NULL)
GO
INSERT [dbo].[SatisRaporlari] ([RaporID], [Tarih], [SatisMiktari], [ToplamGelir]) VALUES (1, CAST(N'2024-05-01' AS Date), CAST(10.00 AS Decimal(10, 2)), CAST(299.90 AS Decimal(10, 2)))
INSERT [dbo].[SatisRaporlari] ([RaporID], [Tarih], [SatisMiktari], [ToplamGelir]) VALUES (2, CAST(N'2024-05-02' AS Date), CAST(8.00 AS Decimal(10, 2)), CAST(319.92 AS Decimal(10, 2)))
INSERT [dbo].[SatisRaporlari] ([RaporID], [Tarih], [SatisMiktari], [ToplamGelir]) VALUES (3, CAST(N'2024-05-03' AS Date), CAST(5.00 AS Decimal(10, 2)), CAST(249.95 AS Decimal(10, 2)))
INSERT [dbo].[SatisRaporlari] ([RaporID], [Tarih], [SatisMiktari], [ToplamGelir]) VALUES (4, CAST(N'2024-05-04' AS Date), CAST(3.00 AS Decimal(10, 2)), CAST(89.97 AS Decimal(10, 2)))
INSERT [dbo].[SatisRaporlari] ([RaporID], [Tarih], [SatisMiktari], [ToplamGelir]) VALUES (5, CAST(N'2024-05-05' AS Date), CAST(2.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[SiparisDetaylari] ([DetayID], [SiparisID], [UrunID], [Miktar], [BirimFiyat], [IndirimOrani]) VALUES (1, 1, 1, 1, CAST(29.99 AS Decimal(10, 2)), CAST(0.00 AS Decimal(5, 2)))
INSERT [dbo].[SiparisDetaylari] ([DetayID], [SiparisID], [UrunID], [Miktar], [BirimFiyat], [IndirimOrani]) VALUES (2, 2, 2, 1, CAST(39.99 AS Decimal(10, 2)), CAST(0.00 AS Decimal(5, 2)))
INSERT [dbo].[SiparisDetaylari] ([DetayID], [SiparisID], [UrunID], [Miktar], [BirimFiyat], [IndirimOrani]) VALUES (3, 3, 3, 1, CAST(49.99 AS Decimal(10, 2)), CAST(0.00 AS Decimal(5, 2)))
INSERT [dbo].[SiparisDetaylari] ([DetayID], [SiparisID], [UrunID], [Miktar], [BirimFiyat], [IndirimOrani]) VALUES (4, 4, 4, 1, CAST(59.99 AS Decimal(10, 2)), CAST(0.00 AS Decimal(5, 2)))
INSERT [dbo].[SiparisDetaylari] ([DetayID], [SiparisID], [UrunID], [Miktar], [BirimFiyat], [IndirimOrani]) VALUES (5, 5, 5, 1, CAST(0.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [SiparisTarihi], [ToplamTutar]) VALUES (1, 1, CAST(N'2024-05-01' AS Date), CAST(149.97 AS Decimal(10, 2)))
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [SiparisTarihi], [ToplamTutar]) VALUES (2, 2, CAST(N'2024-05-02' AS Date), CAST(99.98 AS Decimal(10, 2)))
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [SiparisTarihi], [ToplamTutar]) VALUES (3, 3, CAST(N'2024-05-03' AS Date), CAST(49.99 AS Decimal(10, 2)))
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [SiparisTarihi], [ToplamTutar]) VALUES (4, 4, CAST(N'2024-05-04' AS Date), CAST(29.99 AS Decimal(10, 2)))
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [SiparisTarihi], [ToplamTutar]) VALUES (5, 5, CAST(N'2024-05-05' AS Date), CAST(99.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [KategoriID], [Fiyat], [StokMiktari], [Aciklama], [YayinciUretici], [OyunMotoru], [YayinTarihi]) VALUES (1, N'The Witcher 3: Wild Hunt', 1, CAST(29.99 AS Decimal(10, 2)), 100, N'Epik bir RPG deneyimi', N'CD Projekt Red', N'REDengine', CAST(N'2015-05-19' AS Date))
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [KategoriID], [Fiyat], [StokMiktari], [Aciklama], [YayinciUretici], [OyunMotoru], [YayinTarihi]) VALUES (2, N'Grand Theft Auto V', 1, CAST(39.99 AS Decimal(10, 2)), 75, N'Acik dunya eglenecesi', N'Rockstar Games', N'RAGE', CAST(N'2013-09-17' AS Date))
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [KategoriID], [Fiyat], [StokMiktari], [Aciklama], [YayinciUretici], [OyunMotoru], [YayinTarihi]) VALUES (3, N'Red Dead Redemption 2', 1, CAST(49.99 AS Decimal(10, 2)), 50, N'Amerikan vahsi batisinda epik bir macera', N'Rockstar Games', N'RAGE', CAST(N'2018-10-26' AS Date))
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [KategoriID], [Fiyat], [StokMiktari], [Aciklama], [YayinciUretici], [OyunMotoru], [YayinTarihi]) VALUES (4, N'FIFA 22', 2, CAST(59.99 AS Decimal(10, 2)), 120, N'Futbolun gercekci deneyimi', N'EA Sports', N'Frostbite', CAST(N'2021-10-01' AS Date))
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [KategoriID], [Fiyat], [StokMiktari], [Aciklama], [YayinciUretici], [OyunMotoru], [YayinTarihi]) VALUES (5, N'Call of Duty: Warzone', 1, CAST(0.00 AS Decimal(10, 2)), 200, N'Ucretsiz Battle Royale deneyimi', N'Activision', N'IW engine', CAST(N'2020-03-10' AS Date))
GO
ALTER TABLE [dbo].[Envanter]  WITH CHECK ADD  CONSTRAINT [FK__Envanter__UrunID__52593CB8] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunID])
GO
ALTER TABLE [dbo].[Envanter] CHECK CONSTRAINT [FK__Envanter__UrunID__52593CB8]
GO
ALTER TABLE [dbo].[IadeIslemleri]  WITH CHECK ADD  CONSTRAINT [FK_IadeIslemleri_Siparisler] FOREIGN KEY([SiparisID])
REFERENCES [dbo].[Siparisler] ([SiparisID])
GO
ALTER TABLE [dbo].[IadeIslemleri] CHECK CONSTRAINT [FK_IadeIslemleri_Siparisler]
GO
ALTER TABLE [dbo].[MusteriIncelemeleri]  WITH CHECK ADD  CONSTRAINT [FK__MusteriIn__Muste__48CFD27E] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteriler] ([MusteriID])
GO
ALTER TABLE [dbo].[MusteriIncelemeleri] CHECK CONSTRAINT [FK__MusteriIn__Muste__48CFD27E]
GO
ALTER TABLE [dbo].[MusteriIncelemeleri]  WITH CHECK ADD  CONSTRAINT [FK__MusteriIn__UrunI__49C3F6B7] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunID])
GO
ALTER TABLE [dbo].[MusteriIncelemeleri] CHECK CONSTRAINT [FK__MusteriIn__UrunI__49C3F6B7]
GO
ALTER TABLE [dbo].[Musteriler]  WITH CHECK ADD  CONSTRAINT [FK_Musteriler_Bolgeler] FOREIGN KEY([BolgeID])
REFERENCES [dbo].[Bolgeler] ([BolgeID])
GO
ALTER TABLE [dbo].[Musteriler] CHECK CONSTRAINT [FK_Musteriler_Bolgeler]
GO
ALTER TABLE [dbo].[OdemeBilgileri]  WITH CHECK ADD FOREIGN KEY([SiparisID])
REFERENCES [dbo].[Siparisler] ([SiparisID])
GO
ALTER TABLE [dbo].[SiparisDetaylari]  WITH CHECK ADD FOREIGN KEY([SiparisID])
REFERENCES [dbo].[Siparisler] ([SiparisID])
GO
ALTER TABLE [dbo].[SiparisDetaylari]  WITH CHECK ADD  CONSTRAINT [FK__SiparisDe__UrunI__412EB0B6] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunID])
GO
ALTER TABLE [dbo].[SiparisDetaylari] CHECK CONSTRAINT [FK__SiparisDe__UrunI__412EB0B6]
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteriler] ([MusteriID])
GO
/****** Object:  StoredProcedure [dbo].[SP_Delete]    Script Date: 12.05.2024 14:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Delete]
@Isim nvarchar(50)
AS BEGIN
DELETE FROM Musteriler WHERE Isim = @Isim
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Insert]    Script Date: 12.05.2024 14:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Insert]
@MusteriID int, @Isim nvarchar(50), @Soyisim nvarchar(50), @Eposta nvarchar(100), @Telefon nvarchar(20), @Adres nvarchar(200), @Sehir nvarchar(50), @Ulke nvarchar(50), @PostaKodu nvarchar(20)
AS BEGIN
INSERT INTO Musteriler VALUES (@MusteriID,@Isim,@Soyisim,@Eposta,@Telefon,@Adres,@Sehir,@Ulke,@PostaKodu)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Update]    Script Date: 12.05.2024 14:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Update]
@MusteriID int, @Isim nvarchar(50), @Soyisim nvarchar(50), @Eposta nvarchar(100), @Telefon nvarchar(20), @Adres nvarchar(200), @Sehir nvarchar(50), @Ulke nvarchar(50), @PostaKodu nvarchar(20)
AS BEGIN
UPDATE Musteriler SET Isim = @Isim, Soyisim = @Soyisim, Eposta = @Eposta, Telefon = @Telefon, Adres = @Adres, Sehir = @Sehir, Ulke = @Ulke, PostaKodu = @PostaKodu WHERE MusteriID =@MusteriID
END
GO
/****** Object:  Trigger [dbo].[AfterInsertTrigger]    Script Date: 12.05.2024 14:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AfterInsertTrigger]
ON [dbo].[Musteriler]
AFTER INSERT
AS
BEGIN
    INSERT INTO MusterilerYedek SELECT MusteriID,Isim,Soyisim,Eposta,Telefon,Adres,Sehir,Ulke,PostaKodu, GETDATE(), 'Admin', 0 FROM inserted
END
GO
ALTER TABLE [dbo].[Musteriler] ENABLE TRIGGER [AfterInsertTrigger]
GO
/****** Object:  Trigger [dbo].[AfterUpdateTrigger]    Script Date: 12.05.2024 14:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AfterUpdateTrigger]
ON [dbo].[Musteriler]
AFTER UPDATE
AS
BEGIN
    UPDATE MusterilerYedek
    SET Isim = i.Isim,
        Soyisim = i.Soyisim,
        Eposta = i.Eposta,
        Telefon = i.Telefon,
        Adres = i.Adres,
        Sehir = i.Sehir,
        Ulke = i.Ulke,
        PostaKodu = i.PostaKodu,
        SistemTarihi = GETDATE(),
        KayitAtanKullanici = SUSER_SNAME(),
        SilinmeDurumu = 0
    FROM MusterilerYedek y
    JOIN inserted i ON y.MusteriID = i.MusteriID;
END;
GO
ALTER TABLE [dbo].[Musteriler] ENABLE TRIGGER [AfterUpdateTrigger]
GO
/****** Object:  Trigger [dbo].[InsteadOfDeleteTrigger]    Script Date: 12.05.2024 14:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[InsteadOfDeleteTrigger]
ON [dbo].[Musteriler]
INSTEAD OF DELETE
AS
BEGIN
    UPDATE MusterilerYedek
    SET SilinmeDurumu = 1 WHERE MusteriID IN (SELECT MusteriID FROM deleted)

    DELETE FROM Musteriler WHERE MusteriID IN (SELECT MusteriID FROM deleted)
END

GO
ALTER TABLE [dbo].[Musteriler] ENABLE TRIGGER [InsteadOfDeleteTrigger]
GO
USE [master]
GO
ALTER DATABASE [OyunSatis_DB] SET  READ_WRITE 
GO
