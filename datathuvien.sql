USE [dtthayson]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/27/2019 9:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[cauhoi] [nvarchar](100) NOT NULL,
	[traloi] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_CTHoaDon]    Script Date: 11/27/2019 9:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CTHoaDon](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Danhgiasanpham] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_CTHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_HoaDon]    Script Date: 11/27/2019 9:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NULL,
	[MaKH] [int] NULL,
	[Ngayban] [date] NULL,
 CONSTRAINT [PK_tbl_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_khachhang]    Script Date: 11/27/2019 9:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_khachhang](
	[maKH] [int] IDENTITY(1,1) NOT NULL,
	[First Name] [nvarchar](50) NULL,
	[Last Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nchar](12) NULL,
	[Yob] [int] NULL,
	[Gender] [bit] NULL,
 CONSTRAINT [PK_tbl_khachhang] PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_KhoHang]    Script Date: 11/27/2019 9:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KhoHang](
	[MaSP] [int] NOT NULL,
	[Soluong] [int] NULL,
 CONSTRAINT [PK_tbl_KhoHang] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_nhanvien]    Script Date: 11/27/2019 9:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_nhanvien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[First name] [nvarchar](50) NULL,
	[Last name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[YOB] [int] NULL,
	[Gender] [bit] NULL,
 CONSTRAINT [PK_tbl_nhanvien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_SanPham]    Script Date: 11/27/2019 9:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[Tensanpham] [nvarchar](50) NULL,
	[Dongia] [float] NULL,
 CONSTRAINT [PK_tbl_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [password], [cauhoi], [traloi]) VALUES (1, N'admin', N'1962026656160185351301320480154111117132155', N'ăn cơm chưa', N'17328972152346772831696912414695136170212')
INSERT [dbo].[Account] ([id], [username], [password], [cauhoi], [traloi]) VALUES (3, N'vankien', N'1962026656160185351301320480154111117132155', N'bao nhiêu tuổi', N'1522415583311481961171041232301610659132')
INSERT [dbo].[Account] ([id], [username], [password], [cauhoi], [traloi]) VALUES (20, N'hello', N'1962026656160185351301320480154111117132155', N'chao', N'hi')
INSERT [dbo].[Account] ([id], [username], [password], [cauhoi], [traloi]) VALUES (21, N'hung', N'2359616111396192204191109331341018023677201', N'ban ten gi?', N'kien')
INSERT [dbo].[Account] ([id], [username], [password], [cauhoi], [traloi]) VALUES (22, N'hao', N'1982408718410113214846658453255177250147212', N'chào', N'bạn')
INSERT [dbo].[Account] ([id], [username], [password], [cauhoi], [traloi]) VALUES (23, N'minhtam', N'3244185981728979115075721453575112', N'hello', N'hi')
INSERT [dbo].[Account] ([id], [username], [password], [cauhoi], [traloi]) VALUES (24, N'chao', N'1962026656160185351301320480154111117132155', N'đi chơi không', N'có')
INSERT [dbo].[Account] ([id], [username], [password], [cauhoi], [traloi]) VALUES (25, N'1', N'1962026656160185351301320480154111117132155', N'sad', N'22482642160227131598711521811711622919857')
SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[tbl_CTHoaDon] ([MaHD], [MaSP], [Soluong], [Danhgiasanpham]) VALUES (3, 1, 50, N'sản phẩm đúng mô tả')
INSERT [dbo].[tbl_CTHoaDon] ([MaHD], [MaSP], [Soluong], [Danhgiasanpham]) VALUES (4, 7, 20, N'tuyệt vời')
INSERT [dbo].[tbl_CTHoaDon] ([MaHD], [MaSP], [Soluong], [Danhgiasanpham]) VALUES (5, 2, 30, N'không có ý kiến')
INSERT [dbo].[tbl_CTHoaDon] ([MaHD], [MaSP], [Soluong], [Danhgiasanpham]) VALUES (6, 12, 5434, N'hay')
INSERT [dbo].[tbl_CTHoaDon] ([MaHD], [MaSP], [Soluong], [Danhgiasanpham]) VALUES (27, 5, 40, NULL)
INSERT [dbo].[tbl_CTHoaDon] ([MaHD], [MaSP], [Soluong], [Danhgiasanpham]) VALUES (32, 9, 300, NULL)
INSERT [dbo].[tbl_CTHoaDon] ([MaHD], [MaSP], [Soluong], [Danhgiasanpham]) VALUES (33, 1, 30, NULL)
INSERT [dbo].[tbl_CTHoaDon] ([MaHD], [MaSP], [Soluong], [Danhgiasanpham]) VALUES (35, 9, 12, NULL)
INSERT [dbo].[tbl_CTHoaDon] ([MaHD], [MaSP], [Soluong], [Danhgiasanpham]) VALUES (36, 3, 30, NULL)
INSERT [dbo].[tbl_CTHoaDon] ([MaHD], [MaSP], [Soluong], [Danhgiasanpham]) VALUES (37, 3, 12, NULL)
INSERT [dbo].[tbl_CTHoaDon] ([MaHD], [MaSP], [Soluong], [Danhgiasanpham]) VALUES (41, 9, 20, NULL)
INSERT [dbo].[tbl_CTHoaDon] ([MaHD], [MaSP], [Soluong], [Danhgiasanpham]) VALUES (42, 5, 12, NULL)
INSERT [dbo].[tbl_CTHoaDon] ([MaHD], [MaSP], [Soluong], [Danhgiasanpham]) VALUES (43, 2, 3, NULL)
INSERT [dbo].[tbl_CTHoaDon] ([MaHD], [MaSP], [Soluong], [Danhgiasanpham]) VALUES (44, 1, 20, NULL)
SET IDENTITY_INSERT [dbo].[tbl_HoaDon] ON 

INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (3, 1, 2, CAST(0x4E210B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (4, 2, 1, CAST(0x7A240B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (5, 1, 3, CAST(0xA93F0B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (6, 2, 4, CAST(0x6A3E0B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (15, 1, 2, CAST(0x49400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (16, 21, 1, CAST(0x49400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (17, 21, 1, CAST(0x26400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (18, 21, 1, CAST(0x26400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (19, 24, 2, CAST(0x4A400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (20, 24, 2, CAST(0x4A400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (21, 24, 2, CAST(0x4A400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (23, 1, 1, CAST(0x51400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (24, 1, 1, CAST(0x5B400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (25, 24, 1, CAST(0x5B400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (26, 1, 1, CAST(0x5B400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (27, 1, 1, CAST(0x5C400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (32, 2, 1, CAST(0x5E400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (33, 1, 1, CAST(0x5E400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (35, 1, 1, CAST(0x5F400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (36, 2, 1, CAST(0x5F400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (37, 2, 3, CAST(0x61400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (41, 2, 2, CAST(0x62400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (42, 1, 4, CAST(0x62400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (43, 21, 1, CAST(0x64400B00 AS Date))
INSERT [dbo].[tbl_HoaDon] ([MaHD], [MaNV], [MaKH], [Ngayban]) VALUES (44, 24, 1, CAST(0x6D400B00 AS Date))
SET IDENTITY_INSERT [dbo].[tbl_HoaDon] OFF
SET IDENTITY_INSERT [dbo].[tbl_khachhang] ON 

INSERT [dbo].[tbl_khachhang] ([maKH], [First Name], [Last Name], [Address], [Email], [Phone], [Yob], [Gender]) VALUES (1, N'Quốc', N'Ngọc', N'Hà Tĩnh', N'ngoca@gmail.com', N'0381759371  ', 1998, 1)
INSERT [dbo].[tbl_khachhang] ([maKH], [First Name], [Last Name], [Address], [Email], [Phone], [Yob], [Gender]) VALUES (2, N'Đức', N'Lương', N'Yên Thành', N'Luongd@gmail.com', N'0345235234  ', 1998, 1)
INSERT [dbo].[tbl_khachhang] ([maKH], [First Name], [Last Name], [Address], [Email], [Phone], [Yob], [Gender]) VALUES (3, N'Minh', N'Tâm', N'Vinh', N'Tamm@gmail.com', N'0385235135  ', 1996, 1)
INSERT [dbo].[tbl_khachhang] ([maKH], [First Name], [Last Name], [Address], [Email], [Phone], [Yob], [Gender]) VALUES (4, N'tý', N'tèo', N'nghệ An', N'Teot@gmail.com', N'0342553463  ', 2000, 0)
INSERT [dbo].[tbl_khachhang] ([maKH], [First Name], [Last Name], [Address], [Email], [Phone], [Yob], [Gender]) VALUES (6, N'hello', N'word', N'vinh', N'hello@gmail.com', N'0382392     ', 2019, 0)
SET IDENTITY_INSERT [dbo].[tbl_khachhang] OFF
INSERT [dbo].[tbl_KhoHang] ([MaSP], [Soluong]) VALUES (1, 460)
INSERT [dbo].[tbl_KhoHang] ([MaSP], [Soluong]) VALUES (2, 5340)
INSERT [dbo].[tbl_KhoHang] ([MaSP], [Soluong]) VALUES (4, 5345)
INSERT [dbo].[tbl_KhoHang] ([MaSP], [Soluong]) VALUES (5, 320)
INSERT [dbo].[tbl_KhoHang] ([MaSP], [Soluong]) VALUES (6, 7384)
INSERT [dbo].[tbl_KhoHang] ([MaSP], [Soluong]) VALUES (7, 342)
INSERT [dbo].[tbl_KhoHang] ([MaSP], [Soluong]) VALUES (8, 345)
INSERT [dbo].[tbl_KhoHang] ([MaSP], [Soluong]) VALUES (9, 234)
INSERT [dbo].[tbl_KhoHang] ([MaSP], [Soluong]) VALUES (11, 5346)
INSERT [dbo].[tbl_KhoHang] ([MaSP], [Soluong]) VALUES (12, 232)
SET IDENTITY_INSERT [dbo].[tbl_nhanvien] ON 

INSERT [dbo].[tbl_nhanvien] ([MaNV], [First name], [Last name], [Address], [Email], [Phone], [YOB], [Gender]) VALUES (1, N'Văn', N'Kiên', N'Nghệ An', N'kienvan@gmail.com', N'038424343', 1998, 1)
INSERT [dbo].[tbl_nhanvien] ([MaNV], [First name], [Last name], [Address], [Email], [Phone], [YOB], [Gender]) VALUES (2, N'duy', N'Huy', N'Nghệ An', N'Huyd@gmail.com', N'038424343', 1998, 0)
INSERT [dbo].[tbl_nhanvien] ([MaNV], [First name], [Last name], [Address], [Email], [Phone], [YOB], [Gender]) VALUES (21, N'duy123', N'Huy', N'Nghệ An', N'Huyd@gmail.com', N'038424343', 1998, 1)
INSERT [dbo].[tbl_nhanvien] ([MaNV], [First name], [Last name], [Address], [Email], [Phone], [YOB], [Gender]) VALUES (24, N'Thế', N'Cường', N'Nghệ An', N'banhk@gmail.com', N'038424343', 1998, 1)
SET IDENTITY_INSERT [dbo].[tbl_nhanvien] OFF
SET IDENTITY_INSERT [dbo].[tbl_SanPham] ON 

INSERT [dbo].[tbl_SanPham] ([MaSP], [Tensanpham], [Dongia]) VALUES (1, N'ổ cắm', 3000)
INSERT [dbo].[tbl_SanPham] ([MaSP], [Tensanpham], [Dongia]) VALUES (2, N'gỗ', 50000)
INSERT [dbo].[tbl_SanPham] ([MaSP], [Tensanpham], [Dongia]) VALUES (3, N'xi măng', 25000)
INSERT [dbo].[tbl_SanPham] ([MaSP], [Tensanpham], [Dongia]) VALUES (4, N'thép', 20000)
INSERT [dbo].[tbl_SanPham] ([MaSP], [Tensanpham], [Dongia]) VALUES (5, N'đinh', 2000)
INSERT [dbo].[tbl_SanPham] ([MaSP], [Tensanpham], [Dongia]) VALUES (6, N'ốc vít', 1500)
INSERT [dbo].[tbl_SanPham] ([MaSP], [Tensanpham], [Dongia]) VALUES (7, N'ống nhựa', 4000)
INSERT [dbo].[tbl_SanPham] ([MaSP], [Tensanpham], [Dongia]) VALUES (8, N'keo gián', 2000)
INSERT [dbo].[tbl_SanPham] ([MaSP], [Tensanpham], [Dongia]) VALUES (9, N'dây điện', 5000)
INSERT [dbo].[tbl_SanPham] ([MaSP], [Tensanpham], [Dongia]) VALUES (11, N'sắt', 45000)
INSERT [dbo].[tbl_SanPham] ([MaSP], [Tensanpham], [Dongia]) VALUES (12, N'đèn pin', 5000)
INSERT [dbo].[tbl_SanPham] ([MaSP], [Tensanpham], [Dongia]) VALUES (13, N'dây giun', 2000)
INSERT [dbo].[tbl_SanPham] ([MaSP], [Tensanpham], [Dongia]) VALUES (14, N'băng dính', 3000)
SET IDENTITY_INSERT [dbo].[tbl_SanPham] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Account__D1DDB569504A24D0]    Script Date: 11/27/2019 9:31:48 PM ******/
ALTER TABLE [dbo].[Account] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_CTHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CTHoaDon_tbl_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tbl_HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[tbl_CTHoaDon] CHECK CONSTRAINT [FK_tbl_CTHoaDon_tbl_HoaDon]
GO
ALTER TABLE [dbo].[tbl_CTHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CTHoaDon_tbl_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tbl_SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[tbl_CTHoaDon] CHECK CONSTRAINT [FK_tbl_CTHoaDon_tbl_SanPham]
GO
ALTER TABLE [dbo].[tbl_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDon_tbl_khachhang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tbl_khachhang] ([maKH])
GO
ALTER TABLE [dbo].[tbl_HoaDon] CHECK CONSTRAINT [FK_tbl_HoaDon_tbl_khachhang]
GO
ALTER TABLE [dbo].[tbl_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDon_tbl_nhanvien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tbl_nhanvien] ([MaNV])
GO
ALTER TABLE [dbo].[tbl_HoaDon] CHECK CONSTRAINT [FK_tbl_HoaDon_tbl_nhanvien]
GO
ALTER TABLE [dbo].[tbl_KhoHang]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KhoHang_tbl_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tbl_SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[tbl_KhoHang] CHECK CONSTRAINT [FK_tbl_KhoHang_tbl_SanPham]
GO
