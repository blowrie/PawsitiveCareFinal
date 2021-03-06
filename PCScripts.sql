USE [master]
GO
/****** Object:  Database [PCDb]    Script Date: 4/17/2018 11:46:23 AM ******/
CREATE DATABASE [PCDb]
 CONTAINMENT = NONE
GO
ALTER DATABASE [PCDb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PCDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PCDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PCDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PCDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PCDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PCDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [PCDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PCDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PCDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PCDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PCDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PCDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PCDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PCDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PCDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PCDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PCDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PCDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PCDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PCDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PCDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PCDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PCDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PCDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PCDb] SET  MULTI_USER 
GO
ALTER DATABASE [PCDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PCDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PCDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PCDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PCDb] SET DELAYED_DURABILITY = DISABLED 
GO
USE [PCDb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/17/2018 11:46:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/17/2018 11:46:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/17/2018 11:46:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/17/2018 11:46:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/17/2018 11:46:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/17/2018 11:46:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Documents]    Script Date: 4/17/2018 11:46:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[DocumentID] [int] IDENTITY(1,1) NOT NULL,
	[DocumentTitle] [nvarchar](200) NULL,
	[DocumentImage] [nvarchar](max) NULL,
	[PetID] [int] NOT NULL,
 CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED 
(
	[DocumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Image]    Script Date: 4/17/2018 11:46:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ImageTitle] [nvarchar](200) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[PetID] [int] NOT NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pet]    Script Date: 4/17/2018 11:46:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pet](
	[PetID] [int] IDENTITY(1,1) NOT NULL,
	[PetName] [nvarchar](200) NOT NULL,
	[BirthDate] [date] NULL,
	[PetType] [nvarchar](50) NOT NULL,
	[Breed] [nvarchar](200) NULL,
	[PetPhoto] [nvarchar](max) NULL,
	[WeightDate] [date] NOT NULL,
	[Weight] [float] NOT NULL,
	[IsFixed] [bit] NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Pet] PRIMARY KEY CLUSTERED 
(
	[PetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Surgery]    Script Date: 4/17/2018 11:46:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Surgery](
	[SurgeryID] [int] IDENTITY(1,1) NOT NULL,
	[SurgeryDate] [date] NOT NULL,
	[SurgeryDescription] [nvarchar](max) NOT NULL,
	[PetID] [int] NOT NULL,
 CONSTRAINT [PK_Surgery] PRIMARY KEY CLUSTERED 
(
	[SurgeryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vaccinations]    Script Date: 4/17/2018 11:46:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vaccinations](
	[VaccinationsID] [int] IDENTITY(1,1) NOT NULL,
	[VaccinationType] [nvarchar](200) NOT NULL,
	[DateReceived] [date] NOT NULL,
	[DueDate] [date] NULL,
	[PetID] [int] NOT NULL,
 CONSTRAINT [PK_Vaccinations] PRIMARY KEY CLUSTERED 
(
	[VaccinationsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Visit]    Script Date: 4/17/2018 11:46:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visit](
	[VisitsID] [int] IDENTITY(1,1) NOT NULL,
	[ClinicName] [nvarchar](200) NOT NULL,
	[VisitCost] [float] NULL,
	[VisitDescription] [nvarchar](5) NULL,
	[VisitDate] [date] NOT NULL,
	[PetID] [int] NOT NULL,
 CONSTRAINT [PK_Visit] PRIMARY KEY CLUSTERED 
(
	[VisitsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Weight]    Script Date: 4/17/2018 11:46:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Weight](
	[WeightID] [int] IDENTITY(1,1) NOT NULL,
	[WeightDate] [date] NULL,
	[Weight] [float] NULL,
	[PetID] [int] NOT NULL,
 CONSTRAINT [PK_Weight] PRIMARY KEY CLUSTERED 
(
	[WeightID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201804061638489_InitialCreate', N'PawsitiveCare.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E3F40FF83A0A7D383D4CAA5BBD813D85BA44E724ED0CD05EBECE2BC2D68897688952855A4B2098AFEB23EF427F52F9CA16E9678D1C5566CA758606191C36F86C321391C0EF3D71F7F8E7F7A0A7CEB11C78C8474621F8D0E6D0B5337F4085D4EEC842F7E7867FFF4FEBB7F8C2FBCE0C9FA5CD09D083A6849D9C47EE03C3A751CE63EE000B15140DC3864E1828FDC307090173AC78787FF768E8E1C0C10366059D6F86342390970FA019FD390BA38E209F2AF430FFB2C2F879A598A6ADDA000B308B97862DFA16F8C70F288A728C6A38CDEB6CE7C82409619F617B685280D39E220E9E92786673C0EE972164101F2EF9F230C740BE4339CF7E07445DEB53387C7A233CEAA6101E5268C87414FC0A3935C3B8EDC7C2D1DDBA5F6407F17A067FE2C7A9DEA70625F79382DFA18FAA00099E1E9D48F05F1C4BE2E599CB1E806F351D17094415EC600F72D8CBF8EAA880756E77607A5351D8F0EC5BF036B9AF83C89F184E284C7C83FB0EE92B94FDC5FF0F37DF815D3C9C9D17C71F2EECD5BE49DBCFD119FBCA9F614FA0A74B50228BA8BC308C7201B5E94FDB72DA7DECE911B96CD2A6D32AD802DC1C4B0AD6BF4F401D3257F802973FCCEB62EC913F68A92DCB83E5102F3081AF13881CF9BC4F7D1DCC765BDD3C853FCDFC0F5F8CDDB41B8DEA047B24C875EE20F13278679F511FB692D7B205136BD6AE3FD2527BB8CC3407CD7ED2BABFD320B93D8159D098D24F7285E625E976EECAC8CB793490BA8E1CDBA40DD7FD31692AAE6AD25151D5A6726142CB63D1B0A795F966F678B3B8B2218BCD4B484469A0C4EB75D8DA4F6600D55AA95F91C75351F0ADDFA3BAF86170122FE00CB61072EE08B2C481CE0B2973F87607C88F696F90E3106AB81F75FC41E1A44879F03883EC36E128391CE380AA217E776F710527C93047361FBDBE335D8D0DC7F0B2F91CBC3F8828A561BE37D08DDAF61C22FA8778E38FEC4DD02507CDE93A03BC020E29CB92E66EC128C197BD3105CED02F08AF293E3DE706289DAB53B32F51109F4FE88B4987E2948573E899E42F14B0C643ADFA449D40FE192D06EA216A46651338A565173B2BEA20AB06E92E69466415382563933AAC1BCBD74848677F752D8FDF7F736DBBC4D6B41458D335821F17F30C5312C63DE1DE21CC77435025DD68D5D380BE9F009A62FBE37A59C3E233F199AD55AB3215D04869F0D29ECFECF86544C287E249EF04A3A1C820A6280EF44AF3F5FB5CF3949B26D4F875A37B7CD7C3B6B8069BA9C3116BA249D059AF0571EBCA8CB0F3E9CD51EC9C87A234743A06360E8446C7950027DB365A3BAA5E7D8C71C5B676E161E9C22E6224F552374C8EB2158B1A36A045B4545EAC2FD4BE109968E63D10889431083994A2857A705A12E8990DFAA25A965C72D4CF4BDE421D79CE30853C1B055135D98EB83204280928F34286D1A1A3B158B6B364483D76A1AF336177635EE4A6C622B36D9E23B1BEC32F7DF5EC4309B35B605E36C564917018C01BD5D18687E56E96A00F2C165DF0C543A31190C3477A9B662A0758DEDC040EB2A7975069A1D51BB8EBF745EDD37F3AC1F94B7BFAD37AA6B07B659D3C79E9966E67B421B0E2D70AC9AE7F95C54E227AE399C819CF9F98CE5AEAE6C22027C86793D64B3F277B57EA8D30C221B5113E0CAD05A40F3AB40054899503D842B62798DD2E55E440FD822EED6089BAFFD126CC50654ECEA956885D07C712A1B67A7D347D9B3D21A1423EF7458A8E0680C425EBCEA1DEFA014535C56554C175FB88F375CE9583E180D0A6AF15C0D4A2A3A33B8960AD36CD792CE21EBE3926DA425C97D3268A9E8CCE05ACA6DB45D491AA7A0875BB0918AEA5BF84093AD887494BB4D593776B25CA9BC60EC1892AAC6D7288A085D5692ACF2126B9665584D7F98F54F3C0A320CC7659AFCA352DA92130F63B4C4522DB006492F49CCF839E2688E449C67EA050A99766F352CFF05CBEAF6A90E62B10F14D4E277718DABB9C0AFEDB6AA3B92A35C421F03E1D3A481748D05E89B5B22ED0DF928D6C4EEA7A19F04D4EC62995B673778D5F659898A307624F915174AD197E2E8D695DF6968D46931D830953ECCFA4365863029BCF040AB2A3779A56694224855453105AE7636742667A6E770C99E62FFD16A457899B995A7A75401F2A29E18950C0705AC52D71DB59E8452C5ACD7744794324DAA9052550F29ABF9243521AB156BE11934AAA7E8CE41CD20A9A2ABB5DD9135B92455684DF51AD81A99E5BAEEA89A74932AB0A6BA3BF62AF7445E46F778F7329E5F36D8BEB243EE66FB9701E365D6C461B6BFCA5D7E15A852DC132BBFAD57C0F2F2BDB427E3496F037BCAA21B9BD99301C3BCFAD4EEC1EB8B4FE3E5BD19B376B95D5BE09B2EF7CD78FDACF6456D4339EAC92425F7F2C8271DEDC6F931ABFD518D72EECA486CAB50236CEECF8CE360240846B35FFDA94FB058CA0B826B44C902339E2574D8C78747C7D2AB9CFD7921E330E6F99A63AAE9994C7DCCB6909B451F51EC3EA058CD94D8E015C90A5409425F510F3F4DECDFD256A7693C43FC4A8B0FAC2BF689925F13A8B88F136CFDAE667E0E9355DFE11D4729E8EFAFE2814477955FFDEF4BD6F4C0BA8D613A9D5A8792A2D719FEFAB3895ED2644D379066EDC714AF77B6D55E296851A5D9B2FEA38439E1833C4828A4FC67809EBEEF2B9AF6D1C146889A870543E10DA242D3C38175B08C8F063CF8E4E9A3817E9DD53F22584734E3030242FB83C9CF07BA2F4345CB1DEE439A23D33696A454CFADE9D71BE562EE7A6F52B2B4379AE86A26760FB841B3AD3773515E5916F3605BA726497930EC5DDAFD8B6726EF4B32F2CA69DF6D0EF236D38E1BAE95FE56D9C67B901FA7C9F7D97D4EF1B66DCD1403DEF3C4CC7E99C37B666CF936BFFBFCE06D1B9B2940BCE7C6D62B0B78CF6C6D57FBE78E2DADF316BAF39C5E353DC97097A38B22B7E5EC66217738FECF433082CCA3CC9E5AEA93C49A125C5B18AE48CC4CCDD969326365E2287C158A66B6FDFA9A6FF88D9DCD699AD91A723A9B78E7EB7F23EF9CA699B721537217D9C6DA5C455D0678CB3AD69444F59AB28B6B3D6949666FF3591B2FE65F5332F1204AA9CD1EC3EDF2EBC91D1E4425434E9D1EB9C2EA4531EC9D95BFD108FB3723CB1584F88B8D14BBB55DB3A4B9A28BB0D8BC25890A122942738D39F2604B3D8B3959209743B50840A76FC5D3A09EB8069963EF8ADE263C4A3874190773BF16F0124E4013FF3421BA2EF3F836125F6C882E80984404EE6FE9CF09F1BD52EE4B4D4CC80021BC8B3CDC2BC6928BB0EFF2B944BA096947A05C7DA553748F83C80730764B67E811AF231B98DF07BC44EEF32A026802691F88BADAC7E7042D6314B01C63D51E3EC186BDE0E9FDFF01F1DF33B4AA540000, N'6.2.0-61023')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Google', N'112441753183189975858', N'12354611-fb85-49fb-b59a-f90a29223f04')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Google', N'112401431899565868307', N'6fa523fc-5711-49fe-bd68-333bc1bd3235')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Google', N'112319971043548942179', N'7d6a4517-f32d-4925-aa47-5c0446597716')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Google', N'113895727756669839209', N'c2c50ecb-d7cf-4b3e-85e5-503c16de2a78')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'12354611-fb85-49fb-b59a-f90a29223f04', N'timothyaxford2@gmail.com', 0, NULL, N'5711f34a-84ca-4546-97a4-11336e97fc33', NULL, 0, 0, NULL, 1, 0, N'timothyaxford2@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'561b6d10-264a-4f13-918d-cf42283219f0', N'fuzzybear@wuzzy.com', 0, N'AMalGFzgCxAp0oFqbNcPJcb4MHsiI/Q7diLU1sKS7cD/SlG+x30Kt9cXq90Yo6dgAA==', N'72bf41e8-0cce-4f9f-b8cf-b7f4b29b6ae9', NULL, 0, 0, NULL, 1, 0, N'fuzzybear@wuzzy.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'6c9674b5-d287-4d8f-bf48-4a69b8e2e1a1', N'fuzz@buzz.com', 0, N'ACvx1j07/Kz/KF7BZd8z/4duPje6s7FZUgMhuaF1gT0l4PwZiSq3tA3LHDJKLXVmOQ==', N'bfc6c1d3-b5e7-46ce-aea4-f692293e88dc', NULL, 0, 0, NULL, 1, 0, N'fuzz@buzz.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'6ec788ef-153e-4634-abcb-af2bf5bf9173', N'ashley.hoobler@gmail.com', 0, N'AIihuEVWZ2zwYriVEz9z0hqNM1b8KScqTX/Dr8xC6ro/2O7Y4Yd4NIBZpBUikltQCQ==', N'ef849bdc-29a7-48b7-87f1-63135283b26e', NULL, 0, 0, NULL, 1, 0, N'ashley.hoobler@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'6fa523fc-5711-49fe-bd68-333bc1bd3235', N'pawsitivecareuser@gmail.com', 0, NULL, N'd4b8acf7-d09d-42f0-956d-3d93e2bcb1f3', NULL, 0, 0, NULL, 1, 0, N'pawsitivecareuser@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'7d6a4517-f32d-4925-aa47-5c0446597716', N'ashleyhoobler@gmail.com', 0, NULL, N'72f3d8eb-2207-4f6c-84f2-b6a135633ea2', NULL, 0, 0, NULL, 1, 0, N'ashleyhoobler@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c2c50ecb-d7cf-4b3e-85e5-503c16de2a78', N'blowrie8@gmail.com', 0, NULL, N'ba4b631c-2dcc-44c1-8f4d-c48c3b0f69f6', NULL, 0, 0, NULL, 1, 0, N'blowrie8@gmail.com')
SET IDENTITY_INSERT [dbo].[Documents] ON 

INSERT [dbo].[Documents] ([DocumentID], [DocumentTitle], [DocumentImage], [PetID]) VALUES (2, N'Vaccination Receipt', N'/Images/VaccinationReceipt184643550.jpg', 8)
INSERT [dbo].[Documents] ([DocumentID], [DocumentTitle], [DocumentImage], [PetID]) VALUES (3, N'Rabies Certificate', N'/Images/RabiesCertificate184615470.jpg', 8)
INSERT [dbo].[Documents] ([DocumentID], [DocumentTitle], [DocumentImage], [PetID]) VALUES (4, N'Vet Bill', N'/Images/VetBill184706666.jpg', 8)
SET IDENTITY_INSERT [dbo].[Documents] OFF
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([ImageID], [ImageTitle], [ImagePath], [PetID]) VALUES (1007, N'Rabies Certificate', N'RabiesCertificate184615470.jpg', 0)
INSERT [dbo].[Image] ([ImageID], [ImageTitle], [ImagePath], [PetID]) VALUES (1008, N'Vaccination Receipt ', N'VaccinationReceipt184643550.jpg', 0)
INSERT [dbo].[Image] ([ImageID], [ImageTitle], [ImagePath], [PetID]) VALUES (1009, N'Vet Bill', N'VetBill184706666.jpg', 0)
INSERT [dbo].[Image] ([ImageID], [ImageTitle], [ImagePath], [PetID]) VALUES (1010, N'Tootie', N'ScottishTerrier184636146.jpg', 0)
INSERT [dbo].[Image] ([ImageID], [ImageTitle], [ImagePath], [PetID]) VALUES (1011, N'Apple Jack', N'HollandLop184659930.jpg', 0)
INSERT [dbo].[Image] ([ImageID], [ImageTitle], [ImagePath], [PetID]) VALUES (1012, N'Poid', N'MiniLop184719911.jpg', 0)
INSERT [dbo].[Image] ([ImageID], [ImageTitle], [ImagePath], [PetID]) VALUES (1013, N'Stormy', N'kitty184739056.jpg', 0)
INSERT [dbo].[Image] ([ImageID], [ImageTitle], [ImagePath], [PetID]) VALUES (1014, N'Tootie 2', N'ScottishTerrier185134500.jpg', 0)
SET IDENTITY_INSERT [dbo].[Image] OFF
SET IDENTITY_INSERT [dbo].[Pet] ON 

INSERT [dbo].[Pet] ([PetID], [PetName], [BirthDate], [PetType], [Breed], [PetPhoto], [WeightDate], [Weight], [IsFixed], [UserID]) VALUES (2, N'Titan', NULL, N'Snake', N'Ball Python', NULL, CAST(N'2018-01-01' AS Date), 2, 0, N'TJAX2')
INSERT [dbo].[Pet] ([PetID], [PetName], [BirthDate], [PetType], [Breed], [PetPhoto], [WeightDate], [Weight], [IsFixed], [UserID]) VALUES (3, N'Fuzzy', NULL, N'Bear', N'Grizzly', NULL, CAST(N'2018-01-01' AS Date), 200000, 1, N'fuzz@buzz.com')
INSERT [dbo].[Pet] ([PetID], [PetName], [BirthDate], [PetType], [Breed], [PetPhoto], [WeightDate], [Weight], [IsFixed], [UserID]) VALUES (4, N'lars', CAST(N'1965-10-01' AS Date), N'Dog', N'Bull Terrier', NULL, CAST(N'2018-01-01' AS Date), 86, 0, N'12354611-fb85-49fb-b59a-f90a29223f04')
INSERT [dbo].[Pet] ([PetID], [PetName], [BirthDate], [PetType], [Breed], [PetPhoto], [WeightDate], [Weight], [IsFixed], [UserID]) VALUES (5, N'ThePet', CAST(N'2018-01-02' AS Date), N'Dog', N'Dog', NULL, CAST(N'2018-01-04' AS Date), 30, 1, N'blowrie8@gmail.com')
INSERT [dbo].[Pet] ([PetID], [PetName], [BirthDate], [PetType], [Breed], [PetPhoto], [WeightDate], [Weight], [IsFixed], [UserID]) VALUES (6, N'George', CAST(N'2017-01-02' AS Date), N'Dog', N'Poodle', NULL, CAST(N'2017-04-07' AS Date), 210, 0, N'ashley.hoobler@gmail.com')
INSERT [dbo].[Pet] ([PetID], [PetName], [BirthDate], [PetType], [Breed], [PetPhoto], [WeightDate], [Weight], [IsFixed], [UserID]) VALUES (7, N'george', CAST(N'2017-01-02' AS Date), N'dog', N'poodle', NULL, CAST(N'2017-01-04' AS Date), 210, 0, N'ashleyhoobler@gmail.com')
INSERT [dbo].[Pet] ([PetID], [PetName], [BirthDate], [PetType], [Breed], [PetPhoto], [WeightDate], [Weight], [IsFixed], [UserID]) VALUES (8, N'Tootie', CAST(N'2009-02-04' AS Date), N'Dog', N'Scottish Terrier', N'/Images/ScottishTerrier184636146.jpg', CAST(N'2017-05-30' AS Date), 15, 0, N'pawsitivecareuser@gmail.com')
INSERT [dbo].[Pet] ([PetID], [PetName], [BirthDate], [PetType], [Breed], [PetPhoto], [WeightDate], [Weight], [IsFixed], [UserID]) VALUES (9, N'Apple Jack', CAST(N'2015-09-17' AS Date), N'Rabbit', N'Holland Lop', N'/Images/HollandLop184659930.jpg', CAST(N'2018-03-26' AS Date), 4, 0, N'pawsitivecareuser@gmail.com')
INSERT [dbo].[Pet] ([PetID], [PetName], [BirthDate], [PetType], [Breed], [PetPhoto], [WeightDate], [Weight], [IsFixed], [UserID]) VALUES (10, N'Poid', CAST(N'2010-12-23' AS Date), N'Rabbit', N'Mini Lop', N'/Images/MiniLop184719911.jpg', CAST(N'2018-04-17' AS Date), 6, 0, N'pawsitivecareuser@gmail.com')
INSERT [dbo].[Pet] ([PetID], [PetName], [BirthDate], [PetType], [Breed], [PetPhoto], [WeightDate], [Weight], [IsFixed], [UserID]) VALUES (11, N'Stormy', CAST(N'2013-04-28' AS Date), N'Cat', NULL, N'/Images/kitty184739056.jpg', CAST(N'2015-06-10' AS Date), 10, 1, N'pawsitivecareuser@gmail.com')
SET IDENTITY_INSERT [dbo].[Pet] OFF
SET IDENTITY_INSERT [dbo].[Surgery] ON 

INSERT [dbo].[Surgery] ([SurgeryID], [SurgeryDate], [SurgeryDescription], [PetID]) VALUES (1, CAST(N'2017-05-09' AS Date), N'Gallbladder removal ', 8)
INSERT [dbo].[Surgery] ([SurgeryID], [SurgeryDate], [SurgeryDescription], [PetID]) VALUES (2, CAST(N'2016-03-10' AS Date), N'Paw Sutures ', 11)
INSERT [dbo].[Surgery] ([SurgeryID], [SurgeryDate], [SurgeryDescription], [PetID]) VALUES (3, CAST(N'2017-08-20' AS Date), N'Stomach Surgery', 9)
SET IDENTITY_INSERT [dbo].[Surgery] OFF
SET IDENTITY_INSERT [dbo].[Vaccinations] ON 

INSERT [dbo].[Vaccinations] ([VaccinationsID], [VaccinationType], [DateReceived], [DueDate], [PetID]) VALUES (1, N'Rabies Vaccination', CAST(N'2016-05-19' AS Date), CAST(N'2018-05-19' AS Date), 8)
INSERT [dbo].[Vaccinations] ([VaccinationsID], [VaccinationType], [DateReceived], [DueDate], [PetID]) VALUES (2, N'Distemper Vaccination', CAST(N'2017-04-01' AS Date), CAST(N'2018-04-01' AS Date), 8)
SET IDENTITY_INSERT [dbo].[Vaccinations] OFF
SET IDENTITY_INSERT [dbo].[Visit] ON 

INSERT [dbo].[Visit] ([VisitsID], [ClinicName], [VisitCost], [VisitDescription], [VisitDate], [PetID]) VALUES (1, N'Cleveland Vet', 120, N'Shots', CAST(N'2018-02-04' AS Date), 8)
SET IDENTITY_INSERT [dbo].[Visit] OFF
SET IDENTITY_INSERT [dbo].[Weight] ON 

INSERT [dbo].[Weight] ([WeightID], [WeightDate], [Weight], [PetID]) VALUES (6, CAST(N'2017-02-04' AS Date), 16, 8)
INSERT [dbo].[Weight] ([WeightID], [WeightDate], [Weight], [PetID]) VALUES (7, CAST(N'2018-03-25' AS Date), 19, 8)
INSERT [dbo].[Weight] ([WeightID], [WeightDate], [Weight], [PetID]) VALUES (8, CAST(N'2018-02-05' AS Date), 3, 9)
INSERT [dbo].[Weight] ([WeightID], [WeightDate], [Weight], [PetID]) VALUES (9, CAST(N'2018-03-06' AS Date), 9, 10)
INSERT [dbo].[Weight] ([WeightID], [WeightDate], [Weight], [PetID]) VALUES (10, CAST(N'2017-02-03' AS Date), 13, 11)
INSERT [dbo].[Weight] ([WeightID], [WeightDate], [Weight], [PetID]) VALUES (11, CAST(N'2017-09-20' AS Date), 12, 11)
INSERT [dbo].[Weight] ([WeightID], [WeightDate], [Weight], [PetID]) VALUES (12, CAST(N'2018-04-06' AS Date), 9, 10)
INSERT [dbo].[Weight] ([WeightID], [WeightDate], [Weight], [PetID]) VALUES (13, CAST(N'2017-07-20' AS Date), 8, 9)
INSERT [dbo].[Weight] ([WeightID], [WeightDate], [Weight], [PetID]) VALUES (14, CAST(N'2018-04-17' AS Date), 100, 8)
SET IDENTITY_INSERT [dbo].[Weight] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/17/2018 11:46:23 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 4/17/2018 11:46:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 4/17/2018 11:46:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 4/17/2018 11:46:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 4/17/2018 11:46:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/17/2018 11:46:23 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Pet] FOREIGN KEY([PetID])
REFERENCES [dbo].[Pet] ([PetID])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_Pet]
GO
ALTER TABLE [dbo].[Image]  WITH NOCHECK ADD  CONSTRAINT [FK_Image_Pet] FOREIGN KEY([PetID])
REFERENCES [dbo].[Pet] ([PetID])
GO
ALTER TABLE [dbo].[Image] NOCHECK CONSTRAINT [FK_Image_Pet]
GO
ALTER TABLE [dbo].[Pet]  WITH NOCHECK ADD  CONSTRAINT [FK_Pet_AspNetUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Pet] NOCHECK CONSTRAINT [FK_Pet_AspNetUsers]
GO
ALTER TABLE [dbo].[Surgery]  WITH CHECK ADD  CONSTRAINT [FK_Surgery_Pet] FOREIGN KEY([PetID])
REFERENCES [dbo].[Pet] ([PetID])
GO
ALTER TABLE [dbo].[Surgery] CHECK CONSTRAINT [FK_Surgery_Pet]
GO
ALTER TABLE [dbo].[Vaccinations]  WITH CHECK ADD  CONSTRAINT [FK_Vaccinations_Pet] FOREIGN KEY([PetID])
REFERENCES [dbo].[Pet] ([PetID])
GO
ALTER TABLE [dbo].[Vaccinations] CHECK CONSTRAINT [FK_Vaccinations_Pet]
GO
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD  CONSTRAINT [FK_Visit_Pet] FOREIGN KEY([PetID])
REFERENCES [dbo].[Pet] ([PetID])
GO
ALTER TABLE [dbo].[Visit] CHECK CONSTRAINT [FK_Visit_Pet]
GO
ALTER TABLE [dbo].[Weight]  WITH CHECK ADD  CONSTRAINT [FK_Weight_Pet] FOREIGN KEY([PetID])
REFERENCES [dbo].[Pet] ([PetID])
GO
ALTER TABLE [dbo].[Weight] CHECK CONSTRAINT [FK_Weight_Pet]
GO
USE [master]
GO
ALTER DATABASE [PCDb] SET  READ_WRITE 
GO
