
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/07/2023 14:34:08
-- Generated from EDMX file: C:\Users\emine.pehlivan\source\repos\ModelFirstCafe\ModelFirstCafe\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Cafe];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[UrunlerSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UrunlerSet];
GO
IF OBJECT_ID(N'[dbo].[FiyatlarSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FiyatlarSet];
GO
IF OBJECT_ID(N'[dbo].[RezervasyonSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RezervasyonSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'UrunlerSet'
CREATE TABLE [dbo].[UrunlerSet] (
    [UrunNo] int IDENTITY(1,1) NOT NULL,
    [Yemekler] nvarchar(max)  NOT NULL,
    [Icecekler] nvarchar(max)  NOT NULL,
    [Tatlilar] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'FiyatlarSet'
CREATE TABLE [dbo].[FiyatlarSet] (
    [FiyatNo] int IDENTITY(1,1) NOT NULL,
    [YFiyat] int  NOT NULL,
    [IFiyat] int  NOT NULL,
    [TFiyat] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RezervasyonSet'
CREATE TABLE [dbo].[RezervasyonSet] (
    [RezervasyonNo] int IDENTITY(1,1) NOT NULL,
    [Tarih] nvarchar(max)  NOT NULL,
    [Saat] nvarchar(max)  NOT NULL,
    [Kisi] nvarchar(max)  NOT NULL,
    [Yer] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'KullanicilarSet'
CREATE TABLE [dbo].[KullanicilarSet] (
    [KullaniciNo] int IDENTITY(1,1) NOT NULL,
    [KullaniciAdi] nvarchar(max)  NOT NULL,
    [Sifre] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [UrunNo] in table 'UrunlerSet'
ALTER TABLE [dbo].[UrunlerSet]
ADD CONSTRAINT [PK_UrunlerSet]
    PRIMARY KEY CLUSTERED ([UrunNo] ASC);
GO

-- Creating primary key on [FiyatNo] in table 'FiyatlarSet'
ALTER TABLE [dbo].[FiyatlarSet]
ADD CONSTRAINT [PK_FiyatlarSet]
    PRIMARY KEY CLUSTERED ([FiyatNo] ASC);
GO

-- Creating primary key on [RezervasyonNo] in table 'RezervasyonSet'
ALTER TABLE [dbo].[RezervasyonSet]
ADD CONSTRAINT [PK_RezervasyonSet]
    PRIMARY KEY CLUSTERED ([RezervasyonNo] ASC);
GO

-- Creating primary key on [KullaniciNo] in table 'KullanicilarSet'
ALTER TABLE [dbo].[KullanicilarSet]
ADD CONSTRAINT [PK_KullanicilarSet]
    PRIMARY KEY CLUSTERED ([KullaniciNo] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------