USE [master]
GO
/****** Object:  Database [StudentHealthCentre] ******/
CREATE DATABASE [StudentHealthCentre]
 CONTAINMENT = NONE
GO
ALTER DATABASE [StudentHealthCentre] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentHealthCentre].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudentHealthCentre] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudentHealthCentre] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudentHealthCentre] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StudentHealthCentre] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudentHealthCentre] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StudentHealthCentre] SET  MULTI_USER 
GO
ALTER DATABASE [StudentHealthCentre] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudentHealthCentre] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudentHealthCentre] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudentHealthCentre] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [StudentHealthCentre] SET DELAYED_DURABILITY = DISABLED 
GO
USE [StudentHealthCentre]
GO
/****** Object:  Table [dbo].[Appointment] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[Time] [time](4) NOT NULL,
	[BookingDateTime] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
	[PatientFk] [int] NOT NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GP] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
	[Surname] [nvarchar](25) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_GP] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Patient] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NhsNumber] [nvarchar](12) NOT NULL,
	[Name] [nvarchar](25) NULL,
	[Surname] [nvarchar](25) NULL,
	[DateOfBirth] [date] NULL,
	[Address] [nvarchar](100) NULL,
	[Telephone] [nvarchar](10) NULL,
	[Status] [bit] NOT NULL,
	[GPFk] [int] NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Appointment] ON 

INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (1, CAST(N'2015-11-23' AS Date), CAST(N'10:15:00' AS Time), CAST(N'2015-11-16 20:30:08.000' AS DateTime), 1, 3)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (2, CAST(N'2015-11-24' AS Date), CAST(N'09:30:00' AS Time), CAST(N'2015-11-16 20:02:01.000' AS DateTime), 1, 4)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (3, CAST(N'2015-11-24' AS Date), CAST(N'12:15:00' AS Time), CAST(N'2015-11-17 10:03:12.000' AS DateTime), 1, 5)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (4, CAST(N'2015-11-23' AS Date), CAST(N'09:15:00' AS Time), CAST(N'2015-11-17 10:05:30.000' AS DateTime), 1, 6)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (5, CAST(N'2015-11-23' AS Date), CAST(N'15:15:00' AS Time), CAST(N'2015-11-18 12:32:11.000' AS DateTime), 1, 7)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (6, CAST(N'2015-11-21' AS Date), CAST(N'09:30:00' AS Time), CAST(N'2015-11-18 12:33:05.000' AS DateTime), 0, 8)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (7, CAST(N'2015-11-23' AS Date), CAST(N'12:30:00' AS Time), CAST(N'2015-11-18 12:34:10.000' AS DateTime), 1, 9)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (8, CAST(N'2015-11-23' AS Date), CAST(N'11:00:00' AS Time), CAST(N'2015-11-19 13:02:33.000' AS DateTime), 1, 10)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (9, CAST(N'2015-11-20' AS Date), CAST(N'09:30:00' AS Time), CAST(N'2015-11-19 13:05:06.000' AS DateTime), 0, 11)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (10, CAST(N'2015-11-24' AS Date), CAST(N'12:15:00' AS Time), CAST(N'2015-11-19 18:45:56.000' AS DateTime), 1, 5)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (31, CAST(N'2015-11-24' AS Date), CAST(N'13:30:00' AS Time), CAST(N'2015-11-19 11:47:11.800' AS DateTime), 0, 2)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (32, CAST(N'2015-11-24' AS Date), CAST(N'14:30:00' AS Time), CAST(N'2015-11-19 11:49:37.853' AS DateTime), 0, 2)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (33, CAST(N'2015-11-24' AS Date), CAST(N'14:30:00' AS Time), CAST(N'2015-11-19 12:32:49.487' AS DateTime), 0, 2)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (34, CAST(N'2015-12-18' AS Date), CAST(N'12:30:00' AS Time), CAST(N'2015-12-15 05:04:20.453' AS DateTime), 0, 2)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (35, CAST(N'2015-12-18' AS Date), CAST(N'10:30:00' AS Time), CAST(N'2015-12-15 05:14:25.487' AS DateTime), 0, 2)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (36, CAST(N'2015-12-21' AS Date), CAST(N'09:15:00' AS Time), CAST(N'2015-12-15 05:17:59.183' AS DateTime), 0, 2)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (37, CAST(N'2015-12-22' AS Date), CAST(N'12:30:00' AS Time), CAST(N'2015-12-15 05:35:40.363' AS DateTime), 0, 2)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (38, CAST(N'2015-12-21' AS Date), CAST(N'10:15:00' AS Time), CAST(N'2015-12-15 05:39:13.300' AS DateTime), 0, 2)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (39, CAST(N'2015-12-21' AS Date), CAST(N'10:15:00' AS Time), CAST(N'2015-12-15 05:42:24.517' AS DateTime), 0, 2)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (40, CAST(N'2015-12-18' AS Date), CAST(N'13:00:00' AS Time), CAST(N'2015-12-15 06:07:58.187' AS DateTime), 0, 2)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (41, CAST(N'2015-12-18' AS Date), CAST(N'12:30:00' AS Time), CAST(N'2015-12-15 06:09:36.263' AS DateTime), 0, 2)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (42, CAST(N'2015-12-18' AS Date), CAST(N'12:30:00' AS Time), CAST(N'2015-12-15 06:26:39.393' AS DateTime), 0, 2)
INSERT [dbo].[Appointment] ([Id], [Date], [Time], [BookingDateTime], [Status], [PatientFk]) VALUES (43, CAST(N'2015-12-18' AS Date), CAST(N'12:30:00' AS Time), CAST(N'2015-12-15 06:47:28.417' AS DateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[Appointment] OFF
SET IDENTITY_INSERT [dbo].[GP] ON 

INSERT [dbo].[GP] ([Id], [Name], [Surname], [Status]) VALUES (1, N'Henry', N'Colbert', 0)
INSERT [dbo].[GP] ([Id], [Name], [Surname], [Status]) VALUES (2, N'Rebecca', N'Jones', 1)
INSERT [dbo].[GP] ([Id], [Name], [Surname], [Status]) VALUES (3, N'Benjamin', N'Cole', 1)
INSERT [dbo].[GP] ([Id], [Name], [Surname], [Status]) VALUES (4, N'Samantha', N'Bailey', 1)
SET IDENTITY_INSERT [dbo].[GP] OFF
SET IDENTITY_INSERT [dbo].[Patient] ON 

INSERT [dbo].[Patient] ([Id], [NhsNumber], [Name], [Surname], [DateOfBirth], [Address], [Telephone], [Status], [GPFk]) VALUES (1, N'000-000-0000', N'Administrator', NULL, CAST(N'1991-01-01' AS Date), NULL, NULL, 1, 1)
INSERT [dbo].[Patient] ([Id], [NhsNumber], [Name], [Surname], [DateOfBirth], [Address], [Telephone], [Status], [GPFk]) VALUES (2, N'111-222-3333', N'Maria', N'Diaz', CAST(N'1991-01-01' AS Date), N' 100 Oxford Street,
 Marylebone
, London, W1D 1LA', N'07700100350', 1, 1)
INSERT [dbo].[Patient] ([Id], [NhsNumber], [Name], [Surname], [DateOfBirth], [Address], [Telephone], [Status], [GPFk]) VALUES (3, N'078-392-121', N'Jessica', N'Evans', CAST(N'1993-07-14' AS Date), N' 50 Oxford Street, Marylebone , London, W1D 1LA ', N'07750912764', 1, 2)
INSERT [dbo].[Patient] ([Id], [NhsNumber], [Name], [Surname], [DateOfBirth], [Address], [Telephone], [Status], [GPFk]) VALUES (4, N'432-556-017', N'Daniel', N'Young', CAST(N'1994-09-23' AS Date), N'1 Tottenham Court Road, Bloomsbury, London, W1T 7LQ', N'07433016901', 1, 3)
INSERT [dbo].[Patient] ([Id], [NhsNumber], [Name], [Surname], [DateOfBirth], [Address], [Telephone], [Status], [GPFk]) VALUES (5, N'788-120-3660', N'Leo', N'Scott', CAST(N'1996-08-06' AS Date), N'19 Tottenham Court Road, London, W1T 7LQ ', N'07292253012', 1, 1)
INSERT [dbo].[Patient] ([Id], [NhsNumber], [Name], [Surname], [DateOfBirth], [Address], [Telephone], [Status], [GPFk]) VALUES (6, N'156-882-004', N'Luca', N'Lewis', CAST(N'1996-12-17' AS Date), N'30 Great Castle Street, Fitzrovia, London, W1W 8LG', N'07536697810', 1, 2)
INSERT [dbo].[Patient] ([Id], [NhsNumber], [Name], [Surname], [DateOfBirth], [Address], [Telephone], [Status], [GPFk]) VALUES (7, N'934-012-783', N'Laura', N'Pearson', CAST(N'1995-01-25' AS Date), N'12 Greek Street, Soho, London, W1D 4EB', N'07621461200', 1, 4)
INSERT [dbo].[Patient] ([Id], [NhsNumber], [Name], [Surname], [DateOfBirth], [Address], [Telephone], [Status], [GPFk]) VALUES (8, N'112-134-9908', N'Tyler', N'Williams', CAST(N'1996-08-06' AS Date), N' 1 Tottenham Court Road, Bloomsbury, London, W1T 7LQ ', N' 0752146187', 1, 2)
INSERT [dbo].[Patient] ([Id], [NhsNumber], [Name], [Surname], [DateOfBirth], [Address], [Telephone], [Status], [GPFk]) VALUES (9, N'174-042-381', N'Sarah', N'Paine', CAST(N'1995-01-05' AS Date), N'23 Brook Street, London, W1D 4EB', N'07621461200', 1, 1)
INSERT [dbo].[Patient] ([Id], [NhsNumber], [Name], [Surname], [DateOfBirth], [Address], [Telephone], [Status], [GPFk]) VALUES (10, N'613-445-3998', N'Lilly', N'Morgan', CAST(N'1995-02-17' AS Date), N'23 Old Street, London, W1B 2EL', N'07135263016', 1, 3)
INSERT [dbo].[Patient] ([Id], [NhsNumber], [Name], [Surname], [DateOfBirth], [Address], [Telephone], [Status], [GPFk]) VALUES (11, N'647-148-0230', N'Peter', N'Ferguson', CAST(N'1995-11-12' AS Date), N'3 Wood Street, London, W1B 2ES', N'07154253066', 1, 2)
INSERT [dbo].[Patient] ([Id], [NhsNumber], [Name], [Surname], [DateOfBirth], [Address], [Telephone], [Status], [GPFk]) VALUES (12, N'114-032-8961', N'Robert', N'Newcomb', CAST(N'1995-05-11' AS Date), N'24 Main Street, London, W5D 2ES', N'07101463087', 1, 3)
SET IDENTITY_INSERT [dbo].[Patient] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_NhsNumber] ******/
ALTER TABLE [dbo].[Patient] ADD  CONSTRAINT [IX_NhsNumber] UNIQUE NONCLUSTERED 
(
	[NhsNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Patient] FOREIGN KEY([PatientFk])
REFERENCES [dbo].[Patient] ([Id])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Patient]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_GP] FOREIGN KEY([GPFk])
REFERENCES [dbo].[GP] ([Id])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_GP]
GO
USE [master]
GO
ALTER DATABASE [StudentHealthCentre] SET  READ_WRITE 
GO
