USE [devrimme_sena]
GO
/****** Object:  User [devrimme_CoreProjeDbUser]    Script Date: 5.01.2023 12:57:50 ******/
CREATE USER [devrimme_CoreProjeDbUser] FOR LOGIN [devrimme_CoreProjeDbUser] WITH DEFAULT_SCHEMA=[devrimme_CoreProjeDbUser]
GO
/****** Object:  User [devrimme_db]    Script Date: 5.01.2023 12:57:50 ******/
CREATE USER [devrimme_db] FOR LOGIN [devrimme_db] WITH DEFAULT_SCHEMA=[devrimme_db]
GO
/****** Object:  User [devrimme_remoteuser]    Script Date: 5.01.2023 12:57:50 ******/
CREATE USER [devrimme_remoteuser] FOR LOGIN [devrimme_remoteuser] WITH DEFAULT_SCHEMA=[devrimme_remoteuser]
GO
/****** Object:  User [devrimme_usersena]    Script Date: 5.01.2023 12:57:50 ******/
CREATE USER [devrimme_usersena] FOR LOGIN [devrimme_usersena] WITH DEFAULT_SCHEMA=[devrimme_usersena]
GO
ALTER ROLE [db_owner] ADD MEMBER [devrimme_CoreProjeDbUser]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [devrimme_CoreProjeDbUser]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [devrimme_CoreProjeDbUser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [devrimme_CoreProjeDbUser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [devrimme_CoreProjeDbUser]
GO
ALTER ROLE [db_owner] ADD MEMBER [devrimme_db]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [devrimme_db]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [devrimme_db]
GO
ALTER ROLE [db_datareader] ADD MEMBER [devrimme_db]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [devrimme_db]
GO
ALTER ROLE [db_owner] ADD MEMBER [devrimme_remoteuser]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [devrimme_remoteuser]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [devrimme_remoteuser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [devrimme_remoteuser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [devrimme_remoteuser]
GO
ALTER ROLE [db_owner] ADD MEMBER [devrimme_usersena]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [devrimme_usersena]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [devrimme_usersena]
GO
ALTER ROLE [db_datareader] ADD MEMBER [devrimme_usersena]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [devrimme_usersena]
GO
/****** Object:  Schema [devrimme_CoreProjeDbUser]    Script Date: 5.01.2023 12:57:51 ******/
CREATE SCHEMA [devrimme_CoreProjeDbUser]
GO
/****** Object:  Schema [devrimme_db]    Script Date: 5.01.2023 12:57:51 ******/
CREATE SCHEMA [devrimme_db]
GO
/****** Object:  Schema [devrimme_remoteuser]    Script Date: 5.01.2023 12:57:51 ******/
CREATE SCHEMA [devrimme_remoteuser]
GO
/****** Object:  Schema [devrimme_usersena]    Script Date: 5.01.2023 12:57:51 ******/
CREATE SCHEMA [devrimme_usersena]
GO
/****** Object:  Table [devrimme_usersena].[About]    Script Date: 5.01.2023 12:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_usersena].[About](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Explanation] [varchar](max) NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [devrimme_usersena].[Admin]    Script Date: 5.01.2023 12:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_usersena].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](20) NULL,
	[Password] [varchar](20) NULL,
	[Authority] [char](1) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [devrimme_usersena].[Announcements]    Script Date: 5.01.2023 12:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_usersena].[Announcements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryText] [varchar](50) NULL,
	[Contents] [varchar](200) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Announcements_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [devrimme_usersena].[Author]    Script Date: 5.01.2023 12:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_usersena].[Author](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NULL,
	[Surname] [varchar](30) NULL,
	[Detail] [varchar](1000) NULL,
 CONSTRAINT [PK_Tbl_Author] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [devrimme_usersena].[Book]    Script Date: 5.01.2023 12:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_usersena].[Book](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Category_Id] [tinyint] NULL,
	[Author_Id] [int] NULL,
	[PrintYear] [char](4) NULL,
	[Publisher] [varchar](50) NULL,
	[Page] [varchar](4) NULL,
	[Status] [bit] NULL,
	[BookPicture] [varchar](250) NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [devrimme_usersena].[Category]    Script Date: 5.01.2023 12:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_usersena].[Category](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Tbl_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [devrimme_usersena].[Contact]    Script Date: 5.01.2023 12:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_usersena].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Mail] [varchar](50) NULL,
	[Subject] [varchar](50) NULL,
	[Message] [varchar](1000) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [devrimme_usersena].[Employee]    Script Date: 5.01.2023 12:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_usersena].[Employee](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Employees] [varchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [devrimme_usersena].[Member]    Script Date: 5.01.2023 12:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_usersena].[Member](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
	[Surname] [varchar](20) NULL,
	[Mail] [varchar](50) NULL,
	[UserName] [varchar](20) NULL,
	[Password] [varchar](20) NULL,
	[Photograph] [varchar](250) NULL,
	[Telephone] [varchar](20) NULL,
	[School] [varchar](100) NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [devrimme_usersena].[Message]    Script Date: 5.01.2023 12:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_usersena].[Message](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sender] [varchar](50) NULL,
	[Buyer] [varchar](50) NULL,
	[Subject] [varchar](50) NULL,
	[Contents] [varchar](500) NULL,
	[Date] [smalldatetime] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [devrimme_usersena].[Movement]    Script Date: 5.01.2023 12:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_usersena].[Movement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Book_Id] [int] NULL,
	[Member_Id] [int] NULL,
	[Employee_Id] [tinyint] NULL,
	[StartDate] [smalldatetime] NULL,
	[FinishDate] [smalldatetime] NULL,
	[BringMemberDate] [smalldatetime] NULL,
	[TransactionStatus] [bit] NULL,
 CONSTRAINT [PK_Movement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [devrimme_usersena].[Punishment]    Script Date: 5.01.2023 12:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_usersena].[Punishment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NULL,
	[StartDate] [smalldatetime] NULL,
	[EndDate] [smalldatetime] NULL,
	[Money] [decimal](18, 2) NULL,
	[Movement_Id] [int] NULL,
 CONSTRAINT [PK_Punishment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [devrimme_usersena].[Till]    Script Date: 5.01.2023 12:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_usersena].[Till](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Month] [varchar](20) NULL,
	[Total] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Till] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [devrimme_usersena].[About] ON 

INSERT [devrimme_usersena].[About] ([Id], [Explanation]) VALUES (1, N'Bu proje Mvc5 Platformunda C# Backend kodları ile entity ve linq yaklaşımlar kullanılarak bootstrap ve css js tasarım eklentileri ile hazırlanmıştır. Projemizde 3 tane modül bulunur. Bunlardan ilki kullanıcı hesap modülü, ikincisi vitrin modülü ve üçüncüsü ise admin modülüdür. Projemizi mvc tabanında kodlamaya devam ediyoruz. Oldukça çok yeni şey Öğrendik.')
SET IDENTITY_INSERT [devrimme_usersena].[About] OFF
GO
SET IDENTITY_INSERT [devrimme_usersena].[Admin] ON 

INSERT [devrimme_usersena].[Admin] ([Id], [UserName], [Password], [Authority]) VALUES (2, N'admin2@gmail.com', N'12', N'A')
INSERT [devrimme_usersena].[Admin] ([Id], [UserName], [Password], [Authority]) VALUES (3, N'admin3@gmail.com', N'13', N'B')
INSERT [devrimme_usersena].[Admin] ([Id], [UserName], [Password], [Authority]) VALUES (4, N'test2', N'12', N'1')
SET IDENTITY_INSERT [devrimme_usersena].[Admin] OFF
GO
SET IDENTITY_INSERT [devrimme_usersena].[Announcements] ON 

INSERT [devrimme_usersena].[Announcements] ([Id], [CategoryText], [Contents], [Date]) VALUES (1, N'Yeni Kitap', N'Nutuk ve Cumhuriyet anıları kitapları dün itibariyle bize ulaştı.', CAST(N'2020-04-12T00:00:00.000' AS DateTime))
INSERT [devrimme_usersena].[Announcements] ([Id], [CategoryText], [Contents], [Date]) VALUES (2, N'Kitapları Geciktirmeyin', N'Sevgili arkadaşlar bazı öğrenci arkadaşlarımız kitapları beklediği için lütfen kitapları okuduktan sonra geri teslim ediniz.', CAST(N'2020-04-13T00:00:00.000' AS DateTime))
INSERT [devrimme_usersena].[Announcements] ([Id], [CategoryText], [Contents], [Date]) VALUES (3, N'İletişim', N'Sistemimizde bulunan mail ve telefon bilginizi güncelleyiniz.', CAST(N'2020-04-14T00:00:00.000' AS DateTime))
INSERT [devrimme_usersena].[Announcements] ([Id], [CategoryText], [Contents], [Date]) VALUES (4, N'Diğer', N'fdxcdscsd', CAST(N'2020-04-14T00:00:00.000' AS DateTime))
INSERT [devrimme_usersena].[Announcements] ([Id], [CategoryText], [Contents], [Date]) VALUES (6, N'Diğer', N'Bu haftasonu kütüphanemiz bakım sebebiyle kapalı olacaktır', CAST(N'2022-04-18T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [devrimme_usersena].[Announcements] OFF
GO
SET IDENTITY_INSERT [devrimme_usersena].[Author] ON 

INSERT [devrimme_usersena].[Author] ([Id], [Name], [Surname], [Detail]) VALUES (1, N'Jules', N'Verne', NULL)
INSERT [devrimme_usersena].[Author] ([Id], [Name], [Surname], [Detail]) VALUES (2, N'Charies', N'Diskens', NULL)
INSERT [devrimme_usersena].[Author] ([Id], [Name], [Surname], [Detail]) VALUES (3, N'Halide Edip', N'Adıvar', NULL)
INSERT [devrimme_usersena].[Author] ([Id], [Name], [Surname], [Detail]) VALUES (4, N'Ömer', N'Seyfettin', NULL)
INSERT [devrimme_usersena].[Author] ([Id], [Name], [Surname], [Detail]) VALUES (7, N'Namık', N'Kemal', N'test')
INSERT [devrimme_usersena].[Author] ([Id], [Name], [Surname], [Detail]) VALUES (9, N'George', N'Orwell', N'test')
INSERT [devrimme_usersena].[Author] ([Id], [Name], [Surname], [Detail]) VALUES (10, N'Hasan Ali', N'Yücel', NULL)
INSERT [devrimme_usersena].[Author] ([Id], [Name], [Surname], [Detail]) VALUES (11, N'Gogol', NULL, NULL)
INSERT [devrimme_usersena].[Author] ([Id], [Name], [Surname], [Detail]) VALUES (12, N'Sabahattin', N'Ali', NULL)
INSERT [devrimme_usersena].[Author] ([Id], [Name], [Surname], [Detail]) VALUES (13, N'Oğuz', N'Atay', NULL)
INSERT [devrimme_usersena].[Author] ([Id], [Name], [Surname], [Detail]) VALUES (16, N'Lev', N'Tolstoy', NULL)
SET IDENTITY_INSERT [devrimme_usersena].[Author] OFF
GO
SET IDENTITY_INSERT [devrimme_usersena].[Book] ON 

INSERT [devrimme_usersena].[Book] ([Id], [Name], [Category_Id], [Author_Id], [PrintYear], [Publisher], [Page], [Status], [BookPicture]) VALUES (1, N'Tuna Klavuzu', 1, 1, N'2015', N'Yıldız', N'250', 1, N'https://i.hizliresim.com/jhxs5j7.jfif')
INSERT [devrimme_usersena].[Book] ([Id], [Name], [Category_Id], [Author_Id], [PrintYear], [Publisher], [Page], [Status], [BookPicture]) VALUES (2, N'İki ŞEhrin Hikayesi', 1, 2, N'2018', N'Güneş', N'350', 1, N'https://i.hizliresim.com/af1f8jb.jfif')
INSERT [devrimme_usersena].[Book] ([Id], [Name], [Category_Id], [Author_Id], [PrintYear], [Publisher], [Page], [Status], [BookPicture]) VALUES (7, N'Kaşağı', 8, 4, N'2012', N'Yıldız', N'65', 1, N'https://i.hizliresim.com/cl2oues.jpg')
INSERT [devrimme_usersena].[Book] ([Id], [Name], [Category_Id], [Author_Id], [PrintYear], [Publisher], [Page], [Status], [BookPicture]) VALUES (8, N'80 Günde Devri Alem', 1, 1, N'1   ', N'a', N'1', 0, N'https://i.hizliresim.com/dyt2hjb.jpg')
INSERT [devrimme_usersena].[Book] ([Id], [Name], [Category_Id], [Author_Id], [PrintYear], [Publisher], [Page], [Status], [BookPicture]) VALUES (9, N'Bir Yılbaşı Hikayesi', 8, 2, N'1850', N'Yıldız', N'80', 1, N'https://i.hizliresim.com/2q7jrjf.jpg')
INSERT [devrimme_usersena].[Book] ([Id], [Name], [Category_Id], [Author_Id], [PrintYear], [Publisher], [Page], [Status], [BookPicture]) VALUES (10, N'Geçtiğim Günlerden', 11, 10, N'2015', N'Güneş', N'220', 1, N'https://i.hizliresim.com/o0j3ykq.jpg')
INSERT [devrimme_usersena].[Book] ([Id], [Name], [Category_Id], [Author_Id], [PrintYear], [Publisher], [Page], [Status], [BookPicture]) VALUES (12, N'Doktor Oxun Deneyi', 3, 1, N'2015', N'Güneş', N'85', 1, N'https://i.hizliresim.com/okwtebk.jpg')
INSERT [devrimme_usersena].[Book] ([Id], [Name], [Category_Id], [Author_Id], [PrintYear], [Publisher], [Page], [Status], [BookPicture]) VALUES (13, N'Müfettiş', 5, 11, N'2009', N'Mars', N'140', 1, N'https://i.hizliresim.com/nmnr2ok.jpg')
INSERT [devrimme_usersena].[Book] ([Id], [Name], [Category_Id], [Author_Id], [PrintYear], [Publisher], [Page], [Status], [BookPicture]) VALUES (14, N'Yalnız Efe', 8, 4, N'2017', N'Mars', N'45', 1, N'https://i.hizliresim.com/puwtt03.jpg')
INSERT [devrimme_usersena].[Book] ([Id], [Name], [Category_Id], [Author_Id], [PrintYear], [Publisher], [Page], [Status], [BookPicture]) VALUES (15, N'Vurun Kahpeye', 1, 3, N'2014', N'Satürn', N'185', 1, N'https://i.hizliresim.com/m4ki5w9.jfif')
INSERT [devrimme_usersena].[Book] ([Id], [Name], [Category_Id], [Author_Id], [PrintYear], [Publisher], [Page], [Status], [BookPicture]) VALUES (21, N'Hayvan Çiftliği', 76, 9, N'2021', N'Can Sanat Yayınları', N'152', 1, N'https://i.hizliresim.com/g17tdg8.jpg')
INSERT [devrimme_usersena].[Book] ([Id], [Name], [Category_Id], [Author_Id], [PrintYear], [Publisher], [Page], [Status], [BookPicture]) VALUES (23, N'Tutunamayanlar', 76, 13, N'1950', N'Mars', N'300', 1, N'https://i.hizliresim.com/epk6wsi.jpg')
SET IDENTITY_INSERT [devrimme_usersena].[Book] OFF
GO
SET IDENTITY_INSERT [devrimme_usersena].[Category] ON 

INSERT [devrimme_usersena].[Category] ([Id], [Name], [Status]) VALUES (1, N'Macera', 1)
INSERT [devrimme_usersena].[Category] ([Id], [Name], [Status]) VALUES (2, N'BilimKurgu', 0)
INSERT [devrimme_usersena].[Category] ([Id], [Name], [Status]) VALUES (3, N'Fantastik', 1)
INSERT [devrimme_usersena].[Category] ([Id], [Name], [Status]) VALUES (4, N'Şiir', 1)
INSERT [devrimme_usersena].[Category] ([Id], [Name], [Status]) VALUES (5, N'Tiyatro', 1)
INSERT [devrimme_usersena].[Category] ([Id], [Name], [Status]) VALUES (6, N'Çocuk Kitapları', 1)
INSERT [devrimme_usersena].[Category] ([Id], [Name], [Status]) VALUES (8, N'Hikaye', 1)
INSERT [devrimme_usersena].[Category] ([Id], [Name], [Status]) VALUES (10, N'Kişisel Gelişim', 1)
INSERT [devrimme_usersena].[Category] ([Id], [Name], [Status]) VALUES (11, N'Biyografi', 1)
INSERT [devrimme_usersena].[Category] ([Id], [Name], [Status]) VALUES (75, N'Polisiye', 1)
INSERT [devrimme_usersena].[Category] ([Id], [Name], [Status]) VALUES (76, N'Roman', 1)
SET IDENTITY_INSERT [devrimme_usersena].[Category] OFF
GO
SET IDENTITY_INSERT [devrimme_usersena].[Contact] ON 

INSERT [devrimme_usersena].[Contact] ([Id], [Name], [Mail], [Subject], [Message]) VALUES (1, N'Sena Ekincioğlu', N'deneme@hotmail.com', N'12345', N'test mesajıdır.')
SET IDENTITY_INSERT [devrimme_usersena].[Contact] OFF
GO
SET IDENTITY_INSERT [devrimme_usersena].[Employee] ON 

INSERT [devrimme_usersena].[Employee] ([Id], [Employees]) VALUES (26, N'Sena Ekincioğlu')
INSERT [devrimme_usersena].[Employee] ([Id], [Employees]) VALUES (27, N'Murat Yücedağ')
INSERT [devrimme_usersena].[Employee] ([Id], [Employees]) VALUES (28, N'Duru Yeşilyurt')
SET IDENTITY_INSERT [devrimme_usersena].[Employee] OFF
GO
SET IDENTITY_INSERT [devrimme_usersena].[Member] ON 

INSERT [devrimme_usersena].[Member] ([Id], [Name], [Surname], [Mail], [UserName], [Password], [Photograph], [Telephone], [School]) VALUES (1, N'Sena', N'Ekincioğlu', N'deneme@gmail.com', N'sa', N'1234', N'https://i.hizliresim.com/sxjkk9a.jpeg', N'05422396545', N'Selçuk Üniversitesi')
INSERT [devrimme_usersena].[Member] ([Id], [Name], [Surname], [Mail], [UserName], [Password], [Photograph], [Telephone], [School]) VALUES (2, N'Murat', N'Gerekgil', N'test@gmail.com', N'murat123', N'abc', NULL, NULL, N'Çukurova Üniversitesi')
INSERT [devrimme_usersena].[Member] ([Id], [Name], [Surname], [Mail], [UserName], [Password], [Photograph], [Telephone], [School]) VALUES (3, N'Turgay', N'Karahasan', N'turgay@hotmail.com', N'trgy1', N'a1', NULL, NULL, N'Mersin Üniversitesi')
INSERT [devrimme_usersena].[Member] ([Id], [Name], [Surname], [Mail], [UserName], [Password], [Photograph], [Telephone], [School]) VALUES (4, N'Berk', N'Yılmaz', N'berk@hotmail.com', N'berk1', N'brk123', NULL, NULL, N'Fırat Üniversitesi')
INSERT [devrimme_usersena].[Member] ([Id], [Name], [Surname], [Mail], [UserName], [Password], [Photograph], [Telephone], [School]) VALUES (5, N'Emel', N'Yıldırım', N'emel01@gmail.com', N'emel1', N'ae10', NULL, NULL, N'Fırat Üniversitesi')
INSERT [devrimme_usersena].[Member] ([Id], [Name], [Surname], [Mail], [UserName], [Password], [Photograph], [Telephone], [School]) VALUES (6, N'Aylin', N'Öztürk', N'aylin@gmail.com', N'aylin123', N'120', NULL, NULL, N'Ege Üniversitesi')
INSERT [devrimme_usersena].[Member] ([Id], [Name], [Surname], [Mail], [UserName], [Password], [Photograph], [Telephone], [School]) VALUES (7, N'Demet', N'Polat', N'demet@outlook.com', N'demet1234', N'12', N'https://i.hizliresim.com/sxjkk9a.jpeg', N'05422698788', N'Uludağ Üniversitesi')
SET IDENTITY_INSERT [devrimme_usersena].[Member] OFF
GO
SET IDENTITY_INSERT [devrimme_usersena].[Message] ON 

INSERT [devrimme_usersena].[Message] ([Id], [Sender], [Buyer], [Subject], [Contents], [Date]) VALUES (1, N'demet@outlook.com', N'deneme@gmail.com', N'Teşekkür', N'Bugün kitabı verdiğin için teşekkür ederim', CAST(N'2022-12-31T00:00:00' AS SmallDateTime))
INSERT [devrimme_usersena].[Message] ([Id], [Sender], [Buyer], [Subject], [Contents], [Date]) VALUES (2, N'emel01@gmail.com', N'deneme@gmail.com', N'Teşekkür', N'Sunum çok güzel hazırlanmış', CAST(N'2022-12-31T00:00:00' AS SmallDateTime))
INSERT [devrimme_usersena].[Message] ([Id], [Sender], [Buyer], [Subject], [Contents], [Date]) VALUES (3, N'turgay@hotmail.com', N'deneme@gmail.com', N'Rica', N'Beyaz zambaklar ülkesinde kitabım sende kalmış yarın kütüphaneye getirir misin', CAST(N'2022-12-31T00:00:00' AS SmallDateTime))
INSERT [devrimme_usersena].[Message] ([Id], [Sender], [Buyer], [Subject], [Contents], [Date]) VALUES (4, N'demet@outlook.com', N'aylin@gmail.com', N'Ödev', N'Ahmet hocanın verdiği ödevi yaptın mı', CAST(N'2022-12-31T00:00:00' AS SmallDateTime))
INSERT [devrimme_usersena].[Message] ([Id], [Sender], [Buyer], [Subject], [Contents], [Date]) VALUES (5, N'test@gmail.com', N'aylin@gmail.com', N'Rica', N'yarın kütüphaneye gelirken laptopunu getitir misin', CAST(N'2022-12-31T00:00:00' AS SmallDateTime))
INSERT [devrimme_usersena].[Message] ([Id], [Sender], [Buyer], [Subject], [Contents], [Date]) VALUES (6, N'deneme@gmail.com', N'turgay@hotmail.com', N'fasds', N'fsfsfs', CAST(N'2022-12-31T00:00:00' AS SmallDateTime))
INSERT [devrimme_usersena].[Message] ([Id], [Sender], [Buyer], [Subject], [Contents], [Date]) VALUES (7, N'deneme@gmail.com', N'turgay@hotmail.com', N'fasds', N'fsfsfs', CAST(N'2022-12-31T00:00:00' AS SmallDateTime))
INSERT [devrimme_usersena].[Message] ([Id], [Sender], [Buyer], [Subject], [Contents], [Date]) VALUES (8, N'demet@outlook.com', N'emel01@gmail.com', N'Meraba ', N'deneme yapıyoruz', CAST(N'2023-01-02T00:00:00' AS SmallDateTime))
INSERT [devrimme_usersena].[Message] ([Id], [Sender], [Buyer], [Subject], [Contents], [Date]) VALUES (9, N'demet@outlook.com', N'emel01@gmail.com', N'Meraba ', N'deneme ', CAST(N'2023-01-02T00:00:00' AS SmallDateTime))
INSERT [devrimme_usersena].[Message] ([Id], [Sender], [Buyer], [Subject], [Contents], [Date]) VALUES (10, N'demet@outlook.com', N'emel01@gmail.com', N'Teşekkür', N'Merhaba emel kitaplar çok güzeldi teşekkür ederim.', CAST(N'2023-01-04T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [devrimme_usersena].[Message] OFF
GO
SET IDENTITY_INSERT [devrimme_usersena].[Movement] ON 

INSERT [devrimme_usersena].[Movement] ([Id], [Book_Id], [Member_Id], [Employee_Id], [StartDate], [FinishDate], [BringMemberDate], [TransactionStatus]) VALUES (1, 7, 1, 27, CAST(N'2019-12-23T00:00:00' AS SmallDateTime), CAST(N'2019-12-30T00:00:00' AS SmallDateTime), CAST(N'2022-12-22T00:00:00' AS SmallDateTime), 1)
INSERT [devrimme_usersena].[Movement] ([Id], [Book_Id], [Member_Id], [Employee_Id], [StartDate], [FinishDate], [BringMemberDate], [TransactionStatus]) VALUES (2, 9, 3, 27, CAST(N'2022-12-21T00:00:00' AS SmallDateTime), CAST(N'2022-12-28T00:00:00' AS SmallDateTime), CAST(N'2022-12-22T00:00:00' AS SmallDateTime), 1)
INSERT [devrimme_usersena].[Movement] ([Id], [Book_Id], [Member_Id], [Employee_Id], [StartDate], [FinishDate], [BringMemberDate], [TransactionStatus]) VALUES (4, 13, 1, 28, CAST(N'2022-12-23T00:00:00' AS SmallDateTime), CAST(N'2022-12-30T00:00:00' AS SmallDateTime), CAST(N'2022-12-22T00:00:00' AS SmallDateTime), 1)
INSERT [devrimme_usersena].[Movement] ([Id], [Book_Id], [Member_Id], [Employee_Id], [StartDate], [FinishDate], [BringMemberDate], [TransactionStatus]) VALUES (6, 1, 2, 27, CAST(N'2022-12-23T00:00:00' AS SmallDateTime), CAST(N'2022-12-30T00:00:00' AS SmallDateTime), CAST(N'2022-12-23T00:00:00' AS SmallDateTime), 1)
INSERT [devrimme_usersena].[Movement] ([Id], [Book_Id], [Member_Id], [Employee_Id], [StartDate], [FinishDate], [BringMemberDate], [TransactionStatus]) VALUES (25, 7, 7, 28, CAST(N'2022-12-29T00:00:00' AS SmallDateTime), CAST(N'2022-12-29T00:00:00' AS SmallDateTime), CAST(N'2022-12-29T00:00:00' AS SmallDateTime), 1)
INSERT [devrimme_usersena].[Movement] ([Id], [Book_Id], [Member_Id], [Employee_Id], [StartDate], [FinishDate], [BringMemberDate], [TransactionStatus]) VALUES (26, 7, 7, 28, CAST(N'2022-12-29T00:00:00' AS SmallDateTime), CAST(N'2023-01-05T00:00:00' AS SmallDateTime), CAST(N'2022-12-29T00:00:00' AS SmallDateTime), 1)
INSERT [devrimme_usersena].[Movement] ([Id], [Book_Id], [Member_Id], [Employee_Id], [StartDate], [FinishDate], [BringMemberDate], [TransactionStatus]) VALUES (27, 7, 7, 28, CAST(N'2022-12-29T00:00:00' AS SmallDateTime), CAST(N'2023-01-05T00:00:00' AS SmallDateTime), CAST(N'2022-12-29T00:00:00' AS SmallDateTime), 1)
INSERT [devrimme_usersena].[Movement] ([Id], [Book_Id], [Member_Id], [Employee_Id], [StartDate], [FinishDate], [BringMemberDate], [TransactionStatus]) VALUES (28, 7, 7, 28, CAST(N'2022-12-29T00:00:00' AS SmallDateTime), CAST(N'2023-01-05T00:00:00' AS SmallDateTime), CAST(N'2022-12-29T00:00:00' AS SmallDateTime), 1)
INSERT [devrimme_usersena].[Movement] ([Id], [Book_Id], [Member_Id], [Employee_Id], [StartDate], [FinishDate], [BringMemberDate], [TransactionStatus]) VALUES (29, 7, 7, 28, CAST(N'2022-12-29T00:00:00' AS SmallDateTime), CAST(N'2023-01-05T00:00:00' AS SmallDateTime), CAST(N'2022-12-29T00:00:00' AS SmallDateTime), 1)
INSERT [devrimme_usersena].[Movement] ([Id], [Book_Id], [Member_Id], [Employee_Id], [StartDate], [FinishDate], [BringMemberDate], [TransactionStatus]) VALUES (30, 7, 7, 28, CAST(N'2022-12-29T00:00:00' AS SmallDateTime), CAST(N'2023-01-05T00:00:00' AS SmallDateTime), CAST(N'2022-12-29T00:00:00' AS SmallDateTime), 1)
INSERT [devrimme_usersena].[Movement] ([Id], [Book_Id], [Member_Id], [Employee_Id], [StartDate], [FinishDate], [BringMemberDate], [TransactionStatus]) VALUES (31, 7, 7, 28, CAST(N'2022-12-29T00:00:00' AS SmallDateTime), CAST(N'2023-01-05T00:00:00' AS SmallDateTime), CAST(N'2022-12-29T00:00:00' AS SmallDateTime), 1)
INSERT [devrimme_usersena].[Movement] ([Id], [Book_Id], [Member_Id], [Employee_Id], [StartDate], [FinishDate], [BringMemberDate], [TransactionStatus]) VALUES (32, 2, 4, 26, CAST(N'2022-12-29T00:00:00' AS SmallDateTime), CAST(N'2023-01-05T00:00:00' AS SmallDateTime), CAST(N'2022-12-29T00:00:00' AS SmallDateTime), 1)
INSERT [devrimme_usersena].[Movement] ([Id], [Book_Id], [Member_Id], [Employee_Id], [StartDate], [FinishDate], [BringMemberDate], [TransactionStatus]) VALUES (33, 10, 2, 26, CAST(N'2022-12-29T00:00:00' AS SmallDateTime), CAST(N'2023-01-05T00:00:00' AS SmallDateTime), CAST(N'2022-12-29T00:00:00' AS SmallDateTime), 1)
INSERT [devrimme_usersena].[Movement] ([Id], [Book_Id], [Member_Id], [Employee_Id], [StartDate], [FinishDate], [BringMemberDate], [TransactionStatus]) VALUES (34, 7, 7, 28, CAST(N'2022-12-29T00:00:00' AS SmallDateTime), CAST(N'2023-01-05T00:00:00' AS SmallDateTime), CAST(N'2022-12-29T00:00:00' AS SmallDateTime), 1)
INSERT [devrimme_usersena].[Movement] ([Id], [Book_Id], [Member_Id], [Employee_Id], [StartDate], [FinishDate], [BringMemberDate], [TransactionStatus]) VALUES (35, 7, 7, 28, CAST(N'2022-12-29T00:00:00' AS SmallDateTime), CAST(N'2023-01-05T00:00:00' AS SmallDateTime), CAST(N'2022-12-29T00:00:00' AS SmallDateTime), 1)
INSERT [devrimme_usersena].[Movement] ([Id], [Book_Id], [Member_Id], [Employee_Id], [StartDate], [FinishDate], [BringMemberDate], [TransactionStatus]) VALUES (36, 7, 7, 28, CAST(N'2022-12-29T00:00:00' AS SmallDateTime), CAST(N'2023-01-05T00:00:00' AS SmallDateTime), CAST(N'2022-12-29T00:00:00' AS SmallDateTime), 1)
INSERT [devrimme_usersena].[Movement] ([Id], [Book_Id], [Member_Id], [Employee_Id], [StartDate], [FinishDate], [BringMemberDate], [TransactionStatus]) VALUES (37, 7, 7, 28, CAST(N'2022-12-30T00:00:00' AS SmallDateTime), CAST(N'2023-01-06T00:00:00' AS SmallDateTime), CAST(N'2022-12-30T00:00:00' AS SmallDateTime), 1)
INSERT [devrimme_usersena].[Movement] ([Id], [Book_Id], [Member_Id], [Employee_Id], [StartDate], [FinishDate], [BringMemberDate], [TransactionStatus]) VALUES (38, 8, 5, 28, CAST(N'2023-01-02T00:00:00' AS SmallDateTime), CAST(N'2023-01-09T00:00:00' AS SmallDateTime), NULL, 0)
SET IDENTITY_INSERT [devrimme_usersena].[Movement] OFF
GO
SET IDENTITY_INSERT [devrimme_usersena].[Punishment] ON 

INSERT [devrimme_usersena].[Punishment] ([Id], [Member_Id], [StartDate], [EndDate], [Money], [Movement_Id]) VALUES (3, 7, NULL, NULL, CAST(10.00 AS Decimal(18, 2)), 37)
SET IDENTITY_INSERT [devrimme_usersena].[Punishment] OFF
GO
ALTER TABLE [devrimme_usersena].[Book] ADD  CONSTRAINT [DF_Book_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [devrimme_usersena].[Movement] ADD  CONSTRAINT [DF_Movement_TransactionStatus]  DEFAULT ((0)) FOR [TransactionStatus]
GO
ALTER TABLE [devrimme_usersena].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author] FOREIGN KEY([Author_Id])
REFERENCES [devrimme_usersena].[Author] ([Id])
GO
ALTER TABLE [devrimme_usersena].[Book] CHECK CONSTRAINT [FK_Book_Author]
GO
ALTER TABLE [devrimme_usersena].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category] FOREIGN KEY([Category_Id])
REFERENCES [devrimme_usersena].[Category] ([Id])
GO
ALTER TABLE [devrimme_usersena].[Book] CHECK CONSTRAINT [FK_Book_Category]
GO
ALTER TABLE [devrimme_usersena].[Movement]  WITH CHECK ADD  CONSTRAINT [FK_Movement_Book1] FOREIGN KEY([Book_Id])
REFERENCES [devrimme_usersena].[Book] ([Id])
GO
ALTER TABLE [devrimme_usersena].[Movement] CHECK CONSTRAINT [FK_Movement_Book1]
GO
ALTER TABLE [devrimme_usersena].[Movement]  WITH CHECK ADD  CONSTRAINT [FK_Movement_Employee1] FOREIGN KEY([Employee_Id])
REFERENCES [devrimme_usersena].[Employee] ([Id])
GO
ALTER TABLE [devrimme_usersena].[Movement] CHECK CONSTRAINT [FK_Movement_Employee1]
GO
ALTER TABLE [devrimme_usersena].[Movement]  WITH CHECK ADD  CONSTRAINT [FK_Movement_Member] FOREIGN KEY([Member_Id])
REFERENCES [devrimme_usersena].[Member] ([Id])
GO
ALTER TABLE [devrimme_usersena].[Movement] CHECK CONSTRAINT [FK_Movement_Member]
GO
ALTER TABLE [devrimme_usersena].[Punishment]  WITH CHECK ADD  CONSTRAINT [FK_Punishment_Movement1] FOREIGN KEY([Movement_Id])
REFERENCES [devrimme_usersena].[Movement] ([Id])
GO
ALTER TABLE [devrimme_usersena].[Punishment] CHECK CONSTRAINT [FK_Punishment_Movement1]
GO
/****** Object:  StoredProcedure [devrimme_usersena].[MostBookAuthors]    Script Date: 5.01.2023 12:57:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [devrimme_usersena].[MostBookAuthors]
as
select top 1 Author.Name+Author.Surname from Book inner join Author on
Author.Id=Book.Author_Id
group by Author.Name, Author.Surname order by COUNT(*)desc
GO
/****** Object:  Trigger [devrimme_usersena].[BookCase11]    Script Date: 5.01.2023 12:57:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [devrimme_usersena].[BookCase11]
on [devrimme_usersena].[Movement] 
after update
as
declare @Book_Id int
select @Book_Id=Book_Id from deleted
update Book set Status=1 where Id=@Book_Id

GO
ALTER TABLE [devrimme_usersena].[Movement] ENABLE TRIGGER [BookCase11]
GO
/****** Object:  Trigger [devrimme_usersena].[BookCase22]    Script Date: 5.01.2023 12:57:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [devrimme_usersena].[BookCase22]
on [devrimme_usersena].[Movement] 
after insert 
as
declare @Book_Id int
select @Book_Id=Book_Id from inserted
update Book set Status=0 where Id=@Book_Id
GO
ALTER TABLE [devrimme_usersena].[Movement] ENABLE TRIGGER [BookCase22]
GO
/****** Object:  Trigger [devrimme_usersena].[PenaltyAmount]    Script Date: 5.01.2023 12:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [devrimme_usersena].[PenaltyAmount]
ON [devrimme_usersena].[Movement]
after update
as
declare @Member int
declare @Movement int

select @Member=Member_Id,@Movement=Id from inserted
insert into Punishment (Member_Id,Movement_Id,Money) 
values (@Member,@Movement,(select DATEDIFF(DAY,FinishDate,BringMemberDate) from Movement where Id=@Movement))


--datediff iki tarih arasını istediğin formatta alıyor

GO
ALTER TABLE [devrimme_usersena].[Movement] ENABLE TRIGGER [PenaltyAmount]
GO
