USE [master]
GO
/****** Object:  Database [WheelBase]    Script Date: 06.09.2023 14:01:56 ******/
CREATE DATABASE [WheelBase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WheelBase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WheelBase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WheelBase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WheelBase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WheelBase] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WheelBase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WheelBase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WheelBase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WheelBase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WheelBase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WheelBase] SET ARITHABORT OFF 
GO
ALTER DATABASE [WheelBase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WheelBase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WheelBase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WheelBase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WheelBase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WheelBase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WheelBase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WheelBase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WheelBase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WheelBase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WheelBase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WheelBase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WheelBase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WheelBase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WheelBase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WheelBase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WheelBase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WheelBase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WheelBase] SET  MULTI_USER 
GO
ALTER DATABASE [WheelBase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WheelBase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WheelBase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WheelBase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WheelBase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WheelBase] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WheelBase] SET QUERY_STORE = OFF
GO
USE [WheelBase]
GO
/****** Object:  Table [dbo].[Manufacturers]    Script Date: 06.09.2023 14:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturers](
	[id_manufacturer] [int] IDENTITY(1,1) NOT NULL,
	[NameManufacturer] [nvarchar](50) NULL,
 CONSTRAINT [PK_Manufacturers] PRIMARY KEY CLUSTERED 
(
	[id_manufacturer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 06.09.2023 14:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id_order] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[fk_Product] [int] NULL,
	[Amount] [int] NULL,
	[fk_Status] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 06.09.2023 14:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id_product] [int] IDENTITY(1,1) NOT NULL,
	[NameProduct] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Manufacturer] [int] NULL,
	[Price] [int] NULL,
	[Discount] [int] NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id_product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 06.09.2023 14:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[id_status] [int] IDENTITY(1,1) NOT NULL,
	[NameStatus] [nvarchar](max) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[id_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Manufacturers] ON 

INSERT [dbo].[Manufacturers] ([id_manufacturer], [NameManufacturer]) VALUES (1, N'Squirrel')
INSERT [dbo].[Manufacturers] ([id_manufacturer], [NameManufacturer]) VALUES (2, N'Panther')
INSERT [dbo].[Manufacturers] ([id_manufacturer], [NameManufacturer]) VALUES (3, N'Sea ​​Horse')
SET IDENTITY_INSERT [dbo].[Manufacturers] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id_order], [Date], [fk_Product], [Amount], [fk_Status]) VALUES (1, CAST(N'2023-05-14' AS Date), 1, 50, 1)
INSERT [dbo].[Orders] ([id_order], [Date], [fk_Product], [Amount], [fk_Status]) VALUES (2, CAST(N'2023-06-17' AS Date), 2, 15, 2)
INSERT [dbo].[Orders] ([id_order], [Date], [fk_Product], [Amount], [fk_Status]) VALUES (3, CAST(N'2022-10-02' AS Date), 3, 30, 3)
INSERT [dbo].[Orders] ([id_order], [Date], [fk_Product], [Amount], [fk_Status]) VALUES (4, CAST(N'2023-09-18' AS Date), 4, 60, 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id_product], [NameProduct], [Description], [Manufacturer], [Price], [Discount], [Photo]) VALUES (1, N'Шина', N'Летняя шина', 2, 7500, NULL, N'\WheelProgram\Resources\шина.jpeg')
INSERT [dbo].[Product] ([id_product], [NameProduct], [Description], [Manufacturer], [Price], [Discount], [Photo]) VALUES (2, N'Масло', N'Моторное', 2, 3000, 10, N'\WheelProgram\Resources\масло.jpg')
INSERT [dbo].[Product] ([id_product], [NameProduct], [Description], [Manufacturer], [Price], [Discount], [Photo]) VALUES (3, N'Двигатель', N'Одноцилиндровый двигатель', 2, 20000, NULL, N'\WheelProgram\Resources\двигатель.jpg')
INSERT [dbo].[Product] ([id_product], [NameProduct], [Description], [Manufacturer], [Price], [Discount], [Photo]) VALUES (4, N'Чехлы для сидений', N'Из крокодиловой кожи', 3, 4000, 15, N'\WheelProgram\Resources\чехол.jpg')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([id_status], [NameStatus]) VALUES (1, N'Новый')
INSERT [dbo].[Status] ([id_status], [NameStatus]) VALUES (2, N'В сборке')
INSERT [dbo].[Status] ([id_status], [NameStatus]) VALUES (3, N'На пункте выдачи')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Product] FOREIGN KEY([fk_Product])
REFERENCES [dbo].[Product] ([id_product])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Status] FOREIGN KEY([fk_Status])
REFERENCES [dbo].[Status] ([id_status])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Status]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturers] FOREIGN KEY([Manufacturer])
REFERENCES [dbo].[Manufacturers] ([id_manufacturer])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturers]
GO
USE [master]
GO
ALTER DATABASE [WheelBase] SET  READ_WRITE 
GO
