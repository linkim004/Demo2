USE [master]
GO
/****** Object:  Database [SimpleProductDB]    Script Date: 6/7/2016 10:36:02 AM ******/
CREATE DATABASE [SimpleProductDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SimpleProductDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SimpleProductDB.mdf' , SIZE = 5012KB , MAXSIZE = 2048GB, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SimpleProductDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SimpleProductDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SimpleProductDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SimpleProductDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SimpleProductDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SimpleProductDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SimpleProductDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SimpleProductDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SimpleProductDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SimpleProductDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SimpleProductDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SimpleProductDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SimpleProductDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SimpleProductDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SimpleProductDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SimpleProductDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SimpleProductDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SimpleProductDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SimpleProductDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SimpleProductDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SimpleProductDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SimpleProductDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SimpleProductDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SimpleProductDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SimpleProductDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SimpleProductDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SimpleProductDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SimpleProductDB] SET RECOVERY FULL 
GO
ALTER DATABASE [SimpleProductDB] SET  MULTI_USER 
GO
ALTER DATABASE [SimpleProductDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SimpleProductDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SimpleProductDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SimpleProductDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SimpleProductDB', N'ON'
GO
USE [SimpleProductDB]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 6/7/2016 10:36:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](30) NOT NULL,
	[MoTa] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/7/2016 10:36:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Gia] [money] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MaLoai] [int] NOT NULL,
	[MoTa] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/7/2016 10:36:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](30) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Fullname] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoai], [Ten], [MoTa]) VALUES (1, N'Điện thoại', N'Các sản phẩm điện thoại')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [Ten], [MoTa]) VALUES (2, N'Laptop', N'Mô tả laptop')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [Ten], [MoTa]) VALUES (3, N'Phụ kiện', N'Phụ kiện cho điện thoại và laptop')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [Ten], [MoTa]) VALUES (36, N'Linh kiện', N'Linh kiện lap top')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [Ten], [MoTa]) VALUES (37, N'Linh kiện dt', N'Linh kiện điện thoại')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [Ten], [MoTa], [Gia], [SoLuong], [MaLoai]) VALUES (1, N'Samsung Galaxy J5', N'	5.25 inch (720 x 1280 pixels)', 45600000.0000, 5, 1)
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MoTa], [Gia], [SoLuong], [MaLoai]) VALUES (3, N'OPPO F1', N'Qualcomm MSM8939 Snapdragon 616', 5000000.0000, 2, 1)
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MoTa], [Gia], [SoLuong], [MaLoai]) VALUES (5, N'iPhone SE 16GB', N'4 inch(1136 x 640 pixels)', 11300000.0000, 3, 1)
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MoTa], [Gia], [SoLuong], [MaLoai]) VALUES (6, N'Macbook 12 inch 512GB MF865SA/A Bạc
', N'CPU: Intel core M, 1.1GHz (4MB L3 Cache,up to 2.6GHz)', 38999000.0000, 2, 2)
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MoTa], [Gia], [SoLuong], [MaLoai]) VALUES (7, N'Dell XPS 15 Core i7-6700HQ/8G/GTX 960M', N'Core i7-6700HQ/8G/GTX 960M', 35000000.0000, 4, 2)
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MoTa], [Gia], [SoLuong], [MaLoai]) VALUES (8, N'Pin sạc dự phòng 6000 mAh Xmobile XR02', N'Thời gian sạc:7 giờ đến 8 giờ', 4400000.0000, 19, 3)
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MoTa], [Gia], [SoLuong], [MaLoai]) VALUES (9, N'Thẻ nhớ 8Gb MicroSD Class 4', N'Thoải mái lưu trữ cho điện thoại, máy tính bảng .', 130000.0000, 20, 3)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [UserName], [Password], [RoleID], [Fullname]) VALUES (1, N'admin', N'admin', 1, N'Quản trị viên')
INSERT [dbo].[Users] ([ID], [UserName], [Password], [RoleID], [Fullname]) VALUES (2, N'thanhlt', N'123456', 2, N'Lê Tấn Thanh')
INSERT [dbo].[Users] ([ID], [UserName], [Password], [RoleID], [Fullname]) VALUES (3, N'sonnm', N'123123', 2, N'Nguyễn Minh Sơn')
INSERT [dbo].[Users] ([ID], [UserName], [Password], [RoleID], [Fullname]) VALUES (4, N'hoangnx', N'111222', 3, N'Nguyễn Xuân Hoàng')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[LoaiSanPham] ADD  CONSTRAINT [DF_LoaiSanPham_MoTa]  DEFAULT ('') FOR [MoTa]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_Table_1_ProductName]  DEFAULT ('') FOR [Ten]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_MoTa]  DEFAULT ('') FOR [MoTa]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuong]  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Fullname]  DEFAULT ('') FOR [Fullname]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSanPham] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [CK_SanPham_gia] CHECK  (([Gia]>=(0)))
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [CK_SanPham_gia]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [CK_SanPham_SoLuong] CHECK  (([SoLuong]>=(0)))
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [CK_SanPham_SoLuong]
GO
USE [master]
GO
ALTER DATABASE [SimpleProductDB] SET  READ_WRITE 
GO
