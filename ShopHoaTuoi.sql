USE [ShopHoaTuoi]
GO
/****** Object:  Table [dbo].[CT_KHO]    Script Date: 25-12-2023 3:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_KHO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[makho] [int] NULL,
	[mahoa] [int] NULL,
	[soluong] [int] NULL,
 CONSTRAINT [PK_CT_KHO] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PHIEUNHAPHOA]    Script Date: 25-12-2023 3:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PHIEUNHAPHOA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mapnh] [int] NULL,
	[mahoa] [int] NULL,
	[gianhap] [money] NULL,
	[soluong] [int] NULL,
	[tongtien] [money] NULL,
 CONSTRAINT [PK_CT_PHIEUNHAPHOA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHD]    Script Date: 25-12-2023 3:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mahd] [int] NULL,
	[mahoa] [int] NULL,
	[soluong] [int] NULL,
	[tongtien] [money] NULL,
 CONSTRAINT [PK_CTHD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHGIA]    Script Date: 25-12-2023 3:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHGIA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mahoa] [int] NOT NULL,
	[rating] [int] NOT NULL,
	[comment] [nvarchar](200) NOT NULL,
	[id_user] [int] NOT NULL,
	[ngaydang] [datetime] NOT NULL,
 CONSTRAINT [PK__DANHGIA__3213E83FD51CDF9B] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOA]    Script Date: 25-12-2023 3:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOA](
	[mahoa] [int] IDENTITY(1,1) NOT NULL,
	[maloai] [int] NOT NULL,
	[tenhoa] [nvarchar](100) NOT NULL,
	[anh] [nvarchar](200) NOT NULL,
	[giaban] [money] NOT NULL,
	[mota] [nvarchar](1500) NULL,
	[banchay] [bit] NOT NULL,
 CONSTRAINT [PK_HOA] PRIMARY KEY CLUSTERED 
(
	[mahoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 25-12-2023 3:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[mahd] [int] IDENTITY(1,1) NOT NULL,
	[ngaylap] [date] NOT NULL,
	[madonhang] [nvarchar](50) NULL,
	[thanhtoan] [int] NULL,
	[manv] [int] NULL,
	[makh] [int] NULL,
	[tinhtrang] [int] NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 25-12-2023 3:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[makh] [int] IDENTITY(1,1) NOT NULL,
	[tenkh] [nvarchar](100) NULL,
	[diachi] [nvarchar](150) NULL,
	[sdt] [varchar](11) NULL,
	[email] [varchar](80) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHO]    Script Date: 25-12-2023 3:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHO](
	[makho] [int] IDENTITY(1,1) NOT NULL,
	[tenkho] [nvarchar](100) NULL,
	[vitri] [nvarchar](150) NULL,
 CONSTRAINT [PK_KHO] PRIMARY KEY CLUSTERED 
(
	[makho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIHOA]    Script Date: 25-12-2023 3:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIHOA](
	[maloai] [int] IDENTITY(1,1) NOT NULL,
	[tenloai] [nvarchar](100) NULL,
 CONSTRAINT [PK_LOAIHOA] PRIMARY KEY CLUSTERED 
(
	[maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 25-12-2023 3:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[mancc] [int] IDENTITY(1,1) NOT NULL,
	[tenncc] [nvarchar](100) NULL,
	[diachi] [nvarchar](150) NULL,
	[sdt] [varchar](11) NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[mancc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 25-12-2023 3:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[manv] [int] IDENTITY(1,1) NOT NULL,
	[tennv] [nvarchar](100) NULL,
	[chucvu] [nvarchar](50) NULL,
	[diachi] [nvarchar](150) NULL,
	[sdt] [varchar](11) NULL,
	[ngaysinh] [date] NULL,
	[email] [varchar](80) NULL,
	[luong] [money] NULL,
	[tendangnhap] [nvarchar](50) NULL,
	[matkhau] [nvarchar](10) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUGIAOHOA]    Script Date: 25-12-2023 3:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUGIAOHOA](
	[mapgh] [int] IDENTITY(1,1) NOT NULL,
	[phigiaohoa] [money] NULL,
	[tongtien] [money] NULL,
	[ngaygiao] [date] NULL,
 CONSTRAINT [PK_PHIEUGIAOHOA] PRIMARY KEY CLUSTERED 
(
	[mapgh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAPHOA]    Script Date: 25-12-2023 3:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAPHOA](
	[mapnh] [int] IDENTITY(1,1) NOT NULL,
	[mancc] [int] NULL,
	[ngaylap] [date] NULL,
 CONSTRAINT [PK_PHIEUNHAPHOA] PRIMARY KEY CLUSTERED 
(
	[mapnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 25-12-2023 3:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[role] [nvarchar](50) NULL,
	[makh] [int] NULL,
 CONSTRAINT [PK_taikhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CT_KHO] ON 

INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (1, 1, 22, 50)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (2, 1, 23, 40)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (3, 1, 24, 30)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (4, 1, 25, 30)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (5, 1, 26, 10)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (6, 1, 27, 30)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (7, 1, 28, 20)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (8, 1, 29, 40)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (9, 1, 30, 50)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (10, 1, 31, 40)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (11, 1, 32, 60)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (12, 1, 33, 30)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (13, 1, 34, 20)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (14, 1, 35, 20)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (15, 1, 36, 50)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (16, 1, 37, 40)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (17, 1, 38, 30)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (18, 1, 39, 40)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (19, 1, 40, 10)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (20, 1, 41, 20)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (21, 1, 42, 10)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (22, 2, 43, 30)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (23, 2, 44, 20)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (24, 2, 45, 50)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (25, 2, 46, 40)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (26, 2, 47, 40)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (27, 2, 48, 20)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (28, 2, 49, 30)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (29, 2, 50, 20)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (30, 2, 51, 30)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (31, 2, 52, 40)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (32, 2, 53, 30)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (33, 2, 54, 10)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (34, 2, 55, 10)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (35, 2, 56, 10)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (36, 2, 57, 40)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (37, 2, 58, 20)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (38, 2, 59, 10)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (39, 2, 60, 30)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (40, 2, 61, 10)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (41, 2, 62, 5)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (42, 2, 63, 5)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (43, 2, 64, 10)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (44, 2, 65, 5)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (45, 2, 66, 3)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (46, 2, 67, 2)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (47, 3, 68, 5)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (48, 3, 69, 5)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (49, 3, 70, 10)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (50, 3, 71, 3)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (51, 3, 72, 10)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (52, 3, 73, 10)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (53, 3, 74, 5)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (54, 3, 75, 5)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (55, 3, 76, 20)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (56, 3, 77, 10)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (57, 3, 78, 20)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (58, 3, 79, 30)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (59, 1, 80, 40)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (60, 1, 81, 30)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (61, 1, 82, 40)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (62, 3, 83, 20)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (63, 3, 84, 30)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (64, 2, 85, 20)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (65, 2, 86, 10)
INSERT [dbo].[CT_KHO] ([id], [makho], [mahoa], [soluong]) VALUES (66, 2, 87, 10)
SET IDENTITY_INSERT [dbo].[CT_KHO] OFF
GO
SET IDENTITY_INSERT [dbo].[CT_PHIEUNHAPHOA] ON 

INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1018, 1041, 22, 620000.0000, 100, 62000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1078, 1041, 23, 500000.0000, 30, 15000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1139, 1041, 24, 500000.0000, 50, 25000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1140, 1041, 26, 600000.0000, 30, 18000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1141, 1041, 27, 350000.0000, 40, 14000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1142, 1041, 30, 300000.0000, 60, 18000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1143, 1041, 33, 350000.0000, 50, 17500000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1144, 1041, 40, 700000.0000, 30, 21000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1145, 1041, 31, 500000.0000, 60, 30000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1146, 1041, 28, 200000.0000, 50, 10000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1147, 1041, 25, 600000.0000, 70, 42000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1148, 1041, 32, 500000.0000, 50, 25000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1149, 1041, 29, 300000.0000, 50, 15000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1150, 1041, 34, 350000.0000, 50, 17500000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1151, 1041, 35, 300000.0000, 30, 9000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1152, 1041, 36, 400000.0000, 60, 24000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1153, 1042, 37, 500000.0000, 50, 25000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1154, 1042, 38, 500000.0000, 50, 25000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1155, 1042, 39, 800000.0000, 50, 40000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1156, 1042, 41, 600000.0000, 50, 30000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1157, 1042, 42, 500000.0000, 30, 15000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1158, 1042, 45, 600000.0000, 60, 36000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1159, 1042, 43, 600000.0000, 50, 30000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1160, 1042, 44, 600000.0000, 20, 12000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1161, 1042, 46, 750000.0000, 50, 37500000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1162, 1042, 47, 750000.0000, 50, 37500000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1163, 1042, 48, 950000.0000, 20, 19000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1164, 1042, 49, 850000.0000, 50, 42500000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1165, 1042, 50, 950000.0000, 20, 19000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1166, 1042, 51, 700000.0000, 50, 35000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1167, 1042, 52, 800000.0000, 50, 40000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1168, 1042, 53, 750000.0000, 50, 37500000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1169, 1043, 54, 900000.0000, 20, 18000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1170, 1043, 55, 850000.0000, 10, 8500000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1171, 1043, 56, 800000.0000, 10, 8000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1172, 1043, 57, 700000.0000, 50, 35000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1173, 1043, 58, 650000.0000, 50, 32500000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1174, 1043, 59, 850000.0000, 10, 8500000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1175, 1043, 60, 450000.0000, 40, 18000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1176, 1043, 61, 3900000.0000, 10, 39000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1177, 1043, 62, 3400000.0000, 10, 34000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1178, 1043, 63, 2900000.0000, 10, 29000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1179, 1043, 64, 4900000.0000, 10, 49000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1180, 1043, 65, 4900000.0000, 10, 49000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1181, 1043, 66, 4400000.0000, 5, 22000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1182, 1044, 67, 3900000.0000, 5, 19500000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1183, 1044, 68, 1400000.0000, 10, 14000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1184, 1044, 69, 3400000.0000, 10, 34000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1185, 1044, 70, 1400000.0000, 10, 14000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1186, 1044, 71, 1900000.0000, 10, 19000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1187, 1044, 72, 850000.0000, 20, 17000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1188, 1044, 73, 1400000.0000, 10, 14000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1189, 1044, 74, 1400000.0000, 10, 14000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1190, 1044, 75, 1900000.0000, 10, 19000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1191, 1044, 76, 750000.0000, 30, 22500000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1192, 1044, 77, 750000.0000, 20, 15000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1193, 1044, 78, 650000.0000, 20, 13000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1194, 1044, 79, 450000.0000, 30, 13500000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1195, 1041, 80, 150000.0000, 50, 7500000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1196, 1041, 81, 600000.0000, 30, 18000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1197, 1041, 82, 450000.0000, 40, 18000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1198, 1042, 83, 650000.0000, 20, 13000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1199, 1042, 84, 550000.0000, 30, 16500000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1200, 1042, 85, 700000.0000, 20, 14000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1201, 1044, 86, 1900000.0000, 10, 19000000.0000)
INSERT [dbo].[CT_PHIEUNHAPHOA] ([id], [mapnh], [mahoa], [gianhap], [soluong], [tongtien]) VALUES (1202, 1044, 87, 4400000.0000, 10, 44000000.0000)
SET IDENTITY_INSERT [dbo].[CT_PHIEUNHAPHOA] OFF
GO
SET IDENTITY_INSERT [dbo].[CTHD] ON 

INSERT [dbo].[CTHD] ([id], [mahd], [mahoa], [soluong], [tongtien]) VALUES (75, 55, 25, 1, 700000.0000)
INSERT [dbo].[CTHD] ([id], [mahd], [mahoa], [soluong], [tongtien]) VALUES (76, 55, 22, 1, 700000.0000)
INSERT [dbo].[CTHD] ([id], [mahd], [mahoa], [soluong], [tongtien]) VALUES (77, 56, 45, 1, 700000.0000)
INSERT [dbo].[CTHD] ([id], [mahd], [mahoa], [soluong], [tongtien]) VALUES (78, 56, 29, 1, 400000.0000)
INSERT [dbo].[CTHD] ([id], [mahd], [mahoa], [soluong], [tongtien]) VALUES (79, 57, 79, 1, 500000.0000)
INSERT [dbo].[CTHD] ([id], [mahd], [mahoa], [soluong], [tongtien]) VALUES (80, 57, 75, 1, 2000000.0000)
INSERT [dbo].[CTHD] ([id], [mahd], [mahoa], [soluong], [tongtien]) VALUES (81, 58, 34, 1, 450000.0000)
INSERT [dbo].[CTHD] ([id], [mahd], [mahoa], [soluong], [tongtien]) VALUES (82, 59, 71, 2, 4000000.0000)
SET IDENTITY_INSERT [dbo].[CTHD] OFF
GO
SET IDENTITY_INSERT [dbo].[DANHGIA] ON 

INSERT [dbo].[DANHGIA] ([id], [mahoa], [rating], [comment], [id_user], [ngaydang]) VALUES (23, 22, 5, N'Hoa rất đẹp và tươi', 6, CAST(N'2023-11-11T00:00:00.000' AS DateTime))
INSERT [dbo].[DANHGIA] ([id], [mahoa], [rating], [comment], [id_user], [ngaydang]) VALUES (24, 22, 4, N'Tuyệt vời', 2, CAST(N'2023-12-19T00:00:00.000' AS DateTime))
INSERT [dbo].[DANHGIA] ([id], [mahoa], [rating], [comment], [id_user], [ngaydang]) VALUES (25, 34, 5, N'Hoa đẹp lắm', 2, CAST(N'2023-12-24T15:13:08.287' AS DateTime))
SET IDENTITY_INSERT [dbo].[DANHGIA] OFF
GO
SET IDENTITY_INSERT [dbo].[HOA] ON 

INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (22, 9, N'Orchids Bouquet', N'/Uploads/images/ORCHIDS_BOUQUET.png', 700000.0000, N'Bó hoa "Orchids Bouquet" là một tác phẩm nghệ thuật tinh tế, tôn vinh vẻ đẹp quý phái và lãng mạn của hoa lan. Bắt đầu với những bông hoa lan độc đáo và tinh tế, bó hoa này truyền tải sự sang trọng và thanh lịch.

Bông hoa lan, với những cánh hoa mỏng manh và hương thơm tinh tế, tạo nên một không gian của sự quý phái và tinh tế. Màu sắc của hoa lan có thể đa dạng từ trắng thuần khiết, hồng nhạt đến tím thanh lịch, tùy thuộc vào sự lựa chọn và sáng tạo của người tạo ra bó hoa.

Để làm cho bó hoa trở nên phong cách và độc đáo, có thể kết hợp với các loại lá xanh như lá cây chuối hoặc lá măng tây. Sự kết hợp này tạo ra một diện mạo tự nhiên và hài hòa.

Lá xanh từ các loại cây lá được sắp xếp một cách tự nhiên, làm nền cho sự nổi bật của bông hoa lan và tạo nên một cảm giác tự nhiên và tươi mới.

Bó hoa "Orchids Bouquet" có thể được trang trí bằng một chiếc nơ màu tương tự hoặc dải ruy băng, tạo điểm nhấn tinh tế và quý phái cho tác phẩm nghệ thuật này.

Tổng thể, bó hoa "Orchids Bouquet" là biểu tượng của sự quý phái, thanh lịch và đẳng cấp, là lựa chọn hoàn hảo cho những dịp đặc biệt.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (23, 9, N'Pretty Girl', N'/Uploads/images/PRETTY_GIRL.png', 650000.0000, N'Bó hoa "Pretty Girl" là một tác phẩm nghệ thuật tinh tế và tươi sáng, được thiết kế đặc biệt để tôn vinh vẻ đẹp quyến rũ và tinh tế của người phụ nữ. Bó hoa này không chỉ là một sự kết hợp hài hòa của các loại hoa đẹp mắt mà còn là một biểu tượng của sự tinh tế và tình cảm.
Bó hoa có lẽ bắt đầu bằng những bông hoa hồng màu hồng nhạt, biểu tượng của sự nữ tính và tình yêu. Những bông hoa này mềm mại và quyến rũ, tạo nên một lớp lụa mịn bao quanh bó hoa. Màu hồng nhẹ nhàng tôn lên vẻ dịu dàng và duyên dáng.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (24, 9, N'Violettta', N'/Uploads/images/VIOLETTA.png', 600000.0000, N'Bó hoa "Violetta" là một tác phẩm nghệ thuật hoa độc đáo, đậm chất quý phái và đầy tinh tế. Bắt đầu từ trung tâm của bó hoa là những bông hoa violet, màu tím đậm, tạo nên điểm nhấn nổi bật và quyến rũ. Màu violet thường được liên kết với sự quý phái, tinh tế và tình cảm sâu sắc.

Các bông hoa violet được kết hợp cùng các loại hoa khác để tạo ra một bức tranh hài hòa và đẹp mắt. Có thể thấy những bông hoa như hồng, hoa cúc trắng hoặc hoa baby''s breath nhẹ nhàng, tạo nên sự đa dạng và phong cách cho bó hoa.

Lá xanh mát từ cây lá được chọn lọc cẩn thận, tạo nên lớp nền hoàn hảo để những bông hoa tím nổi bật. Các lá cây có thể được sắp xếp theo cách tự nhiên, tạo cảm giác như bó hoa vừa được thu hái từ một khu vườn tươi tốt.

Để hoàn thiện tác phẩm, bó hoa "Violetta" thường được trang trí bằng một chiếc nơ màu tương tự hoặc phụ kiện trang trí khác, thêm vào vẻ lịch lãm và sang trọng. Bó hoa này không chỉ là một biểu tượng của sự đẹp mắt, mà còn là một món quà ý nghĩa và tinh tế cho những người muốn thể hiện tình cảm của mình một cách độc đáo
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (25, 5, N'First Sight', N'/Uploads/images/first%20sight.png', 700000.0000, N'Bình hoa "First Sight" là một tác phẩm trang trí tinh tế và đẳng cấp, tạo nên một ấn tượng mạnh mẽ từ cái nhìn đầu tiên. Thiết kế này kết hợp giữa vẻ đẹp của các loại hoa và sự sang trọng của bình hoa, mang đến một không gian trang trí tràn ngập sự quyến rũ và lãng mạn.

Bình hoa "First Sight" sử dụng một loạt các hoa đa dạng, tùy thuộc vào sự sáng tạo của người thiết kế, có thể bao gồm hoa hồng, hoa mẫu đơn và các loại hoa khác. Mỗi bông hoa được sắp xếp một cách tự nhiên và hài hòa, tạo nên một cấu trúc tinh tế và độc đáo.

Màu sắc của bình hoa thường phản ánh sự tinh tế và sang trọng. Có thể sử dụng màu trắng, đỏ, và một chút màu xanh lá cây để tạo ra sự cân bằng và sự hòa quyện.

Bình hoa thường được đặt trong một lọ hoa đặc biệt, có thể là stoneware, pha lê hoặc thủy tinh sang trọng. Lựa chọn vật liệu của lọ hoa thường phản ánh gu thẩm mỹ và phong cách của người tạo ra tác phẩm.

Tổng thể, bình hoa "First Sight" là biểu tượng của sự lãng mạn và tinh tế, làm cho không gian trở nên ấm áp và sang trọng từ cái nhìn đầu tiên.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (26, 5, N'Just For The Best', N'/Uploads/images/JUST%20FOR%20THE%20BEST.png', 750000.0000, N'Bình hoa "Just for the Best" là một tác phẩm trang trí tinh tế và độc đáo, được thiết kế đặc biệt để tôn vinh và chúc mừng những người tốt nhất trong cuộc sống. Thiết kế này không chỉ mang lại vẻ đẹp của hoa, mà còn truyền tải thông điệp sự đặc biệt và quý phái.

Bình hoa này sử dụng một loạt các loại hoa chọn lọc, có thể bao gồm hoa hồng, hoa lily, hoa cúc, và các loại hoa phụ khác. Mỗi bông hoa được sắp xếp một cách tự nhiên và tinh tế, tạo nên một cấu trúc hài hòa và độc đáo.

Màu sắc của bình hoa "Just for the Best" thường là sự kết hợp tinh tế giữa các gam màu như trắng, hồng nhạt, và một chút màu xanh lá cây. Sự chọn lựa của màu sắc thường phản ánh sự sang trọng và tinh tế.

Bình hoa thường được đặt trong một lọ hoa đặc biệt, có thể là thủy tinh mờ, gốm sứ, hoặc các vật liệu sang trọng khác, tạo nên sự hiện đại và quý phái cho tác phẩm.

Tổng thể, bình hoa "Just for the Best" không chỉ là biểu tượng của sự đẳng cấp và quý phái, mà còn là một biểu hiện của sự chân thành và tôn trọng đối với những người xuất sắc nhất trong cuộc sống.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (27, 9, N'Multicolored', N'/Uploads/images/Multicolored.png', 400000.0000, N'Bó hoa "Multicolored" là một tác phẩm nghệ thuật độc đáo, kết hợp sự tươi tắn và phóng khoáng của nhiều màu sắc khác nhau. Bó hoa này không chỉ là biểu tượng của sự đa dạng mà còn là một cách sáng tạo để thể hiện cái đẹp độc đáo và sáng tạo của nghệ thuật cắm hoa.

Bắt đầu với một sự pha trộn hài hòa của nhiều loại hoa, mỗi bông hoa mang theo một màu sắc riêng biệt, tạo nên một môzaic màu sắc độc đáo. Có thể bao gồm các loại hoa như hồng, cúc, hoa hướng dương, hoa lily, hoặc hoa daisy, tùy thuộc vào sự sáng tạo của người tạo ra bó hoa.

Mỗi bông hoa đại diện cho một gam màu riêng, từ màu hồng nồng, trắng, tím, cho đến các màu pastel nhẹ nhàng. Sự kết hợp này không chỉ tạo ra một bức tranh màu sắc tươi mới mà còn tạo ra cảm giác hạnh phúc và phóng khoáng.

Lá xanh từ các loại cây lá như lá chuối, lá dừa, hoặc lá măng tây có thể được sử dụng để tăng thêm vẻ tự nhiên và sinh động cho bó hoa.

Bó hoa "Multicolored" có thể được trang trí bằng một chiếc nơ đa màu sắc hoặc dải ruy băng, tạo nên một điểm nhấn vui tươi và nổi bật.

Tổng thể, bó hoa "Multicolored" là một tác phẩm nghệ thuật sôi động, phản ánh sự tươi mới và niềm vui của đời sống.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (28, 9, N'Coral Peonies', N'/Uploads/images/Coral%20Peonies.png', 350000.0000, N'Bó hoa "Coral Peonies" là một tác phẩm nghệ thuật tinh tế, tôn vinh vẻ đẹp tươi tắn và sang trọng của hoa peony màu san hô. Bắt đầu với những bông hoa peony màu san hô tươi sáng, bó hoa này mang đến một cảm giác tươi mới và lãng mạn.

Các bông hoa peony màu san hô thường to lớn và đầy hình thù, tạo nên một lớp lụa đặc sắc và quyến rũ. Màu san hô nhẹ nhàng và ấm áp, tạo nên một không gian ấm cúng và dễ chịu.

Để làm cho bó hoa trở nên phong cách và độc đáo hơn, có thể kết hợp với các loại hoa khác như hoa cúc trắng hoặc hoa baby''s breath nhẹ nhàng. Sự kết hợp này tạo ra một hiệu ứng tương phản tinh tế và đẹp mắt.

Lá xanh mát từ cây lá được sắp xếp một cách tự nhiên, tạo nên một nền tố hoàn hảo để bộc lộ vẻ đẹp của bông hoa peony.

Bó hoa "Coral Peonies" có thể được trang trí bằng một chiếc nơ màu tương tự hoặc dải ruy băng, tăng thêm vẻ sang trọng và quý phái cho tác phẩm nghệ thuật này.

Tổng thể, bó hoa "Coral Peonies" là biểu tượng của sự tinh tế và đẹp mắt, là một lựa chọn hoàn hảo để làm quà tặng cho những dịp quan trọng.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (29, 9, N'Honey Rose', N'/Uploads/images/Honey%20Rose.png', 400000.0000, N'Bó hoa "Honey Rose" là một tác phẩm nghệ thuật tuyệt vời, kết hợp giữa vẻ quý phái của màu vàng mật ong và sự tinh tế của hoa hồng. Bắt đầu với những bông hoa hồng màu vàng nhẹ nhàng, bó hoa này tỏa sáng với sự ấm áp và quyến rũ.

Những bông hoa hồng màu vàng mật ong được sắp xếp một cách cân đối và tự nhiên, tạo nên một hiệu ứng lạ mắt và sang trọng. Màu vàng nhẹ mang đến cảm giác ấm áp và tươi mới, tạo nên một không gian thoải mái và yên bình.
 Sự kết hợp này không chỉ tạo nên một bức tranh hoa tươi mới mà còn làm nổi bật vẻ đẹp của hoa hồng màu vàng.
 Bó hoa có thể được trang trí bằng một chiếc nơ màu vàng nhẹ hoặc dải ruy băng, tạo nên điểm nhấn tinh tế và quyến rũ.

Bó hoa "Honey Rose" không chỉ là biểu tượng của sự ấm áp mà còn là một tác phẩm nghệ thuật đẹp mắt, thích hợp làm quà tặng cho những dịp đặc biệt.
', 1)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (30, 9, N'Floral Fantasy', N'/Uploads/images/FloralFantasy.png', 400000.0000, N'Bó hoa "Floral Fantasy" là một tác phẩm nghệ thuật tuyệt vời, tạo nên một kỳ quan màu sắc và hương thơm như một ước mơ hoa lệ. Tên gọi "Floral Fantasy" ngay lập tức đưa ta đến một thế giới của sự tưởng tượng và đẹp mơ mộng.

Bắt đầu với sự kết hợp độc đáo của nhiều loại hoa, từ hoa hồng đầy màu sắc, bó hoa này là một biểu tượng của sự đa dạng và phong cách. Mỗi loại hoa đều đại diện cho một vẻ đẹp và ý nghĩa riêng biệt.

Màu sắc tươi tắn và hương thơm dễ chịu của các loại hoa hòa quyện với nhau, tạo nên một không gian mơ hồ và phong cách.

Lá xanh từ các loại lá cây được sắp xếp một cách tự nhiên, làm nền cho sự nổi bật của bông hoa và tạo nên một cảm giác tự nhiên và tươi mới.

Bó hoa "Floral Fantasy" có thể được trang trí bằng một chiếc nơ màu tương tự hoặc dải ruy băng, tạo điểm nhấn tinh tế và quyến rũ.

Tổng thể, bó hoa "Floral Fantasy" không chỉ là một tác phẩm nghệ thuật đẹp mắt mà còn là một hành trình thăng hoa qua thế giới của sự tưởng tượng và vẻ đẹp hoa lá. 
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (31, 9, N'Cherish', N'/Uploads/images/Cherish.png', 500000.0000, N'Bó hoa "Cherish" là một tác phẩm nghệ thuật tinh tế và ý nghĩa, tạo nên một không gian ngọt ngào và quý phái. Tên gọi "Cherish" thường mang theo ý nghĩa của việc trân trọng và giữ gìn những khoảnh khắc quý giá.

Bắt đầu với những bông những bông hoa hồng đỏ đậm, bó hoa này tỏa sáng với sự dịu dàng và tinh tế. Màu sắc nhẹ nhàng này thường được liên kết với tình yêu và sự ấm áp.

Để tăng thêm vẻ phức tạp và phong cách, có thể thêm vào các loại hoa như hoa baby''s breath trắng hoặc hoa hướng dương màu vàng nhẹ. Sự kết hợp của những loại hoa này tạo ra một bức tranh hài hòa và quyến rũ.

Lá xanh mát từ các loại lá cây được sắp xếp một cách tinh tế, làm nền cho sự nổi bật của bông hoa và tạo nên một cảm giác tự nhiên và ấm cúng.

Bó hoa "Cherish" có thể được trang trí bằng một chiếc nơ màu trắng nhẹ hoặc dải ruy băng, tạo điểm nhấn tinh tế và vô cùng quyến rũ.

Tổng thể, bó hoa "Cherish" là biểu tượng của tình yêu, sự dịu dàng và sự trân trọng, là một món quà tuyệt vời cho những dịp đặc biệt.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (32, 9, N'Divine Red', N'/Uploads/images/DivineRed.png', 500000.0000, N'Bó hoa "Divine Red" là một tác phẩm nghệ thuật quyến rũ và trang trí bằng sự rực rỡ của màu đỏ đậm, tạo nên một ấn tượng mạnh mẽ và sang trọng. Tên gọi "Divine Red" ngay lập tức đưa người ta đến với hình ảnh của sự thiêng liêng và quý phái.

Bắt đầu với những bông hoa hồng đỏ đậm, bó hoa này truyền tải đầy đủ sức mạnh và đam mê. Màu đỏ rực rỡ không chỉ là biểu tượng của tình yêu mà còn là sự quý phái và sức sống.

Để tạo nên sự đa dạng và hấp dẫn, có thể thêm vào các loại hoa khác như hoa lily trắng để tạo nên sự tương phản tinh tế. Sự kết hợp của hoa đỏ và hoa trắng làm nổi bật vẻ đẹp tinh tế và thanh lịch của bó hoa.

Lá xanh mát từ các loại lá cây được sắp xếp một cách tự nhiên, tạo ra một nền tảng hoàn hảo để hoa đỏ nổi bật.

Bó hoa "Divine Red" có thể được trang trí bằng một chiếc nơ màu đen hoặc dải ruy băng sang trọng, tạo điểm nhấn vô cùng quyến rũ và trang trí cho tác phẩm nghệ thuật này.

Tổng thể, bó hoa "Divine Red" là biểu tượng của sức mạnh, đam mê và quý phái, là một lựa chọn hoàn hảo cho những dịp quan trọng và trang trí sang trọng.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (33, 9, N'Touch of Paradise', N'/Uploads/images/Touchofparadise.png', 450000.0000, N'Bó hoa "Touch of Paradise" là một tác phẩm nghệ thuật tinh tế, mang đến cảm giác của một chạm nhẹ từ thiên đàng. Tên gọi "Touch of Paradise" ngay lập tức tạo nên ấn tượng về vẻ đẹp nổi bật và sự tươi mới.

Bắt đầu với một sự kết hợp độc đáo của màu sắc, bó hoa này có thể chứa những bông hoa màu nhiệt đới như hoa hibiscus đỏ tươi, hoa lan vanda màu vàng hoặc hoa lily màu cam. Các màu sắc rực rỡ này tạo nên một không khí của thiên đàng và vùng đất hứa.

Để tăng thêm vẻ phong cách và tinh tế, có thể thêm vào các loại lá xanh như lá chuối hoặc lá măng tây. Sự kết hợp của hoa và lá tạo nên một cảm giác tự nhiên và hòa quyện.

Bó hoa "Touch of Paradise" có thể được trang trí bằng một chiếc nơ màu tương tự hoặc dải ruy băng, tạo điểm nhấn tinh tế và vô cùng quyến rũ.

Tổng thể, bó hoa "Touch of Paradise" là một biểu tượng của sự tươi mới, sôi động và ngập tràn năng lượng tích cực, như một "chạm nhẹ từ thiên đàng" mang đến cho người nhận cảm giác của một ốc đảo nghỉ dưỡng.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (34, 9, N'Resplendence', N'/Uploads/images/ResplendenceFlowerBouquet.png', 450000.0000, N'Bó hoa "Resplendence" là một tác phẩm nghệ thuật độc đáo và quý phái, nổi bật với vẻ đẹp lộng lẫy và sang trọng. Tên gọi "Resplendence" chính là điểm nhấn cho sự rạng ngời và quý phái của bó hoa này.

Bắt đầu với những bông hoa hồng màu đỏ đậm, biểu tượng của tình yêu đam mê và sự nồng nàn. Sự đậm chất quý phái của màu đỏ tương phản hoàn hảo với các màu sắc khác, tạo nên một sự kết hợp lôi cuốn và sang trọng.

Bên cạnh đó, bó hoa có thể kết hợp nhiều loại hoa khác như hoa cẩm tú cầu, hoa hồng trắng và lá táo để tăng thêm sự đa dạng và đẳng cấp. Mỗi loại hoa đều đại diện cho một nét đẹp riêng biệt, tạo nên một bức tranh hoa hài hòa và quyến rũ.

Lá xanh mát từ cây lá được sắp xếp một cách tự nhiên, tạo nên lớp nền hoàn hảo để bộc lộ vẻ đẹp của bông hoa.

Bó hoa "Resplendence" có thể được trang trí bằng một chiếc nơ hoặc dải ruy băng sang trọng, tăng thêm vẻ quý phái và trang trí cho tác phẩm nghệ thuật này.

Tổng thể, bó hoa "Resplendence" không chỉ là một biểu tượng của tình yêu mà còn là một tác phẩm nghệ thuật quý tộc và rực rỡ.
', 1)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (35, 9, N'You''re My Rainbow', N'/Uploads/images/You''reMyRainbow.png', 400000.0000, N'Bó hoa "You''re My Rainbow" là một tác phẩm nghệ thuật vô cùng tươi sáng và lôi cuốn, như một cơn mưa sau cơn mưa kết hợp với sự lung linh của cầu vồng. Bắt đầu với sự pha trộn độc đáo của nhiều màu sắc, bó hoa này như một biểu tượng của sự vui tươi và niềm hạnh phúc.

Các bông hoa baby nhiều màu sắc tạo ra một hiệu ứng màu sắc rực rỡ và đa dạng. Sự hòa quyện của các gam màu này tạo ra cảm giác hài hòa và sống động, như một bức tranh màu sắc tự nhiên.

Loại hoa cũng có thể đa dạng, tùy thuộc vào sự sáng tạo và ưa thích cá nhân của người tạo ra bó hoa. Các loại hoa này khi kết hợp với nhau, tạo nên một diện mạo độc đáo và vô cùng sinh động, được sắp xếp một cách tự nhiên, tạo nên nền cho sự nổi bật của bông hoa và màu sắc.

Bó hoa "You''re My Rainbow" có thể được trang trí bằng một chiếc nơ cầu vồng hoặc dải ruy băng nhiều màu, tạo điểm nhấn tinh tế và vô cùng lôi cuốn.

Tổng thể, bó hoa "You''re My Rainbow" là biểu tượng của niềm vui, sự lạc quan và tình cảm màu sắc.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (36, 9, N'Everlasting Love', N'/Uploads/images/EverlastingLove.png', 500000.0000, N'
Bó hoa "Everlasting Love" là một tác phẩm nghệ thuật tuyệt vời, chứa đựng ý nghĩa sâu sắc và tình cảm với sự kết hợp của những bông hoa đặc biệt và màu sắc tinh tế. Bó hoa này không chỉ là một biểu tượng của tình yêu vĩnh cửu mà còn là một diễn đạt của sự quý phái và lâu dài.

Bắt đầu với những bông hoa hồng màu đỏ đậm, biểu tượng của tình yêu đam mê và sự nồng nàn. Những bông hoa này thường mang theo hương thơm dễ chịu, tạo nên không gian ấm áp và gần gũi.

Để thể hiện tính lâu dài, bó hoa có thể bao gồm cả các loại hoa khác như hoa lily trắng, biểu tượng của sự thuần khiết và thanh khiết. Màu trắng nhẹ nhàng cùng với màu đỏ tạo nên sự cân bằng hoàn hảo.

Các loại lá xanh mát được sắp xếp tự nhiên, làm nền cho sự nổi bật của bông hoa, đồng thời tăng thêm vẻ tươi mới và sinh động.

Bó hoa "Everlasting Love" có thể được trang trí bằng một chiếc nơ đẹp mắt hoặc dải ruy băng, tăng thêm vẻ quý phái và trang trí cho tác phẩm nghệ thuật này.

Tổng thể, bó hoa "Everlasting Love" không chỉ là một biểu tượng của tình yêu vĩnh cửu mà còn là một tác phẩm nghệ thuật đẹp mắt và trang trí tinh tế.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (37, 5, N'Sympathy', N'/Uploads/images/SYMPATHY.png', 600000.0000, N'Bình hoa "Sympathy" màu trắng là một tác phẩm trang trí trang nhã và tình cảm, được thiết kế đặc biệt để diễn đạt sự chia sẻ và lòng chân thành trong những thời điểm buồn bã và khó khăn.

Bình hoa này thường sử dụng các loại hoa màu trắng, như hoa lily, hoa hồng trắng, và hoa cúc trắng. Màu trắng thường được xem là biểu tượng của sự thuần khiết và tinh khôi, làm tăng thêm vẻ trang nhã và tôn trọng trong tình huống chia buồn.

Các loại hoa được sắp xếp một cách tinh tế và hài hòa, tạo nên một bức tranh màu sắc trung tính nhưng tràn đầy ý nghĩa. Sự đơn giản và thanh lịch của bình hoa nhấn mạnh vào tâm trạng chân thành và tôn trọng.

Bình hoa "Sympathy" có thể được đặt trong một lọ hoa màu trắng hoặc màu nhạt, giúp tạo nên sự tập trung đối với vẻ đẹp tinh tế của các bông hoa.

Tổng thể, bình hoa "Sympathy" màu trắng là biểu tượng của lòng chia sẻ và tình cảm chân thành, mang lại sự an ủi và sự ấm áp trong những thời điểm khó khăn.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (38, 5, N'Spring Color', N'/Uploads/images/spring%20color.png', 650000.0000, N'Bình hoa "Spring Color" là một tác phẩm trang trí sôi động và đầy màu sắc, là biểu tượng của sự tươi mới và hân hoan của mùa xuân. Thiết kế này kết hợp giữa nhiều loại hoa và màu sắc khác nhau, tạo nên một bức tranh màu sắc tràn ngập năng lượng tích cực.

Bình hoa này có thể sử dụng nhiều loại hoa như hoa hồng, hoa cúc, hoa lily, hoa iris và các loại hoa mùa xuân khác. Mỗi loại hoa mang đến một gam màu độc đáo, từ hồng, vàng, tím, đến xanh mát, tạo nên sự đa dạng và hứng khởi.

Sự kết hợp tinh tế của các màu sắc tạo nên một cảm giác hài hòa và rực rỡ. Các bông hoa được sắp xếp một cách tự nhiên, giống như những bông hoa nở rộ trong mùa xuân, tạo nên sự tươi mới và tinh tế.

Bình hoa "Spring Color" thường được đặt trong một lọ hoa màu trắng hoặc trong suốt, giúp tôn lên vẻ độc đáo và sáng tạo của tác phẩm.

Tổng thể, bình hoa "Spring Color" là biểu tượng của sự hạnh phúc và sự đổi mới trong mùa xuân, làm tươi mới và làm đẹp không gian với sự hòa quyện của nhiều màu sắc.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (39, 5, N'Amalfi', N'/Uploads/images/Amalfi.png', 900000.0000, N'Bình hoa "Amalfi" là một tác phẩm trang trí vô cùng sang trọng và đẳng cấp, mang đến không khí của sự quý phái và hương vị nghệ thuật nổi tiếng của bờ biển Amalfi ở Italy. Thiết kế này kết hợp giữa vẻ đẹp của các loại hoa và sự tinh tế của lọ hoa, tạo nên một tác phẩm trang trí lôi cuốn.

Bình hoa "Amalfi" sử dụng các loại hoa chọn lọc, có thể bao gồm hoa hồng, hoa lily, hoa cúc và các loại hoa mùa xuân khác. Mỗi bông hoa được sắp xếp một cách cân đối và tinh tế, tạo nên một cấu trúc hài hòa và đẹp mắt.

Màu sắc của bình hoa "Amalfi" thường là sự kết hợp giữa trắng, hồng nhạt và một chút màu xanh lá cây nhẹ. Sự chọn lựa màu sắc tinh tế này tạo nên một diện mạo sang trọng và tràn đầy nghệ thuật.

Lọ hoa thường được chọn lựa với chất liệu cao cấp như pha lê, thủy tinh mờ hoặc gốm sứ, tạo nên vẻ quý phái và độc đáo cho bình hoa.

Tổng thể, bình hoa "Amalfi" là một biểu tượng của sự lãng mạn và sang trọng, làm cho không gian trở nên tinh tế và đẳng cấp.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (40, 5, N'Cosmo', N'/Uploads/images/Cosmo.png', 850000.0000, N'Bình hoa "Cosmo" là một tác phẩm trang trí hiện đại và phong cách, mang đến không gian của sự hiện đại và sự độc đáo. Thiết kế này chủ yếu tập trung vào vẻ ngoại lệ và màu sắc tươi mới, tạo ra một cảm giác hiện đại và sáng tạo.

Bình hoa "Cosmo" sử dụng các loại hoa và phụ liệu có thể bao gồm hoa lily, hoa cúc, và các loại hoa màu sắc như đỏ, hồng, và cam. Mỗi loại hoa được sắp xếp một cách tự nhiên và độc đáo, tạo nên một bức tranh màu sắc độc đáo và thu hút.

Màu sắc của bình hoa "Cosmo" thường là sự pha trộn hài hòa giữa các gam màu tươi sáng như đỏ tươi, cam rực rỡ và hồng nồng nàn. Sự đối lập giữa các màu sắc tạo nên một diện mạo độc đáo và nổi bật.
Lọ hoa thường được chọn lựa để phản ánh tính hiện đại và tinh tế, có thể là thủy tinh trong suốt, kim loại mạ vàng hoặc bất kỳ chất liệu hiện đại nào khác.

Tổng thể, bình hoa "Cosmo" là biểu tượng của sự hiện đại và sáng tạo, mang đến không gian một làn gió mới và năng động của mọi thứ đẹp mắt và hiện đại.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (41, 5, N'Flora', N'/Uploads/images/Flora.png', 700000.0000, N'Bình hoa "Flora" là một tác phẩm trang trí tinh tế và nữ tính, đặc trưng bởi sự tươi mới và vẻ đẹp của thế giới thực vật. Thiết kế này mang đến một cảm giác của sự tinh tế và tận hưởng vẻ đẹp tự nhiên.

Bình hoa "Flora" sử dụng các loại hoa chọn lọc, có thể bao gồm hoa hồng, hoa cúc, hoa lily, và các loại hoa mùa xuân khác. Mỗi bông hoa được sắp xếp một cách cân đối và tinh tế, tạo nên một bức tranh màu sắc quyến rũ và tươi mới.

Màu sắc của bình hoa "Flora" thường là sự kết hợp nhẹ nhàng giữa trắng, cam và xanh lá cây. Sự chọn lựa này tạo nên một vẻ ngoại lệ và nữ tính, phản ánh vẻ đẹp tự nhiên và tươi mới.

Lọ hoa thường được chọn lựa để tương thích với không gian, có thể là gốm sứ trắng, thủy tinh trong suốt hoặc thậm chí là lọ hoa màu pastel để tăng thêm sự nữ tính và tinh tế.

Tổng thể, bình hoa "Flora" là biểu tượng của sự tinh tế và sự tươi mới, mang lại không khí dễ chịu và tận hưởng vẻ đẹp của tự nhiên trong không gian sống của bạn.
', 1)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (42, 5, N'Peony Bud', N'/Uploads/images/Peony%20bud.png', 600000.0000, N'Bình hoa "Peony Bud" là một tác phẩm trang trí nổi bật, tôn vinh vẻ đẹp quyến rũ của hoa paeonia, hay còn gọi là hoa mẫu đơn. Thiết kế này chủ yếu tập trung vào sự tinh tế và sự thanh lịch của loại hoa đặc biệt này.

Bình hoa "Peony Bud" sử dụng những bông hoa mẫu đơn tươi mới, có thể có màu hồng, trắng, hoặc đỏ tùy thuộc vào sự lựa chọn cá nhân hoặc chủ đề trang trí. Các bông hoa được sắp xếp một cách tự nhiên và tinh tế, tạo nên một cấu trúc hoa vô cùng quyến rũ.

Màu sắc của bình hoa thường là sự kết hợp giữa các gam màu nhẹ nhàng như đỏ, cam sữa và một chút xanh lá cây. Sự chọn lựa này giúp tạo ra một không gian thanh lịch và dễ chịu.

Lọ hoa thường được chọn lựa với chất liệu như gốm sứ hoặc thủy tinh trong suốt để làm tôn lên vẻ đẹp tự nhiên và tinh tế của bình hoa.

Tổng thể, bình hoa "Peony Bud" là biểu tượng của sự tinh tế và vẻ đẹp dịu dàng, đem lại không gian trang trí với sự sang trọng và quyến rũ.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (43, 5, N'Happy Blue', N'/Uploads/images/happy%20blue.png', 700000.0000, N'Bình hoa "Happy Blue" là một tác phẩm trang trí nổi bật và tươi mới, mang lại không khí của niềm vui và sự tươi tắn với sự sáng tạo trong việc sử dụng gam màu xanh dương. Thiết kế này như một lời chúc mừng tươi vui, hòa quyện với vẻ đẹp của hoa và sự tươi mới của màu sắc.

Bình hoa "Happy Blue" sử dụng những loại hoa có màu xanh dương như hoa hortensia, hoa cúc, hoa hồng xanh dương, và có thể được kết hợp với các loại hoa màu trắng để tạo ra sự đối lập và sự pha trộn màu sắc hấp dẫn.

Màu sắc chủ đạo của bình hoa là xanh dương tươi sáng, tạo nên một cảm giác vui tươi và tràn đầy năng lượng tích cực. Sự độc đáo và sáng tạo trong việc kết hợp màu sắc giúp bình hoa trở thành một điểm nhấn nổi bật trong không gian trang trí.

Lọ hoa thường được chọn lựa để tương thích với màu sắc chủ đạo, có thể là màu trắng hoặc trong suốt, để làm nổi bật vẻ tươi mới và vui tươi của bình hoa.

Tổng thể, bình hoa "Happy Blue" không chỉ là biểu tượng của niềm vui mà còn là điểm nhấn tươi mới, làm cho không gian trở nên tràn đầy năng lượng tích cực.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (44, 5, N'Rose Pink', N'/Uploads/images/rose%20pink.png', 750000.0000, N'Bình hoa "Rose Pink" là một tác phẩm trang trí đẹp mắt, tôn vinh sự quý phái và đằm thắm của hoa hồng màu hồng. Thiết kế này tập trung vào vẻ đẹp nữ tính và lãng mạn của hoa hồng, mang lại một không gian trang trí ấm áp và tinh tế.

Bình hoa "Rose Pink" sử dụng hoa hồng màu hồng, có thể là các loại hoa hồng nhạt, hoặc hồng đậm tùy thuộc vào sự lựa chọn cá nhân hoặc chủ đề trang trí. Các bông hoa được sắp xếp một cách tự nhiên và tinh tế, tạo nên một cấu trúc hoa quyến rũ và tinh tế.

Màu sắc chủ đạo của bình hoa là hồng, với các gam màu từ nhạt đến đậm, tạo nên một bức tranh màu sắc lãng mạn và ấm áp. Sự độc đáo của hoa hồng làm cho bình hoa trở nên đặc biệt và thu hút.

Lọ hoa thường được chọn lựa để phản ánh tính nữ tính và tinh tế, có thể là màu trắng, hồng nhạt hoặc thủy tinh trong suốt, để làm nổi bật vẻ quý phái và dịu dàng của hoa hồng màu hồng.

Tổng thể, bình hoa "Rose Pink" là biểu tượng của sự lãng mạn và tinh tế, mang đến không gian trang trí với vẻ đẹp dịu dàng và quý phái của hoa hồng.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (45, 5, N'Yellow Roses', N'/Uploads/images/yellow%20roses.png', 700000.0000, N'Bình hoa "Yellow Roses" là một tác phẩm trang trí tràn đầy sức sống và tươi mới, với sự tập trung chính là những bông hoa hồng màu vàng. Thiết kế này tạo nên một không gian trang trí rạng ngời và lạc quan, là biểu tượng của sự hạnh phúc và sự tươi mới.

Bình hoa "Yellow Roses" chủ yếu sử dụng hoa hồng màu vàng, có thể là các loại hoa hồng có màu vàng tươi sáng. Sự sắp xếp của các bông hoa tạo nên một cấu trúc tự nhiên và tinh tế, phản ánh vẻ đẹp của hoa hồng màu vàng.

Màu sắc chủ đạo là màu vàng rực rỡ, tạo nên một bức tranh màu sắc tươi tắn và đẹp mắt. Màu vàng thường được kết hợp với các chi tiết xanh lá cây, tạo ra sự cân bằng và hài hòa, làm cho bình hoa trở nên sinh động và sống động.

Lọ hoa thường được chọn lựa để tôn lên vẻ đẹp rực rỡ của hoa, có thể là màu trắng hoặc trong suốt để làm nổi bật màu vàng tươi sáng.

Tổng thể, bình hoa "Yellow Roses" là biểu tượng của sự hạnh phúc và sự tươi mới, mang đến không gian trang trí với vẻ đẹp ấm áp và lạc quan của hoa hồng màu vàng.
', 1)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (46, 5, N'Peony', N'/Uploads/images/peony.png', 800000.0000, N'Bình hoa "Peony" là một tác phẩm trang trí quý phái và lôi cuốn, tôn vinh vẻ đẹp lãng mạn và tráng lệ của hoa mẫu đơn. Thiết kế này chủ yếu tập trung vào sự tinh tế và độ tinh khôi của loại hoa đặc biệt này.

Bình hoa "Peony" sử dụng hoa mẫu đơn có thể có màu hồng, trắng, đỏ, hoặc hồng nhạt, tùy thuộc vào sự lựa chọn cá nhân hoặc chủ đề trang trí. Sự sắp xếp của các bông hoa tạo nên một cấu trúc hài hòa và quyến rũ, thể hiện vẻ đẹp tự nhiên của hoa mẫu đơn.

Màu sắc chủ đạo của bình hoa thường là màu hồng nồng nàn đỏ. Sự quyến rũ của màu sắc kết hợp với hương thơm dịu dàng của hoa mẫu đơn tạo nên một không gian trang trí lãng mạn và sang trọng.

Lọ hoa thường được chọn lựa để tương thích với vẻ đẹp của hoa, có thể là màu trắng hoặc trong suốt, giúp làm nổi bật vẻ đẹp lôi cuốn của hoa mẫu đơn.

Tổng thể, bình hoa "Peony" là biểu tượng của sự quý phái và tinh tế, mang đến không gian trang trí với vẻ đẹp lãng mạn và sang trọng của hoa mẫu đơn.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (47, 5, N'Red Roses', N'/Uploads/images/red%20roses.png', 800000.0000, N'Bình hoa "Red Roses" là một tác phẩm trang trí truyền thống và đẳng cấp, tạo nên một không gian trang trí lãng mạn và quý phái với sự đặc trưng của hoa hồng màu đỏ đậm. Thiết kế này chủ yếu tập trung vào vẻ đẹp đặc sắc và lôi cuốn của hoa hồng màu đỏ.

Bình hoa "Red Roses" sử dụng hoa hồng màu đỏ, với các loại hoa hồng có thể thay đổi từ đậm đến nhạt. Sự sắp xếp tự nhiên của các bông hoa tạo nên một cấu trúc hài hòa và quyến rũ, làm nổi bật đẳng cấp và vẻ đẹp tuyệt vời của hoa hồng.

Màu sắc chủ đạo là đỏ đậm, tạo ra một bức tranh màu sắc gợi cảm và lôi cuốn. Sự đậm chất nồng nàn của màu đỏ tương phản với chi tiết xanh lá cây, tạo nên một vẻ đẹp quyến rũ và sang trọng.

Lọ hoa thường được chọn lựa với chất liệu và màu sắc giúp tôn lên vẻ đẹp của hoa, có thể là màu đen, màu vàng hoặc thủy tinh trong suốt để làm nổi bật vẻ đẹp nổi bật của hoa hồng màu đỏ.

Tổng thể, bình hoa "Red Roses" là biểu tượng của sự lãng mạn và đẳng cấp, làm cho không gian trang trí trở nên sang trọng và quyến rũ.
', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (48, 6, N'Color Sweet', N'/Uploads/images/color%20sweet.png', 1000000.0000, N'Hộp hoa chúc mừng khai trương "Color Sweet" với màu hồng và đỏ là một tác phẩm trang trí tinh tế và quyến rũ, tạo nên một không gian trang trí tràn ngập với vẻ đẹp nữ tính và đam mê. Thiết kế này không chỉ là một món quà chúc mừng tuyệt vời mà còn là một điểm nhấn trang trí vô cùng lãng mạn, mang lại niềm vui và sự hạnh phúc cho người nhận.', 1)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (49, 6, N'Lucky', N'/Uploads/images/lucky.png', 900000.0000, N'Hộp hoa chúc mừng khai trương "Lucky" với màu vàng là một biểu tượng của sự tươi mới, may mắn và thành công, tạo nên một không gian trang trí tràn ngập với sự ấm áp và tinh tế. Thiết kế này không chỉ là một món quà chúc mừng tuyệt vời mà còn là điểm nhấn trang trí tươi sáng, mang lại niềm vui và sự hạnh phúc cho người nhận.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (50, 6, N'Box Of Happiness', N'/Uploads/images/box%20of%20happiness.png', 1000000.0000, N'Hộp hoa "Box Of Happiness" là một biểu tượng của sự vui mừng và hạnh phúc, được tạo ra đặc biệt để chúc mừng sự thành công của người tốt nghiệp. Bức tranh hoa này không chỉ mang đến vẻ đẹp tươi mới mà còn làm tăng thêm không khí phấn khích và đặc biệt cho dịp lễ quan trọng này.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (51, 6, N'Orange Roses', N'/Uploads/images/orange%20roses.png', 750000.0000, N'Flower Box "Orange Roses" là một tác phẩm trang trí tuyệt vời, với sự tập trung chính là những bông hoa hồng màu cam tươi sáng. Thiết kế này tạo nên một không gian trang trí ấm cúng và rực rỡ, là biểu tượng của sự nhiệt đới và tươi mới.', 1)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (52, 6, N'Vendella X Hermosa Rose', N'/Uploads/images/Vendella%20X%20Hermosa%20Rose.png', 850000.0000, N'Hộp hoa "Vendella X Hermosa Rose" là một tuyệt phẩm nghệ thuật hoa độc đáo, được sáng tạo để chúc mừng sinh nhật và làm cho dịp này trở nên thêm phần đặc biệt. Kết hợp giữa vẻ quý phái của hoa hồng "Vendella" và vẻ quyến rũ của hoa hồng "Hermosa", Hộp hoa này không chỉ là một món quà tinh tế mà còn là biểu tượng của tình cảm lãng mạn và đẳng cấp.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (53, 7, N'Harmony', N'/Uploads/images/HARMONY.png', 800000.0000, N'Hoa cưới "Harmony" dành cho cô dâu là một tác phẩm trang trí tinh tế và lãng mạn, tạo nên một biểu tượng của sự hòa hợp và đẹp đẽ trong ngày trọng đại. Thiết kế này chủ yếu tập trung vào sự phối hợp và cân bằng giữa các loại hoa và màu sắc, đồng thời đảm bảo tôn lên vẻ đẹp và quyến rũ của cô dâu.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (54, 7, N'Purple Peony', N'/Uploads/images/purple%20peony.png', 950000.0000, N'Bó hoa cưới "Purple Peony" là một tác phẩm nghệ thuật tinh tế và tràn ngập vẻ đẹp quý phái. Với sự kết hợp tinh tế giữa màu tím của hoa mẫu đơn và sự sang trọng trong cách sắp xếp, bó hoa này trở thành điểm nhấn rực rỡ trong ngày cưới của cô dâu, đồng thời là biểu tượng của sự lãng mạn và quý phái.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (55, 7, N'Single Bloom', N'/Uploads/images/Single%20bloom.png', 900000.0000, N'Bó hoa cưới "Single Bloom" là một tác phẩm trang trí thanh lịch và tinh tế, nổi bật với vẻ đẹp đơn giản nhưng rất quyến rũ của một đóa hoa duy nhất. Thiết kế này mang lại không gian trang trí một nét đẹp tinh khôi, thuần khiết, và tràn ngập sự thanh lịch.', 1)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (56, 7, N'Color Of Love', N'/Uploads/images/color%20of%20love.png', 850000.0000, N'Bó hoa cưới "Color Of Love" là một tuyệt tác trang trí với sự hòa quyện đầy màu sắc, là biểu tượng tuyệt vời cho tình yêu đa dạng và đầy sắc màu. Thiết kế này là một sự kết hợp tinh tế giữa nhiều loại hoa và màu sắc khác nhau, tạo nên một cảm giác phong cách và sống động.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (57, 7, N'Pastel', N'/Uploads/images/pastel.png', 750000.0000, N'Bó hoa cưới "Pastel" là một biểu tượng của sự dịu dàng và tinh tế, tạo nên một không gian trang trí tràn ngập với vẻ đẹp nhẹ nhàng và mềm mại. Thiết kế này kết hợp giữa vẻ sang trọng của hoa và sự ấm áp của các gam màu pastel, tạo nên một bức tranh tinh tế cho ngày trọng đại.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (58, 7, N'Send To You', N'/Uploads/images/send%20to%20you.png', 700000.0000, N'Bó hoa cưới "Send to You" với những đóa tulip màu hồng là một tác phẩm trang trí lãng mạn và tươi mới, truyền đạt tình cảm của tình yêu và sự ngọt ngào. Thiết kế này không chỉ là một điểm nhấn trang trí tuyệt vời mà còn là biểu tượng của sự tinh tế và lãng mạn trong ngày cưới.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (59, 7, N'Sweet', N'/Uploads/images/sweet.png', 900000.0000, N'Bó hoa cưới " Sweet " là một tác phẩm trang trí dịu dàng và tinh tế, mang đến không gian trang trí với vẻ đẹp tinh khôi và nhẹ nhàng của hồng pastel. Thiết kế này là sự kết hợp hoàn hảo giữa sự quý phái của hoa hồng và vẻ dịu dàng của màu sắc pastel.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (60, 7, N'Baby Blue', N'/Uploads/images/baby%20blue.png', 500000.0000, N'Bó hoa cưới "Baby Blue" với những bông hoa bi xanh dương là một tác phẩm trang trí tinh tế và độc đáo, tạo nên một không gian trang trí tràn ngập với vẻ đẹp dịu dàng và thanh lịch. Thiết kế này không chỉ là một điểm nhấn trang trí nổi bật mà còn là biểu tượng của sự sang trọng và tinh tế trong ngày cưới.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (61, 10, N'Flower1', N'/Uploads/images/flower1.png', 4000000.0000, N'Hoa chúc mừng "Flower1" màu đỏ là một sự kết hợp tuyệt vời của vẻ đẹp và ý nghĩa, tạo ra một bức tranh trang trí tràn ngập với sự lôi cuốn và năng động. Với màu đỏ rực rỡ, "Flower1" không chỉ là biểu tượng của sự may mắn và thành công mà còn là nguồn cảm hứng đầy nhiệt huyết.', 1)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (62, 10, N'Flower3', N'/Uploads/images/Flower3.png', 3500000.0000, N'Hoa chúc mừng khai trương "Flower3" với màu hồng và gold là biểu tượng của sự tươi mới, phồn thịnh và sự thành công. Thiết kế này không chỉ là một món quà chúc mừng tuyệt vời mà còn là điểm nhấn trang trí tinh tế, mang lại niềm vui và lạc quan cho dịp khai trương.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (63, 10, N'Bouquet yellow', N'/Uploads/images/Bouquet%20yellow.png', 3000000.0000, N'Hoa chúc mừng khai trương "Bouquet Yellow" với màu hồng và vàng là một tác phẩm trang trí đẹp mắt và lôi cuốn, tạo nên một không gian trang trí tràn ngập sự ấm áp và tươi mới. Thiết kế này không chỉ là một món quà chúc mừng tuyệt vời mà còn là điểm nhấn trang trí vô cùng lãng mạn, mang lại niềm vui và sự hạnh phúc cho người nhận.', 1)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (64, 10, N'Bouquet Blue', N'/Uploads/images/Bouquet%20Blue.png', 5000000.0000, N'Hoa chúc mừng khai trương "Bouquet Blue" với màu xanh dương là một biểu tượng của sự tươi mới, thăng tiến và tình thần lạc quan, tạo nên một không gian trang trí tràn ngập với sự thanh lịch và sức sống. Thiết kế này không chỉ là một món quà chúc mừng tuyệt vời mà còn là điểm nhấn trang trí nổi bật, mang lại niềm vui và năng lượng tích cực cho người nhận.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (65, 10, N'Bouquet Red', N'/Uploads/images/Bouquet%20Red.png', 5000000.0000, N'Hoa chúc mừng khai trương "Bouquet Red" với màu đỏ là một biểu tượng của sự may mắn, nhiệt huyết và sự hứng khởi, tạo nên một không gian trang trí tràn ngập với năng lượng tích cực và sự quyến rũ. Thiết kế này không chỉ là một món quà chúc mừng tuyệt vời mà còn là điểm nhấn trang trí quý phái, mang lại niềm vui và sự lạc quan cho người nhận.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (66, 11, N'Condolence1', N'/Uploads/images/Condolence1.png', 4500000.0000, N'Hoa chia buồn "Condolence1" với màu trắng và xám là một biểu tượng của sự trang trọng, tôn trọng và lòng chia sẻ, tạo nên một không gian trang trí tràn ngập với vẻ đẹp nhẹ nhàng và đầy ý nghĩa. Thiết kế này không chỉ là một biểu tượng của lòng chia buồn mà còn là một cách để diễn đạt sự chia sẻ và đồng cảm với người nhận.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (67, 11, N'Condolence2', N'/Uploads/images/Condolence2.png', 4000000.0000, N'Hoa chia buồn "Condolence2" với hoa lan trắng là biểu tượng của sự thanh lịch, trang trọng và lòng chia sẻ sâu sắc, tạo nên một không gian trang trí tràn ngập với vẻ đẹp tinh tế và ý nghĩa. Thiết kế này không chỉ là một biểu tượng của sự chia buồn mà còn là một cách tinh tế để diễn đạt lòng đối xử nhạy cảm và đồng cảm với người nhận.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (68, 11, N'Wreath', N'/Uploads/images/Wreath2.png', 1500000.0000, N'Wreath2 với hoa trắng là một biểu tượng của sự tinh tế, trang nhã và lòng chia sẻ chân thành trong những thời điểm chia buồn. Thiết kế này tạo nên một vòng hoa trang trí tràn ngập với vẻ đẹp thanh lịch và ý nghĩa sâu sắc, không chỉ là một cách để diễn đạt lòng chia buồn mà còn là biểu tượng của sự tôn trọng và nhớ đến người đã khuất.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (69, 11, N'Wreath color', N'/Uploads/images/Wreath%20color.png', 3500000.0000, N'Wreath Color, với sự kết hợp của các loại hoa màu pastel, là một biểu tượng của sự nhẹ nhàng, tình cảm và lòng chia sẻ chân thành trong những thời điểm chia buồn. Thiết kế này tạo nên một vòng hoa trang trí tràn ngập với vẻ đẹp dịu dàng và ý nghĩa sâu sắc, không chỉ là một cách để diễn đạt lòng chia buồn mà còn là biểu tượng của sự tôn trọng và nhớ đến người đã khuất.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (70, 14, N'Peach and Purple', N'/Uploads/images/Peach%20and%20Purple.png', 1500000.0000, N'Hộp hoa "Peach and Purple" là một sự kết hợp tinh tế giữa vẻ đẹp dịu dàng của màu hồng đào (peach) và sự quý phái của màu tím (purple), tạo nên một bức tranh hoa trưng bày tinh tế, phù hợp để chúc mừng kỷ niệm và những dịp quan trọng.', 1)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (71, 14, N'Pink and white Box', N'/Uploads/images/Pink%20and%20white%20Box.png', 2000000.0000, N'Hộp hoa "Pink and White Box" là một tuyệt phẩm hoa tươi sáng và thanh lịch, được thiết kế đặc biệt để chúc mừng những kỷ niệm quan trọng trong cuộc sống. Màu hồng và trắng tinh khôi kết hợp tạo nên một diện mạo tinh tế và đẳng cấp, làm cho bó hoa trở thành một món quà đặc biệt.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (72, 14, N'My Sweet Sunshine', N'/Uploads/images/My%20Sweet%20Sunshine.png', 900000.0000, N'Hộp hoa "My Sweet Sunshine" là một tác phẩm nghệ thuật đầy sáng tạo, kết hợp giữa vẻ tươi mới của hoa hồng và sự ấm áp của hoa hướng dương, tạo nên một bức tranh hoa đẹp mắt để chúc mừng những kỷ niệm quan trọng.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (73, 14, N'Acrylic Collection', N'/Uploads/images/Acrylic%20Collection.png', 1500000.0000, N'Hộp hoa "Acrylic Collection" là một kiệt tác thú vị, nơi vẻ đẹp lãng mạn của hoa hồng màu hồng hòa quyện với sự hiện đại và sang trọng của vật liệu acrylic. Đây không chỉ là một món quà chúc mừng kỷ niệm, mà còn là một tuyệt tác trang trí độc đáo và nổi bật.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (74, 14, N'Grand 50 Rose', N'/Uploads/images/Grand%2050%20Rose.png', 1500000.0000, N'Hộp hoa "Grand 50 Rose" là một biểu tượng tuyệt vời của sự quý phái và đẳng cấp, đồng thời thể hiện một tình cảm mãnh liệt thông qua vẻ đẹp tinh tế của 50 đóa hoa hồng pastel. Với hình dạng hình trái tim, bức tranh hoa tinh khôi và lãng mạn được tạo ra để chúc mừng những kỷ niệm đặc biệt.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (75, 13, N'Graduation Flowers', N'/Uploads/images/Graduation%20Flowers.png', 2000000.0000, N'Hộp hoa "Graduation Flowers" là biểu tượng tuyệt vời để chúc mừng bước ngoặt quan trọng trong cuộc đời - ngày tốt nghiệp. Bức tranh hoa này không chỉ mang đến sự tươi mới và phấn khích mà còn là sự biểu tượng của sự đạt được và thành công.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (76, 13, N'Soap Flowers Crystal Ball', N'/Uploads/images/Soap%20Flowers%20Crystal%20Ball.png', 800000.0000, N'Bó hoa "Soap Flowers Crystal Ball" là một sự kết hợp tuyệt vời giữa vẻ đẹp tươi mới của hoa hướng dương và sự độc đáo của hoa làm từ xà phòng. Đây không chỉ là một biểu tượng của sự chúc mừng tốt nghiệp mà còn là một tác phẩm nghệ thuật độc đáo và lôi cuốn.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (77, 13, N'Blue Eternity', N'/Uploads/images/Blue%20Eternity.PNG', 800000.0000, N'Bó hoa "Blue Eternity" là một biểu tượng tuyệt vời để chúc mừng bước ngoặt quan trọng trong cuộc đời - ngày tốt nghiệp. Sự kết hợp độc đáo của hoa hướng dương và gam màu xanh biển trong bó hoa này tạo nên một tác phẩm nghệ thuật tinh tế và độc đáo.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (78, 13, N'Beary Sunny Graduation', N'/Uploads/images/Beary%20Sunny%20Graduation.PNG', 700000.0000, N'Bó hoa "Beary Sunny Graduation" là một tác phẩm độc đáo và ý nghĩa, kết hợp giữa sự tươi mới của hoa hướng dương và sự đáng yêu của chú gấu bông. Đây không chỉ là một biểu tượng của sự chúc mừng tốt nghiệp mà còn là một món quà đáng nhớ và ngọt ngào.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (79, 13, N'Cutest You', N'/Uploads/images/Cutest%20You.png', 500000.0000, N'Bó hoa chúc mừng tốt nghiệp với hoa baby trắng mang tên "Cutest You" là một tác phẩm tinh tế và dễ thương, thích hợp để gửi đến những người yêu quý đã đạt được thành công trong hành trình học tập của mình.', 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (80, 12, N'Blue Point Juniper Noel', N'/Uploads/images/Blue_Point_Juniper_Noel.png', 200000.0000, NULL, 1)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (81, 12, N'Fresh Christmas', N'/Uploads/images/Fresh_Christmas.png', 650000.0000, NULL, 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (82, 12, N'Christmas Sweet', N'/Uploads/images/Christmas_Sweet.png', 500000.0000, NULL, 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (83, 12, N'Christmas Eve', N'/Uploads/images/Christmas%20Eve.png', 700000.0000, NULL, 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (84, 12, N'Cozy Christmas', N'/Uploads/images/cozy-christmas.jpg', 600000.0000, NULL, 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (85, 12, N'Classic Christmas Hatbox', N'/Uploads/images/CLASSIC_CHRISTMAS_HATBOX.png', 750000.0000, NULL, 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (86, 11, N'Wreath blue', N'/Uploads/images/Wreath%20blue.png', 2000000.0000, NULL, 0)
INSERT [dbo].[HOA] ([mahoa], [maloai], [tenhoa], [anh], [giaban], [mota], [banchay]) VALUES (87, 11, N'Condolence3', N'/Uploads/images/Condolence3.png', 4500000.0000, NULL, 0)
SET IDENTITY_INSERT [dbo].[HOA] OFF
GO
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([mahd], [ngaylap], [madonhang], [thanhtoan], [manv], [makh], [tinhtrang]) VALUES (55, CAST(N'2023-12-22' AS Date), N'DH0202', 1, NULL, 44, 4)
INSERT [dbo].[HOADON] ([mahd], [ngaylap], [madonhang], [thanhtoan], [manv], [makh], [tinhtrang]) VALUES (56, CAST(N'2023-12-23' AS Date), N'DH8563', 2, NULL, 7, 4)
INSERT [dbo].[HOADON] ([mahd], [ngaylap], [madonhang], [thanhtoan], [manv], [makh], [tinhtrang]) VALUES (57, CAST(N'2023-12-23' AS Date), N'DH5281', 2, NULL, 7, 5)
INSERT [dbo].[HOADON] ([mahd], [ngaylap], [madonhang], [thanhtoan], [manv], [makh], [tinhtrang]) VALUES (58, CAST(N'2023-12-24' AS Date), N'DH1711', 1, NULL, 46, 1)
INSERT [dbo].[HOADON] ([mahd], [ngaylap], [madonhang], [thanhtoan], [manv], [makh], [tinhtrang]) VALUES (59, CAST(N'2023-12-24' AS Date), N'DH5624', 1, NULL, 47, 1)
SET IDENTITY_INSERT [dbo].[HOADON] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([makh], [tenkh], [diachi], [sdt], [email]) VALUES (7, N'Thơ', N'Quận 9', N'0394799954', N'thaithihoangthotv@gmail.com')
INSERT [dbo].[KHACHHANG] ([makh], [tenkh], [diachi], [sdt], [email]) VALUES (44, N'Nguyễn Văn A', N'Cà Mau', N'03957889', N'Nguyena@gmail.com')
INSERT [dbo].[KHACHHANG] ([makh], [tenkh], [diachi], [sdt], [email]) VALUES (45, N'Thái Hoàng Long', N'Bình Thạnh', N'0392866654', N'hoanglongth@gmail.com')
INSERT [dbo].[KHACHHANG] ([makh], [tenkh], [diachi], [sdt], [email]) VALUES (46, N'Nguyễn Văn A', N'Cà Mau', N'03957889', N'thaithihoangthotv@gmail.com')
INSERT [dbo].[KHACHHANG] ([makh], [tenkh], [diachi], [sdt], [email]) VALUES (47, N'Nguyễn Văn A', N'Cà Mau', N'03957889', N'Nguyena@gmail.com')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHO] ON 

INSERT [dbo].[KHO] ([makho], [tenkho], [vitri]) VALUES (1, N'kho Bình Tân', N'33 Đ. Số 5, Tân Tạo A, Bình Tân, Thành phố Hồ Chí Minh')
INSERT [dbo].[KHO] ([makho], [tenkho], [vitri]) VALUES (2, N'kho Thủ Đức', N'Kiot 57A2 Đại lộ 2, Phước Bình, Thủ Đức, Thành phố Hồ Chí Minh ')
INSERT [dbo].[KHO] ([makho], [tenkho], [vitri]) VALUES (3, N'kho Đà Lạt', N'5 Phan Đình Phùng, Phường 1, Thành phố Đà Lạt, Lâm Đồng')
SET IDENTITY_INSERT [dbo].[KHO] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAIHOA] ON 

INSERT [dbo].[LOAIHOA] ([maloai], [tenloai]) VALUES (5, N'Bình Hoa')
INSERT [dbo].[LOAIHOA] ([maloai], [tenloai]) VALUES (6, N'Flower Box')
INSERT [dbo].[LOAIHOA] ([maloai], [tenloai]) VALUES (7, N'Hoa Cưới')
INSERT [dbo].[LOAIHOA] ([maloai], [tenloai]) VALUES (9, N'Hoa Bó')
INSERT [dbo].[LOAIHOA] ([maloai], [tenloai]) VALUES (10, N'Hoa Khai Trương')
INSERT [dbo].[LOAIHOA] ([maloai], [tenloai]) VALUES (11, N'Hoa Chia Buồn')
INSERT [dbo].[LOAIHOA] ([maloai], [tenloai]) VALUES (12, N'Merry Christmas')
INSERT [dbo].[LOAIHOA] ([maloai], [tenloai]) VALUES (13, N'Graduation')
INSERT [dbo].[LOAIHOA] ([maloai], [tenloai]) VALUES (14, N'Anniversary')
SET IDENTITY_INSERT [dbo].[LOAIHOA] OFF
GO
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON 

INSERT [dbo].[NHACUNGCAP] ([mancc], [tenncc], [diachi], [sdt]) VALUES (1, N'Dalat Hasfarm', N'Đà lạt', N'0954166854')
INSERT [dbo].[NHACUNGCAP] ([mancc], [tenncc], [diachi], [sdt]) VALUES (2, N'Hoa tươi ', N'Thủ Đức', N'0394799954')
INSERT [dbo].[NHACUNGCAP] ([mancc], [tenncc], [diachi], [sdt]) VALUES (3, N'Shop Hoa Yêu Thương', N'Quận 3', N'0912377843')
INSERT [dbo].[NHACUNGCAP] ([mancc], [tenncc], [diachi], [sdt]) VALUES (4, N'Hoa tươi Hoa Mỹ', N'Gò Vấp', N'0128344568')
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
GO
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([manv], [tennv], [chucvu], [diachi], [sdt], [ngaysinh], [email], [luong], [tendangnhap], [matkhau]) VALUES (2, N'Bành Thị Chảnh', NULL, N'Quận 9', N'0329877654', CAST(N'2002-12-28' AS Date), N'chanhbanh@gmail.com', NULL, N'chanhbanh2023', N'123456')
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[PHIEUNHAPHOA] ON 

INSERT [dbo].[PHIEUNHAPHOA] ([mapnh], [mancc], [ngaylap]) VALUES (1041, 1, CAST(N'2023-04-19' AS Date))
INSERT [dbo].[PHIEUNHAPHOA] ([mapnh], [mancc], [ngaylap]) VALUES (1042, 2, CAST(N'2023-06-05' AS Date))
INSERT [dbo].[PHIEUNHAPHOA] ([mapnh], [mancc], [ngaylap]) VALUES (1043, 3, CAST(N'2022-09-12' AS Date))
INSERT [dbo].[PHIEUNHAPHOA] ([mapnh], [mancc], [ngaylap]) VALUES (1044, 4, CAST(N'2023-11-11' AS Date))
SET IDENTITY_INSERT [dbo].[PHIEUNHAPHOA] OFF
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON 

INSERT [dbo].[TAIKHOAN] ([id], [username], [password], [role], [makh]) VALUES (1, N'hoangthothai', N'123', N'admin', NULL)
INSERT [dbo].[TAIKHOAN] ([id], [username], [password], [role], [makh]) VALUES (2, N'thaithihoangthotv@gmail.com', N'1234', N'customer', 7)
INSERT [dbo].[TAIKHOAN] ([id], [username], [password], [role], [makh]) VALUES (3, N'admin', N'222', N'admin', NULL)
INSERT [dbo].[TAIKHOAN] ([id], [username], [password], [role], [makh]) VALUES (4, N'thienkim', N'222', N'customer', 44)
INSERT [dbo].[TAIKHOAN] ([id], [username], [password], [role], [makh]) VALUES (5, N'thitho', N'123', N'customer', NULL)
INSERT [dbo].[TAIKHOAN] ([id], [username], [password], [role], [makh]) VALUES (6, N'thoanglong', N'11112023', N'customer', 45)
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
GO
ALTER TABLE [dbo].[CT_KHO]  WITH CHECK ADD  CONSTRAINT [FK_CT_KHO_HOA] FOREIGN KEY([mahoa])
REFERENCES [dbo].[HOA] ([mahoa])
GO
ALTER TABLE [dbo].[CT_KHO] CHECK CONSTRAINT [FK_CT_KHO_HOA]
GO
ALTER TABLE [dbo].[CT_KHO]  WITH CHECK ADD  CONSTRAINT [FK_CT_KHO_KHO] FOREIGN KEY([makho])
REFERENCES [dbo].[KHO] ([makho])
GO
ALTER TABLE [dbo].[CT_KHO] CHECK CONSTRAINT [FK_CT_KHO_KHO]
GO
ALTER TABLE [dbo].[CT_PHIEUNHAPHOA]  WITH CHECK ADD  CONSTRAINT [FK_CT_PHIEUNHAPHOA_HOA] FOREIGN KEY([mahoa])
REFERENCES [dbo].[HOA] ([mahoa])
GO
ALTER TABLE [dbo].[CT_PHIEUNHAPHOA] CHECK CONSTRAINT [FK_CT_PHIEUNHAPHOA_HOA]
GO
ALTER TABLE [dbo].[CT_PHIEUNHAPHOA]  WITH CHECK ADD  CONSTRAINT [FK_CT_PHIEUNHAPHOA_PHIEUNHAPHOA] FOREIGN KEY([mapnh])
REFERENCES [dbo].[PHIEUNHAPHOA] ([mapnh])
GO
ALTER TABLE [dbo].[CT_PHIEUNHAPHOA] CHECK CONSTRAINT [FK_CT_PHIEUNHAPHOA_PHIEUNHAPHOA]
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HOA] FOREIGN KEY([mahoa])
REFERENCES [dbo].[HOA] ([mahoa])
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_HOA]
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HOADON] FOREIGN KEY([mahd])
REFERENCES [dbo].[HOADON] ([mahd])
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_HOADON]
GO
ALTER TABLE [dbo].[DANHGIA]  WITH CHECK ADD  CONSTRAINT [fk_hoa_dg] FOREIGN KEY([mahoa])
REFERENCES [dbo].[HOA] ([mahoa])
GO
ALTER TABLE [dbo].[DANHGIA] CHECK CONSTRAINT [fk_hoa_dg]
GO
ALTER TABLE [dbo].[DANHGIA]  WITH CHECK ADD  CONSTRAINT [fk_user_dg] FOREIGN KEY([id_user])
REFERENCES [dbo].[TAIKHOAN] ([id])
GO
ALTER TABLE [dbo].[DANHGIA] CHECK CONSTRAINT [fk_user_dg]
GO
ALTER TABLE [dbo].[HOA]  WITH CHECK ADD  CONSTRAINT [fk_hoa_loaihoa] FOREIGN KEY([maloai])
REFERENCES [dbo].[LOAIHOA] ([maloai])
GO
ALTER TABLE [dbo].[HOA] CHECK CONSTRAINT [fk_hoa_loaihoa]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([makh])
REFERENCES [dbo].[KHACHHANG] ([makh])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([manv])
REFERENCES [dbo].[NHANVIEN] ([manv])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[PHIEUNHAPHOA]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAPHOA_NHACUNGCAP] FOREIGN KEY([mancc])
REFERENCES [dbo].[NHACUNGCAP] ([mancc])
GO
ALTER TABLE [dbo].[PHIEUNHAPHOA] CHECK CONSTRAINT [FK_PHIEUNHAPHOA_NHACUNGCAP]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD FOREIGN KEY([makh])
REFERENCES [dbo].[KHACHHANG] ([makh])
GO
