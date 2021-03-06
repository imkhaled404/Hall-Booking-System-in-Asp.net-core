USE [master]
GO
/****** Object:  Database [HotelDb]    Script Date: 8/25/2021 1:00:15 AM ******/
CREATE DATABASE [HotelDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HotelDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\HotelDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HotelDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\HotelDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HotelDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotelDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HotelDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HotelDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HotelDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HotelDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HotelDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [HotelDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HotelDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HotelDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HotelDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HotelDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HotelDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HotelDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HotelDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HotelDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HotelDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HotelDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HotelDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HotelDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HotelDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HotelDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HotelDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [HotelDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HotelDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HotelDb] SET  MULTI_USER 
GO
ALTER DATABASE [HotelDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HotelDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HotelDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HotelDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HotelDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HotelDb] SET QUERY_STORE = OFF
GO
USE [HotelDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [HotelDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/25/2021 1:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 8/25/2021 1:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/25/2021 1:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/25/2021 1:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/25/2021 1:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/25/2021 1:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/25/2021 1:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[ProfilePic] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 8/25/2021 1:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 8/25/2021 1:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[ID] [nvarchar](450) NOT NULL,
	[SpeciaGuests] [nvarchar](max) NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[ApplicationDate] [datetime2](7) NOT NULL,
	[RentalDate] [datetime2](7) NOT NULL,
	[Completed] [bit] NOT NULL,
	[AgreementNumber] [nvarchar](max) NOT NULL,
	[PaymentDate] [datetime2](7) NOT NULL,
	[Subject] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
	[RoomID] [nvarchar](450) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[ChiefGuests] [nvarchar](max) NULL,
	[CustomerID] [nvarchar](450) NULL,
	[RentalPeriod] [nvarchar](11) NOT NULL,
	[RoomTypesID] [nvarchar](450) NULL,
	[TypeID] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[ApplicantName] [nvarchar](max) NOT NULL,
	[PaymentID] [nvarchar](450) NULL,
 CONSTRAINT [PK_Bookings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 8/25/2021 1:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[ID] [nvarchar](450) NOT NULL,
	[CustomerEmail] [nvarchar](max) NOT NULL,
	[CustomerName] [nvarchar](max) NOT NULL,
	[CustomerPhone] [nvarchar](max) NOT NULL,
	[OtherAddress] [nvarchar](max) NULL,
	[OtherContact] [nvarchar](max) NULL,
	[PrimaryAddress] [nvarchar](max) NOT NULL,
	[PrimaryContact] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Features]    Script Date: 8/25/2021 1:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[ID] [nvarchar](450) NOT NULL,
	[Icon] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 8/25/2021 1:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[ID] [nvarchar](450) NOT NULL,
	[FilePath] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[RoomID] [nvarchar](450) NULL,
	[Size] [nvarchar](max) NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemImageRelationships]    Script Date: 8/25/2021 1:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemImageRelationships](
	[ItemID] [nvarchar](450) NOT NULL,
	[ImageID] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_ItemImageRelationships] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC,
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 8/25/2021 1:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentID] [nvarchar](450) NOT NULL,
	[PaymentType] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 8/25/2021 1:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[ID] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ReviewerEmail] [nvarchar](max) NULL,
	[ReviewerName] [nvarchar](max) NULL,
	[RoomID] [nvarchar](450) NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomFeatureRelationships]    Script Date: 8/25/2021 1:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomFeatureRelationships](
	[RoomID] [nvarchar](450) NOT NULL,
	[FeatureID] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_RoomFeatureRelationships] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC,
	[FeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 8/25/2021 1:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[ID] [nvarchar](450) NOT NULL,
	[Available] [bit] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[MaximumGuests] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[RoomTypeID] [nvarchar](450) NULL,
	[HallName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomTypes]    Script Date: 8/25/2021 1:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomTypes](
	[ID] [nvarchar](450) NOT NULL,
	[BasePrice] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_RoomTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210817204255_babu', N'2.0.2-rtm-10011')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210818155159_km', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210821153746_booking', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210824175302_final', N'2.0.3-rtm-10026')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [Address], [City], [ConcurrencyStamp], [Email], [EmailConfirmed], [FullName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [ProfilePic], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'48b79933-a33c-442e-b088-fb9458288313', 0, NULL, NULL, N'4e492423-0a4b-4339-9c60-ae36df2a9458', N'imkhaled404@gmail.com', 0, NULL, 1, NULL, N'IMKHALED404@GMAIL.COM', N'IMKHALED404@GMAIL.COM', N'AQAAAAEAACcQAAAAEMfy3DxhPJF7GXJojR35C9zyWwF1nS1OUBUbKot5HieXrzRKWDT5vIW7DQ7jMS8sXg==', N'+8801715451502', 0, NULL, N'b49b880f-eeb3-4dce-a824-bf9ff52abb29', 0, N'imkhaled404@gmail.com')
GO
INSERT [dbo].[Bookings] ([ID], [SpeciaGuests], [ApplicationUserId], [ApplicationDate], [RentalDate], [Completed], [AgreementNumber], [PaymentDate], [Subject], [Status], [RoomID], [Price], [ChiefGuests], [CustomerID], [RentalPeriod], [RoomTypesID], [TypeID], [Address], [ApplicantName], [PaymentID]) VALUES (N'db32c62a-4851-4598-9568-443098c87302', N'Zunayed Ahammed Polok', NULL, CAST(N'2021-08-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-08-27T00:00:00.0000000' AS DateTime2), 0, N'HB/2021/31', CAST(N'2021-08-25T00:00:00.0000000' AS DateTime2), N'meeting', 1, N'bca1e456-5d7a-4e35-897f-5a54056a2675', CAST(100000.00 AS Decimal(18, 2)), N'Dipu Moni', N'5c402055-caf6-4887-a6b6-9d63a3ae1172', N'15:23', NULL, NULL, N'Dhanmondi', N'Jaman', N'2')
INSERT [dbo].[Bookings] ([ID], [SpeciaGuests], [ApplicationUserId], [ApplicationDate], [RentalDate], [Completed], [AgreementNumber], [PaymentDate], [Subject], [Status], [RoomID], [Price], [ChiefGuests], [CustomerID], [RentalPeriod], [RoomTypesID], [TypeID], [Address], [ApplicantName], [PaymentID]) VALUES (N'e081d225-f226-46bf-9f97-c6254a5212ae', N'Zunayed Ahammed Polok', NULL, CAST(N'2021-08-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-08-28T00:00:00.0000000' AS DateTime2), 0, N'HB/2021/24', CAST(N'2021-08-25T00:00:00.0000000' AS DateTime2), N'meeting', 1, N'bca1e456-5d7a-4e35-897f-5a54056a2675', CAST(100000.00 AS Decimal(18, 2)), N'Dipu Moni', N'd9510656-d077-4afb-816b-47c8d234b5ff', N'12:25', NULL, NULL, N'Dhanmondi', N'Islam', N'1')
GO
INSERT [dbo].[Customers] ([ID], [CustomerEmail], [CustomerName], [CustomerPhone], [OtherAddress], [OtherContact], [PrimaryAddress], [PrimaryContact]) VALUES (N'5c402055-caf6-4887-a6b6-9d63a3ae1172', N'asadjaman@gmail.com', N'Asad Jaman', N'01984520350', N'Dhanmondi', N'0171918129', N'Dhanmondi', N'01711111111')
INSERT [dbo].[Customers] ([ID], [CustomerEmail], [CustomerName], [CustomerPhone], [OtherAddress], [OtherContact], [PrimaryAddress], [PrimaryContact]) VALUES (N'cc162b0d-3e98-4a9f-876f-cf7d369c72a2', N'imkhaled404@gmail.com', N'MD.KHALED', N'+8801715451502', N'Rupnagar R/A, Mirpur-2, Dhaka-1216', NULL, N'Bhola', N'01793281492')
INSERT [dbo].[Customers] ([ID], [CustomerEmail], [CustomerName], [CustomerPhone], [OtherAddress], [OtherContact], [PrimaryAddress], [PrimaryContact]) VALUES (N'd9510656-d077-4afb-816b-47c8d234b5ff', N'shoriful@gmail.com', N'Shoriful Islam', N'01716913700', N'basabo', N'basabo', N'Basabo', N'01716913700')
GO
INSERT [dbo].[Payments] ([PaymentID], [PaymentType]) VALUES (N'1', N'Advanced')
INSERT [dbo].[Payments] ([PaymentID], [PaymentType]) VALUES (N'2', N'FullPayment')
GO
INSERT [dbo].[Rooms] ([ID], [Available], [Description], [MaximumGuests], [Number], [Price], [RoomTypeID], [HallName]) VALUES (N'34ba6724-a04b-438c-a225-e1b267c57464', 1, N'Large number off set ', 600, 4, CAST(300000.00 AS Decimal(18, 2)), N'075a3564-9c74-4e0b-a6f1-6eac37745082', N'Toffazal Hossian Manik Hall')
INSERT [dbo].[Rooms] ([ID], [Available], [Description], [MaximumGuests], [Number], [Price], [RoomTypeID], [HallName]) VALUES (N'bca1e456-5d7a-4e35-897f-5a54056a2675', 1, N'Large', 400, 3, CAST(200000.00 AS Decimal(18, 2)), N'075a3564-9c74-4e0b-a6f1-6eac37745082', N'Johur Hossen Chouwdri Hall')
INSERT [dbo].[Rooms] ([ID], [Available], [Description], [MaximumGuests], [Number], [Price], [RoomTypeID], [HallName]) VALUES (N'd13d1940-2121-43bf-837f-ca542f906b87', 0, N'its normal', 100, 2, CAST(80000.00 AS Decimal(18, 2)), N'34e5a274-9b61-4288-be4b-7fcdd2857d35', N'Auditorium')
INSERT [dbo].[Rooms] ([ID], [Available], [Description], [MaximumGuests], [Number], [Price], [RoomTypeID], [HallName]) VALUES (N'd1b6f8f9-d936-4189-af91-0fe31a553137', 1, N'Its too good', 300, 1, CAST(150000.00 AS Decimal(18, 2)), N'075a3564-9c74-4e0b-a6f1-6eac37745082', N'Auditorium')
GO
INSERT [dbo].[RoomTypes] ([ID], [BasePrice], [Description], [Name]) VALUES (N'075a3564-9c74-4e0b-a6f1-6eac37745082', CAST(1000000.00 AS Decimal(18, 2)), N'All covered in AC service', N'AC')
INSERT [dbo].[RoomTypes] ([ID], [BasePrice], [Description], [Name]) VALUES (N'34e5a274-9b61-4288-be4b-7fcdd2857d35', CAST(700000.00 AS Decimal(18, 2)), N'No ac service is avilable', N'Non-AC')
INSERT [dbo].[RoomTypes] ([ID], [BasePrice], [Description], [Name]) VALUES (N'70309a31-9bf4-4678-bfb9-3dae6c570bbf', CAST(15000.00 AS Decimal(18, 2)), N'VIP', N'Deluxe ')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 8/25/2021 1:00:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/25/2021 1:00:15 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 8/25/2021 1:00:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 8/25/2021 1:00:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 8/25/2021 1:00:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 8/25/2021 1:00:15 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/25/2021 1:00:15 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Bookings_ApplicationUserId]    Script Date: 8/25/2021 1:00:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_Bookings_ApplicationUserId] ON [dbo].[Bookings]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Bookings_CustomerID]    Script Date: 8/25/2021 1:00:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_Bookings_CustomerID] ON [dbo].[Bookings]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Bookings_PaymentID]    Script Date: 8/25/2021 1:00:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_Bookings_PaymentID] ON [dbo].[Bookings]
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Bookings_RoomID]    Script Date: 8/25/2021 1:00:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_Bookings_RoomID] ON [dbo].[Bookings]
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Bookings_RoomTypesID]    Script Date: 8/25/2021 1:00:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_Bookings_RoomTypesID] ON [dbo].[Bookings]
(
	[RoomTypesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Images_RoomID]    Script Date: 8/25/2021 1:00:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_Images_RoomID] ON [dbo].[Images]
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ItemImageRelationships_ImageID]    Script Date: 8/25/2021 1:00:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_ItemImageRelationships_ImageID] ON [dbo].[ItemImageRelationships]
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Reviews_RoomID]    Script Date: 8/25/2021 1:00:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_RoomID] ON [dbo].[Reviews]
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoomFeatureRelationships_FeatureID]    Script Date: 8/25/2021 1:00:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoomFeatureRelationships_FeatureID] ON [dbo].[RoomFeatureRelationships]
(
	[FeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Rooms_RoomTypeID]    Script Date: 8/25/2021 1:00:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_Rooms_RoomTypeID] ON [dbo].[Rooms]
(
	[RoomTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bookings] ADD  DEFAULT (N'') FOR [RentalPeriod]
GO
ALTER TABLE [dbo].[Bookings] ADD  DEFAULT (N'') FOR [ApplicantName]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_Customers_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_Customers_CustomerID]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_Payments_PaymentID] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[Payments] ([PaymentID])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_Payments_PaymentID]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_Rooms_RoomID] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Rooms] ([ID])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_Rooms_RoomID]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_RoomTypes_RoomTypesID] FOREIGN KEY([RoomTypesID])
REFERENCES [dbo].[RoomTypes] ([ID])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_RoomTypes_RoomTypesID]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_Rooms_RoomID] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Rooms] ([ID])
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_Rooms_RoomID]
GO
ALTER TABLE [dbo].[ItemImageRelationships]  WITH CHECK ADD  CONSTRAINT [FK_ItemImageRelationships_Images_ImageID] FOREIGN KEY([ImageID])
REFERENCES [dbo].[Images] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ItemImageRelationships] CHECK CONSTRAINT [FK_ItemImageRelationships_Images_ImageID]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Rooms_RoomID] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Rooms] ([ID])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Rooms_RoomID]
GO
ALTER TABLE [dbo].[RoomFeatureRelationships]  WITH CHECK ADD  CONSTRAINT [FK_RoomFeatureRelationships_Features_FeatureID] FOREIGN KEY([FeatureID])
REFERENCES [dbo].[Features] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoomFeatureRelationships] CHECK CONSTRAINT [FK_RoomFeatureRelationships_Features_FeatureID]
GO
ALTER TABLE [dbo].[RoomFeatureRelationships]  WITH CHECK ADD  CONSTRAINT [FK_RoomFeatureRelationships_Rooms_RoomID] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Rooms] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoomFeatureRelationships] CHECK CONSTRAINT [FK_RoomFeatureRelationships_Rooms_RoomID]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_RoomTypes_RoomTypeID] FOREIGN KEY([RoomTypeID])
REFERENCES [dbo].[RoomTypes] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_RoomTypes_RoomTypeID]
GO
USE [master]
GO
ALTER DATABASE [HotelDb] SET  READ_WRITE 
GO
