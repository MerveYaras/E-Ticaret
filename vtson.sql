USE [eticaretson]
GO
/****** Object:  Table [dbo].[tblMarka]    Script Date: 04/17/2013 18:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMarka](
	[markaKod] [int] IDENTITY(1,1) NOT NULL,
	[Marka] [varchar](50) NULL,
	[MarkaTel] [varchar](15) NULL,
	[MarkaResim] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblMarka] PRIMARY KEY CLUSTERED 
(
	[markaKod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblMarka] ON
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (0, N'ACER', N'1111111111', NULL)
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (1, N'ASUS', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (2, N'HP', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (3, N'APPLE', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (4, N'TOSHIBA', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (5, N'DATRON', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (6, N'MSI', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (7, N'DELL', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (8, N'SAMSUNG', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (9, N'AOPEN', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (10, N'APACHE', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (11, N'ASUS', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (12, N'AVERMEDIA', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (13, N'BENQ', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (14, N'CANON', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (15, N'CASPER', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (16, N'CHIC', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (17, N'COBY', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (18, N'CODEGEN', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (19, N'CORECESS', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (20, N'CREATIVE', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (21, N'DAYTONA', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (22, N'DLINK', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (23, N'ELIXIR', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (24, N'ENCORE', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (25, N'EPOX', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (26, N'EPSON', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (27, N'ERICSSON', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (28, N'EVERPOWER', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (29, N'FIC', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (30, N'FLY', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (31, N'FRISBY', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (32, N'GALAXY', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (33, N'GIGABYTE', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (34, N'HAUPPAUGE', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (35, N'HAYES', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (36, N'HITACHI', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (37, N'HP', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (38, N'INCA', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (39, N'INTEL', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (40, N'IOMEGA', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (41, N'ITSPEED', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (42, N'JAGUAR', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (43, N'JAZZ', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (44, N'JNC', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (45, N'KINGSTON', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (46, N'KINYO', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (47, N'KODAK', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (48, N'LA CONTE', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (49, N'LEADTEK', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (50, N'LG', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (51, N'MACALINK', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (52, N'MASK', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (53, N'MATROX', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (54, N'MAXTOR', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (55, N'MICROSOFT', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (56, N'MITSUMI', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (57, N'MS OEM', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (58, N'MSI', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (59, N'MTECH', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (60, N'MUSTEK', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (61, N'NCP', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (62, N'NETODRAGON', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (63, N'NOKIA', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (64, N'N-TECH', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (65, N'OEM', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (66, N'ORITE', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (67, N'PANTHAI', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (68, N'PHILIPS', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (69, N'PIONEER', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (70, N'PLEXTOR', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (71, N'PQI', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (72, N'QUAKE', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (73, N'SAMSUNG', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (74, N'SEAGATE', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (75, N'SNAZZI', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (76, N'SPECTEK', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (77, N'SPEEDCOM', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (78, N'SURFCAM', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (79, N'SYNCMAX', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (80, N'TEKRAM', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (81, N'TOSHIBA', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (82, N'TRANSCEND', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (83, N'TWISTER', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (84, N'UMAX', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (85, N'USROBOTIC', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (86, N'USROBOTICS', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (87, N'V-DATA', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (88, N'VERITECH', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (89, N'VESTEL', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (90, N'VIARAMA', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (91, N'WD', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (92, N'WHITE', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (93, N'XTREME', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (94, N'YAMAHA', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (95, N'ZOLTRIX', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (96, N'ZOOM', N'', N'')
INSERT [dbo].[tblMarka] ([markaKod], [Marka], [MarkaTel], [MarkaResim]) VALUES (97, N'ZYXEL', N'', N'')
SET IDENTITY_INSERT [dbo].[tblMarka] OFF
/****** Object:  Table [dbo].[tblKullanici]    Script Date: 04/17/2013 18:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKullanici](
	[kullaniciKod] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NULL,
	[isim] [nvarchar](30) NULL,
	[soyad] [nvarchar](50) NULL,
	[sonGirisTarih] [smalldatetime] NULL,
	[sifre] [nvarchar](12) NULL,
	[sehir] [nvarchar](50) NULL,
	[adres1] [nvarchar](50) NULL,
	[tel] [char](13) NULL,
	[puan] [int] NULL,
	[Dtarih] [varchar](50) NULL,
	[Cinsiyet] [bit] NULL,
	[Yonetim] [bit] NULL,
 CONSTRAINT [PK_tblAdmin] PRIMARY KEY CLUSTERED 
(
	[kullaniciKod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UCemail_tblKullanici] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblKullanici] ON
INSERT [dbo].[tblKullanici] ([kullaniciKod], [email], [isim], [soyad], [sonGirisTarih], [sifre], [sehir], [adres1], [tel], [puan], [Dtarih], [Cinsiyet], [Yonetim]) VALUES (2, N'bayram@gmail.com', N'Bayram Ali', N'ÖZ', CAST(0xA1A000AB AS SmallDateTime), N'1', N'ISPARTA', N'Yayla Mah.123.Sok. No:12 ISPARTA', N'2462234687   ', 21, N'01011986', 1, 0)
INSERT [dbo].[tblKullanici] ([kullaniciKod], [email], [isim], [soyad], [sonGirisTarih], [sifre], [sehir], [adres1], [tel], [puan], [Dtarih], [Cinsiyet], [Yonetim]) VALUES (3, N'yonetim@gmail.com', N'Yönetici', N'Yönetici', NULL, N'1', N'ISPARTA', N'Yayla Mah.123.Sok. No:12 ISPARTA', N'2462234687   ', NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[tblKullanici] OFF
/****** Object:  Table [dbo].[Kategori]    Script Date: 04/17/2013 18:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kategori](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KatAdi] [varchar](550) NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Kategori] ON
INSERT [dbo].[Kategori] ([Id], [KatAdi]) VALUES (1, N'Notebook')
INSERT [dbo].[Kategori] ([Id], [KatAdi]) VALUES (2, N'Tablet')
INSERT [dbo].[Kategori] ([Id], [KatAdi]) VALUES (3, N'Çevre Birimleri')
INSERT [dbo].[Kategori] ([Id], [KatAdi]) VALUES (4, N'Depolama Birimleri')
INSERT [dbo].[Kategori] ([Id], [KatAdi]) VALUES (5, N'Masaüstü Bilgisayar')
INSERT [dbo].[Kategori] ([Id], [KatAdi]) VALUES (6, N'Monitör')
INSERT [dbo].[Kategori] ([Id], [KatAdi]) VALUES (7, N'Cep Telefonları')
INSERT [dbo].[Kategori] ([Id], [KatAdi]) VALUES (8, N'İşletim Sistemleri')
INSERT [dbo].[Kategori] ([Id], [KatAdi]) VALUES (9, N'Güvenlik Ürünleri')
SET IDENTITY_INSERT [dbo].[Kategori] OFF
/****** Object:  Table [dbo].[Urun]    Script Date: 04/17/2013 18:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Urun](
	[urunKod] [int] IDENTITY(1,1) NOT NULL,
	[markaKod] [int] NULL,
	[urunAd] [varchar](255) NULL,
	[KatId] [int] NULL,
	[listeFiyat] [float] NULL,
	[Indirim] [float] NULL,
	[KDVoran] [float] NULL,
	[urunResim] [varchar](55) NULL,
	[urunOzet] [varchar](255) NULL,
	[stokDurum] [int] NULL,
	[garanti] [varchar](50) NULL,
	[teslimatSure] [tinyint] NULL,
	[IndirimliMi] [bit] NULL,
	[Detay] [varchar](max) NULL,
	[Sil] [bit] NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY NONCLUSTERED 
(
	[urunKod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_tblUrun] UNIQUE NONCLUSTERED 
(
	[urunKod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Urun] ON
INSERT [dbo].[Urun] ([urunKod], [markaKod], [urunAd], [KatId], [listeFiyat], [Indirim], [KDVoran], [urunResim], [urunOzet], [stokDurum], [garanti], [teslimatSure], [IndirimliMi], [Detay], [Sil]) VALUES (3506, 1, N'Nokia Cep Telefonu', 7, 600, NULL, NULL, N'v2-58448.png', N'dd', 5, N'3', 3, 1, NULL, 0)
INSERT [dbo].[Urun] ([urunKod], [markaKod], [urunAd], [KatId], [listeFiyat], [Indirim], [KDVoran], [urunResim], [urunOzet], [stokDurum], [garanti], [teslimatSure], [IndirimliMi], [Detay], [Sil]) VALUES (3507, 1, N'500 Gb SanDisk', 3, 250, NULL, NULL, N'v2-61354.png', NULL, 5, N'3', 1, 0, NULL, 0)
INSERT [dbo].[Urun] ([urunKod], [markaKod], [urunAd], [KatId], [listeFiyat], [Indirim], [KDVoran], [urunResim], [urunOzet], [stokDurum], [garanti], [teslimatSure], [IndirimliMi], [Detay], [Sil]) VALUES (3508, 1, N'17" Monitör', 6, 120, NULL, NULL, N'v2-62648-2.png', NULL, 5, N'3', 2, 1, NULL, 0)
INSERT [dbo].[Urun] ([urunKod], [markaKod], [urunAd], [KatId], [listeFiyat], [Indirim], [KDVoran], [urunResim], [urunOzet], [stokDurum], [garanti], [teslimatSure], [IndirimliMi], [Detay], [Sil]) VALUES (3509, 1, N'Norton 360 Antivirüs', 9, 55, NULL, NULL, N'v2-62787-1.png', NULL, 5, N'3', 3, 0, NULL, 0)
INSERT [dbo].[Urun] ([urunKod], [markaKod], [urunAd], [KatId], [listeFiyat], [Indirim], [KDVoran], [urunResim], [urunOzet], [stokDurum], [garanti], [teslimatSure], [IndirimliMi], [Detay], [Sil]) VALUES (3510, 1, N'Norton Internet Security', 9, 60, NULL, NULL, N'v2-62789.png', NULL, 5, N'3', 4, 0, NULL, 0)
INSERT [dbo].[Urun] ([urunKod], [markaKod], [urunAd], [KatId], [listeFiyat], [Indirim], [KDVoran], [urunResim], [urunOzet], [stokDurum], [garanti], [teslimatSure], [IndirimliMi], [Detay], [Sil]) VALUES (3511, 1, N'Tablet', 2, 120, NULL, NULL, N'v2-62933-2.png', NULL, 5, N'3', 3, 0, NULL, 0)
INSERT [dbo].[Urun] ([urunKod], [markaKod], [urunAd], [KatId], [listeFiyat], [Indirim], [KDVoran], [urunResim], [urunOzet], [stokDurum], [garanti], [teslimatSure], [IndirimliMi], [Detay], [Sil]) VALUES (3512, 1, N'Samsung S3', 7, 1100, NULL, NULL, N'v2-63335-2.png', NULL, 5, N'3', 4, 0, NULL, 0)
INSERT [dbo].[Urun] ([urunKod], [markaKod], [urunAd], [KatId], [listeFiyat], [Indirim], [KDVoran], [urunResim], [urunOzet], [stokDurum], [garanti], [teslimatSure], [IndirimliMi], [Detay], [Sil]) VALUES (3513, 1, N'Casper Notebook', 1, 2000, NULL, NULL, N'v2-64367.png', N'tanıtım', 5, N'3', 3, 1, N'', 0)
INSERT [dbo].[Urun] ([urunKod], [markaKod], [urunAd], [KatId], [listeFiyat], [Indirim], [KDVoran], [urunResim], [urunOzet], [stokDurum], [garanti], [teslimatSure], [IndirimliMi], [Detay], [Sil]) VALUES (3514, 11, N'Kasper Sky 2013', 9, 20, NULL, NULL, N'v2-64859.png', NULL, 5, N'3', 4, 0, NULL, 0)
INSERT [dbo].[Urun] ([urunKod], [markaKod], [urunAd], [KatId], [listeFiyat], [Indirim], [KDVoran], [urunResim], [urunOzet], [stokDurum], [garanti], [teslimatSure], [IndirimliMi], [Detay], [Sil]) VALUES (3515, 1, N'Windows 8 Pro', 8, 160, NULL, NULL, N'v2-65216.png', NULL, 5, N'3', 3, 0, NULL, 0)
INSERT [dbo].[Urun] ([urunKod], [markaKod], [urunAd], [KatId], [listeFiyat], [Indirim], [KDVoran], [urunResim], [urunOzet], [stokDurum], [garanti], [teslimatSure], [IndirimliMi], [Detay], [Sil]) VALUES (3516, 1, N'Asus Notebook', 1, 2500, NULL, NULL, N'v2-65144.png', NULL, 5, N'3', 2, 0, NULL, 0)
INSERT [dbo].[Urun] ([urunKod], [markaKod], [urunAd], [KatId], [listeFiyat], [Indirim], [KDVoran], [urunResim], [urunOzet], [stokDurum], [garanti], [teslimatSure], [IndirimliMi], [Detay], [Sil]) VALUES (3520, 3, NULL, 1, 350, NULL, NULL, NULL, NULL, 5, N'3', 4, NULL, NULL, 0)
INSERT [dbo].[Urun] ([urunKod], [markaKod], [urunAd], [KatId], [listeFiyat], [Indirim], [KDVoran], [urunResim], [urunOzet], [stokDurum], [garanti], [teslimatSure], [IndirimliMi], [Detay], [Sil]) VALUES (3518, 1, N'Acer Iconia W510 ', 1, 1350, NULL, NULL, N'acer.jpg', NULL, 55, N'3', 5, 0, NULL, 0)
INSERT [dbo].[Urun] ([urunKod], [markaKod], [urunAd], [KatId], [listeFiyat], [Indirim], [KDVoran], [urunResim], [urunOzet], [stokDurum], [garanti], [teslimatSure], [IndirimliMi], [Detay], [Sil]) VALUES (3519, 2, NULL, 1, 250, NULL, NULL, NULL, NULL, 5, N'3', 3, 0, NULL, 0)
SET IDENTITY_INSERT [dbo].[Urun] OFF
/****** Object:  Table [dbo].[tblSiparis]    Script Date: 04/17/2013 18:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSiparis](
	[faturaKod] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciKod] [int] NULL,
	[ToplamTutar] [float] NULL,
	[KargoBilgisi] [varchar](550) NULL,
	[siparisTarih] [datetime] NULL,
	[Onay] [bit] NULL,
 CONSTRAINT [PK_tblOrder] PRIMARY KEY CLUSTERED 
(
	[faturaKod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblSiparis] ON
INSERT [dbo].[tblSiparis] ([faturaKod], [kullaniciKod], [ToplamTutar], [KargoBilgisi], [siparisTarih], [Onay]) VALUES (1, 2, 3500, N'Yurtiçi Kargo tarafından 16.04.2013 kargolandı.', CAST(0x0000A1A000000000 AS DateTime), 1)
INSERT [dbo].[tblSiparis] ([faturaKod], [kullaniciKod], [ToplamTutar], [KargoBilgisi], [siparisTarih], [Onay]) VALUES (2, 2, 1132.8, N'Sürat Kargo tarafından 16.04.2013 tarihinde kargolandı.', CAST(0x0000A1A00021D002 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tblSiparis] OFF
/****** Object:  Table [dbo].[tblSepet]    Script Date: 04/17/2013 18:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSepet](
	[kullaniciKod] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[urunKod] [int] NOT NULL,
	[adet] [int] NULL,
 CONSTRAINT [PK_tblSepet_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblSepet] ON
INSERT [dbo].[tblSepet] ([kullaniciKod], [Id], [urunKod], [adet]) VALUES (2, 3, 3511, 3)
INSERT [dbo].[tblSepet] ([kullaniciKod], [Id], [urunKod], [adet]) VALUES (2, 4, 3511, 2)
SET IDENTITY_INSERT [dbo].[tblSepet] OFF
/****** Object:  Table [dbo].[tblSiparisDetay]    Script Date: 04/17/2013 18:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSiparisDetay](
	[SatirNo] [int] IDENTITY(1,1) NOT NULL,
	[faturaKod] [int] NULL,
	[urunKod] [int] NULL,
	[fiyat] [float] NULL,
	[KDV] [float] NULL,
	[adet] [smallint] NULL,
 CONSTRAINT [PK_tblOrderDetail] PRIMARY KEY NONCLUSTERED 
(
	[SatirNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblSiparisDetay] ON
INSERT [dbo].[tblSiparisDetay] ([SatirNo], [faturaKod], [urunKod], [fiyat], [KDV], [adet]) VALUES (1, 1, 3506, 350, NULL, 4)
INSERT [dbo].[tblSiparisDetay] ([SatirNo], [faturaKod], [urunKod], [fiyat], [KDV], [adet]) VALUES (2, 1, 3507, 600, NULL, 2)
INSERT [dbo].[tblSiparisDetay] ([SatirNo], [faturaKod], [urunKod], [fiyat], [KDV], [adet]) VALUES (3, 2, 3508, 141.6, NULL, 1)
INSERT [dbo].[tblSiparisDetay] ([SatirNo], [faturaKod], [urunKod], [fiyat], [KDV], [adet]) VALUES (4, 2, 3511, 991.19999999999993, NULL, 7)
SET IDENTITY_INSERT [dbo].[tblSiparisDetay] OFF
/****** Object:  Default [DF_tblSiparis_siparisTarih]    Script Date: 04/17/2013 18:45:25 ******/
ALTER TABLE [dbo].[tblSiparis] ADD  CONSTRAINT [DF_tblSiparis_siparisTarih]  DEFAULT (getdate()) FOR [siparisTarih]
GO
/****** Object:  ForeignKey [FK_tblCard_tblAdmin]    Script Date: 04/17/2013 18:45:25 ******/
ALTER TABLE [dbo].[tblSepet]  WITH NOCHECK ADD  CONSTRAINT [FK_tblCard_tblAdmin] FOREIGN KEY([kullaniciKod])
REFERENCES [dbo].[tblKullanici] ([kullaniciKod])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblSepet] CHECK CONSTRAINT [FK_tblCard_tblAdmin]
GO
/****** Object:  ForeignKey [FK_tblCard_tblProduct]    Script Date: 04/17/2013 18:45:25 ******/
ALTER TABLE [dbo].[tblSepet]  WITH NOCHECK ADD  CONSTRAINT [FK_tblCard_tblProduct] FOREIGN KEY([urunKod])
REFERENCES [dbo].[Urun] ([urunKod])
GO
ALTER TABLE [dbo].[tblSepet] CHECK CONSTRAINT [FK_tblCard_tblProduct]
GO
/****** Object:  ForeignKey [FK_tblOrder_tblAdmin]    Script Date: 04/17/2013 18:45:25 ******/
ALTER TABLE [dbo].[tblSiparis]  WITH NOCHECK ADD  CONSTRAINT [FK_tblOrder_tblAdmin] FOREIGN KEY([kullaniciKod])
REFERENCES [dbo].[tblKullanici] ([kullaniciKod])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblSiparis] CHECK CONSTRAINT [FK_tblOrder_tblAdmin]
GO
/****** Object:  ForeignKey [FK_tblOrderDetail_tblOrder]    Script Date: 04/17/2013 18:45:25 ******/
ALTER TABLE [dbo].[tblSiparisDetay]  WITH CHECK ADD  CONSTRAINT [FK_tblOrderDetail_tblOrder] FOREIGN KEY([faturaKod])
REFERENCES [dbo].[tblSiparis] ([faturaKod])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblSiparisDetay] CHECK CONSTRAINT [FK_tblOrderDetail_tblOrder]
GO
/****** Object:  ForeignKey [FK_tblOrderDetail_tblProduct]    Script Date: 04/17/2013 18:45:25 ******/
ALTER TABLE [dbo].[tblSiparisDetay]  WITH NOCHECK ADD  CONSTRAINT [FK_tblOrderDetail_tblProduct] FOREIGN KEY([urunKod])
REFERENCES [dbo].[Urun] ([urunKod])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblSiparisDetay] CHECK CONSTRAINT [FK_tblOrderDetail_tblProduct]
GO
/****** Object:  ForeignKey [FK_tblUrun_tblMarka]    Script Date: 04/17/2013 18:45:25 ******/
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_tblUrun_tblMarka] FOREIGN KEY([markaKod])
REFERENCES [dbo].[tblMarka] ([markaKod])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_tblUrun_tblMarka]
GO
/****** Object:  ForeignKey [FK_Urun_Kategori]    Script Date: 04/17/2013 18:45:25 ******/
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_Kategori] FOREIGN KEY([KatId])
REFERENCES [dbo].[Kategori] ([Id])
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_Kategori]
GO
