USE [donation]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/23/2023 5:54:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 3/23/2023 5:54:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[application_id] [int] IDENTITY(1,1) NOT NULL,
	[applicationDate] [datetime] NOT NULL,
	[tool_id] [int] NULL,
	[user_id] [nvarchar](128) NULL,
	[applicationStatus] [bit] NULL,
 CONSTRAINT [PK__Applicat__3BCBDCF263B1CEF9] PRIMARY KEY CLUSTERED 
(
	[application_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/23/2023 5:54:54 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/23/2023 5:54:54 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/23/2023 5:54:54 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/23/2023 5:54:54 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/23/2023 5:54:54 PM ******/
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
	[address] [text] NULL,
	[image] [text] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cash]    Script Date: 3/23/2023 5:54:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cash](
	[coupon_id] [int] IDENTITY(1,1) NOT NULL,
	[donorName] [varchar](50) NULL,
	[amount] [decimal](18, 0) NULL,
	[dateDonated] [date] NULL,
	[city_id] [int] NULL,
	[store_id] [int] NULL,
	[user_id] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[coupon_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[city]    Script Date: 3/23/2023 5:54:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[cityName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 3/23/2023 5:54:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[message] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[coupon_stores]    Script Date: 3/23/2023 5:54:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coupon_stores](
	[store_id] [int] IDENTITY(1,1) NOT NULL,
	[storeName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[store_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tool]    Script Date: 3/23/2023 5:54:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tool](
	[tool_id] [int] IDENTITY(1,1) NOT NULL,
	[donorName] [varchar](50) NULL,
	[category] [varchar](50) NOT NULL,
	[quality] [varchar](20) NOT NULL,
	[dateDonated] [date] NOT NULL,
	[phone] [int] NULL,
	[email] [varchar](50) NULL,
	[address] [varchar](100) NULL,
	[city_id] [int] NULL,
	[comment] [text] NULL,
	[status] [bit] NULL,
	[image] [text] NULL,
 CONSTRAINT [PK__Tool__28DE264F278D461F] PRIMARY KEY CLUSTERED 
(
	[tool_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[volunteer]    Script Date: 3/23/2023 5:54:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[volunteer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](250) NULL,
	[city] [varchar](50) NULL,
	[adress] [varchar](50) NULL,
	[phone] [int] NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202301061740078_InitialCreate', N'Project.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E3F40FF83A0A7F620B57239BBD813D85BA44ED2137473C13ABB386F0B5AA21D75254A95A83441D15FD687FEA4F317CE50378B3789B215DB29165858E4F09BE170480E87C3FCEFCFBFC63F3C8581F58893D48FC8C43E1A1DDA16266EE4F96439B133BAF8FE9DFDC3FB6FFE31BEF0C227EB734577C2E8A0254927F603A5F1A9E3A4EE030E513A0A7D3789D26841476E143AC88B9CE3C3C37F3B47470E06081BB02C6BFC3123D40F71FE019FD388B838A6190AAE230F0769590E35B31CD5BA41214E63E4E2897D9744BF60978E0A4ADB3A0B7C0452CC70B0B02D4448441105194F3FA5784693882C673114A0E0FE39C640B740418A4BD94F57E4A6DD383C66DD70560D2B28374B6914F6043C3A29F5E288CDD7D2AE5DEB0D3477011AA6CFACD7B9F626F69587F3A28F51000A10199E4E8384114FECEB9AC5591ADF603AAA1A8E0AC8CB04E07E8B92AFA326E28165DCEEA0B6A3E3D121FB77604DB38066099E109CD1040507D65D360F7CF767FC7C1F7DC5647272345F9CBC7BF31679276FFF854FDE347B0A7D053AAE008AC04C629C806C7851F7DFB61CBE9D2336AC9B35DA145A015B8229615BD7E8E903264BFA0093E5F89D6D5DFA4FD8AB4A4AE3FA447C9841D08826197CDE644180E601AEEB9D569EECFF16AEC76FDE0EC2F5063DFACB7CE805FE30711298571F7190D7A60F7E5C4C2F6EBCBF9464974914B26FDEBE8ADA2FB3284B5CD699484B728F9225A6BC74636765BC4626CDA08637EB0A75FF4D9B492A9BB7929475689D9950B1D8F66CA8E47D59BEC6167716C73078B969318DB4191CBF518D8496600745FDCA648E4C4D864057FECE2BE04588FC608025D0800B781E0B3F0971DDCB1F233038447ACB7C87D2145600EF3F287D68111D7E0E20FA0CBB59028639A3288C5F9CDBDD4344F04D16CE99BD6F8FD7604373FF5B74895C1A251784B5DA18EF43E47E8D327A41BC7344F127EA5680ECF3DE0FCD010611E7CC75719A5E8231636F1A81635D015E117A72DC1B8E2D4EBB7641A601F243B50F222CA35F2AD2951FA2A6907C110D99CA1F6913F543B4F48999A815A95ED482A253D492ACAFA80CCC4CD292522F684ED0296741359887978FD0F02E5E0EBBFF3EDE669BB76E2D68A871062B24FE09139CC032E6DD214A7142562360B26EECC259C8878F317DF1BD29E7F41905D9D0ACD69A0DF92230FC6CC861F77F36E46242F1A3EF31AFC4E0E0531103BC11BDFA4CD53DE704C9B63D1DB86E6E9BF976D600DD74394BD3C8F5F359A0087995010B5E7EF0E1ACEEE845D11B3102021D0343F7D9960725D0375B34AA5B728E034CB175E61621C1294A5DE4C96A840E793D04AB76548560AB48082FDC3F259E60E938618D103B04A530537D42E569E113D78F51D0A925A1A5E116C6FA5EF3106BCE718C0963D8A90913E6EAC00713A0E6230C4A9786C64EC3E2DA0D51E3B5EAC6BCCB855D8DBB148FD88A4D76F8CE1ABB2CFDB71731CC768D6DC138DB556222803688B70B032DCF2AA606201E5CF6CD40851393C6404B976A2B06CA6B6C0706CAABE4D519687144351D7FE1BCBA6FE6C91F94B7BFADB7AA6B07B6C9E963CF4CB3F03DA10D85163891CDF37CCE2AF113551CCE40CEF27C9696AEAE68220C7C86291FB259F9BB4A3FD46907118DA80D7065681DA0E5F59F04244DA81EC255B1BC56E94A2FA2076C15776B852DD77E01B661033276F31AB441A8BF2C158DD3E8F451F7ACB606C9C88D0E0B0D1C8541888B17DF7103A5E8E2B2B2624C7CE13EDE70A363E560B428A8C373D528A9EACCE05AAA4CB35B4B2A87AC8F4BB6919604F749A3A5AA33836BA9B4D16E25299C821E6EC1462AE2B7F081265B15E9A8779BBA6EEC14995165C1D8D1A4508DAF511CFB64D948A92A4BAC59914F35FD7ED63FD9282C301C3755E41CD5D2D69C6894A025166A8135487AE927293D4714CD118BF34CBD502253EEAD9AE5BF62D9DC3EE541ACF6818A9AFDAEC367CD4B7B6E9F951D91B2FD25F42E64DE4C1E42578CBDBAB9C5D2DB50801245D47E1A055948F4CE95BE757177D76C5F94C8086347905F729E244D492E2EAF76A3419127C4000354FB2DEB0F921E42A7EACAEB6C2A5BE789EA51AAC054134517ACDAD9A0E91C18E38112FDC2FEE3D489F032F3A94C46690294453D311AF90C1258A3CE1C954F396962F235E688425E491352A8EA2165337B8413B259B1169E46A36A0A730E72BE48135DAE354756648E34A115D56B602B6416EBCC5115C9254D6045B539F62AD3445C40F778C7D29E56D6DAB28AC3EC667B9606E36556C361B6BCC69D7D13A851DC13ABBC9597C0CAF2BDB424ED896E2D4B2AE2179B59920643BFE27037DDFC82D37A3DAFC7E4AEAFB945BDEDFA5E8FD7CF5E5FD42AA4C39C485273AF0F75C2E16D5C1EA4BA1FC94827AB82C4B62A35C286FE9C521C8E18C168F66B300D7CCC96EF8AE01A117F81535AA46CD8C78747C7C25B9BFD79F7E2A4A917280EA2BAC72FFC986D21FB8A3CA2C47D40899C0BB1C1DB9015A81466BE221E7E9AD8BFE7AD4EF38805FB95171F5857E927E2FF9A41C57D9261EB0F39B773985C7983D719B5A07FBC8A670FE62ABFFAEF97A2E981759BC0743AB50E0545AF33FCFC63885ED2144D379066ED2712AF77B671EF1094A8C26C59FFD9C1DCA7833C39A8A4FC36444FDFF5154DF9AC602344C5D381A1F00651A1EE69C03A58DA67011E7CD2FC5940BFCEAA9F09AC239AF689804FFA83890F04CC97A1AAE50EF721C561691B4B52AEE7CE04EB8DB22D77BD374979D81B4D7439D7BA07DCA0F9D49BB928AF2C4F79B0AD5391863C18F62EEDFEC5738FF725DD78E5B4EF36CB789B89C52D97487FAB7CE23DC8805364F4EC3E6B78DBB6A68BFEEE79EA65BFDCE03D33B6729BDF7D06F0B68D4D1720DE7363EB95E7BB67B6B6ABFD73C79666BC85EE3C6B574E40D2DCE2A8A2C85D59B945C81D8EFFF3088CA0F0288BC794EA34B0B614D60E862B123D537DFE99C8589A38125F89A29D6DBFBE961B7E6B674B9A76B69AACCD36DEE5FADFCABBA469E7ADC985DC453EB1321B5195E3DDB18EB5A54CBDA6FC61AE271DE9EA5D3E6BEB95FC6B4A171E4429DCECD1DC2EBF9EECE0415432E4D4E9910D2C5F14C3DED9F89B8BB07FA7FE7205C1FE0223C12EB76BD634576411559BB7205145224468AE31451E6CA96709F517C8A550CD02D0F96BF03CA8C7AE41E6D8BB22B7198D330A5DC6E13CE0025ECC0968E39FA73CF3328F6F63F6950ED10510D36781FB5BF263E6075E2DF7A52226A48160DE4519EE65634959D877F95C23DD44C410A8545FED14DDE3300E002CBD2533F488D7910DCCEF035E22F7791501D481740F04AFF6F1B98F96090AD31263D51E3EC186BDF0E9FDFF0107A86AB47A540000, N'6.4.4')
GO
SET IDENTITY_INSERT [dbo].[Application] ON 

INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (7, CAST(N'2023-01-12T17:18:29.920' AS DateTime), 57, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 1)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (8, CAST(N'2023-01-14T11:59:16.743' AS DateTime), 57, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 1)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (9, CAST(N'2023-01-14T11:59:25.707' AS DateTime), 57, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 1)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (10, CAST(N'2023-01-14T13:50:26.327' AS DateTime), 57, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 1)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (14, CAST(N'2023-01-14T17:41:30.597' AS DateTime), 60, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 1)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (15, CAST(N'2023-01-14T17:41:32.597' AS DateTime), 60, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (16, CAST(N'2023-01-14T17:41:33.620' AS DateTime), 60, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 1)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (17, CAST(N'2023-01-14T17:46:07.300' AS DateTime), 61, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 1)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (18, CAST(N'2023-01-14T17:46:12.847' AS DateTime), 60, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 1)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (19, CAST(N'2023-01-14T17:46:14.167' AS DateTime), 60, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 1)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (20, CAST(N'2023-01-14T18:00:15.310' AS DateTime), 60, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 1)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (21, CAST(N'2023-01-14T18:00:43.910' AS DateTime), 60, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (22, CAST(N'2023-01-14T18:00:47.573' AS DateTime), 61, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (23, CAST(N'2023-01-14T18:00:48.537' AS DateTime), 60, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (24, CAST(N'2023-01-14T18:00:49.297' AS DateTime), 60, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (25, CAST(N'2023-01-14T18:00:49.877' AS DateTime), 60, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (29, CAST(N'2023-01-15T13:21:37.637' AS DateTime), 57, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (30, CAST(N'2023-01-15T13:23:26.150' AS DateTime), 57, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (31, CAST(N'2023-01-15T13:24:15.167' AS DateTime), 57, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (32, CAST(N'2023-01-15T13:24:21.310' AS DateTime), 57, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (33, CAST(N'2023-01-15T13:27:02.390' AS DateTime), 57, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (34, CAST(N'2023-01-15T13:27:18.150' AS DateTime), 57, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (35, CAST(N'2023-01-15T13:27:25.317' AS DateTime), 59, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (36, CAST(N'2023-01-15T13:28:04.957' AS DateTime), 59, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (37, CAST(N'2023-01-15T13:28:08.170' AS DateTime), 59, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (38, CAST(N'2023-01-15T13:28:33.127' AS DateTime), 60, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (39, CAST(N'2023-01-15T13:29:56.997' AS DateTime), 57, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (40, CAST(N'2023-01-15T13:30:00.457' AS DateTime), 57, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (41, CAST(N'2023-01-15T13:30:23.840' AS DateTime), 57, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (42, CAST(N'2023-01-15T13:30:39.853' AS DateTime), 58, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (43, CAST(N'2023-01-15T13:30:41.233' AS DateTime), 59, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (44, CAST(N'2023-01-15T13:31:26.510' AS DateTime), 57, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
INSERT [dbo].[Application] ([application_id], [applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (45, CAST(N'2023-01-15T14:40:44.150' AS DateTime), 59, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', 0)
SET IDENTITY_INSERT [dbo].[Application] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'Organization')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4b729af8-202f-4a41-9b03-3d6c2be3758c', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3ada0bde-c20a-48f1-bd46-ce65ca168985', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4b729af8-202f-4a41-9b03-3d6c2be3758c', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'62c6eea3-443c-46df-a1ea-bb6da4941142', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'95b99114-3819-40e5-abbc-3342f4bd5ad5', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd8d1ccc2-6406-4ac0-883d-8c0d9acdf757', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e3d6ff05-8819-4cb3-9b9d-2f26de6bf77a', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', N'2')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [address], [image]) VALUES (N'2be3d247-78d3-4598-bfd1-ffe063176341', N'yazeed@gmail.com', 0, N'AN+0S+QRiuJ2iA++BPqg3r0/UqH2wXBuU1IaPZCfwg0IhjsJbW6wHWtqkvrjQvbJEg==', N'34a7d3b7-5f5c-4fc5-92b9-ba9e4c76763a', N'0772345678', 0, 0, NULL, 1, 0, N'Tools4Hunger', N'Hatem Al-Taa''''i Street', N'pngegg.png')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [address], [image]) VALUES (N'3ada0bde-c20a-48f1-bd46-ce65ca168985', N'faten@gmail.com', 0, N'ADiIe2TXIKg1p4NsiPZk/oKDva7aKObNES2awUul9BuhJtbnEoP4SohoSI4UJ0RD5w==', N'6cc5cb99-bdbe-4063-a8f5-5620fe5c2ce5', N'0772345678', 0, 0, NULL, 1, 0, N'Shelter', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [address], [image]) VALUES (N'4b729af8-202f-4a41-9b03-3d6c2be3758c', N'admin@gmail.com', 0, N'AL4wx3jg7+4pBf/nRXBxaKp/9oFH9jjNuQncrluxXw4mfJFpkWigjojH9UTn2e6Acw==', N'38307c7f-4434-4fa9-bc37-cc5dbfd270b3', N'0790552460', 0, 0, NULL, 1, 0, N'admin', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [address], [image]) VALUES (N'62c6eea3-443c-46df-a1ea-bb6da4941142', N'roaa@gmail.com', 0, N'AKKv6bafwrwekNfJfYGSOdwPfEmNoirWFLVz4FYNB3JCW2wjR1sWshzbEqoTL3ZuQA==', N'549dfb1b-f868-4ad9-8166-04a8892df88c', N'0772345678', 0, 0, NULL, 1, 0, N'Save the Children', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [address], [image]) VALUES (N'95b99114-3819-40e5-abbc-3342f4bd5ad5', N'sohaib@gmail.com', 0, N'AGwQh9ER6jeLyvrXm6O9fwOOxyJcmlJx0btbtPRLfxLzFEN4eBgasQBjaNyCCKs2rw==', N'4c819d72-2378-4570-8e17-4830a020016c', N'0772345678', 0, 0, NULL, 1, 0, N'Greenpeace', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [address], [image]) VALUES (N'd8d1ccc2-6406-4ac0-883d-8c0d9acdf757', N'change@gmail.com', 0, N'APH1yc6K2Obi05T2NwoQGU68FEQ3chC4RVepRNLDWspb3c3Zd3Jf6gBIaAWkV4UTgg==', N'41fa1b7c-aefb-4452-991b-4a8101a26ede', N'0772345678', 0, 0, NULL, 1, 0, N'Change', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [address], [image]) VALUES (N'e3d6ff05-8819-4cb3-9b9d-2f26de6bf77a', N'rogina@gmail.com', 0, N'AOu0f0J9f7/q6gYjUliE/G/Dyvqcex+qztnadQFDuRLb2zfPGs7x9VSl7Cx5HdXmIw==', N'21d01a0c-670c-49da-a3e9-924b48768473', N'0772345678', 0, 0, NULL, 1, 0, N'Habitat for Humanity', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [address], [image]) VALUES (N'ece1cdfd-aa61-4310-8fb3-9394351bbc40', N'ahmad@gmail.com', 0, N'AKXk6hIoesmScEHpAMhJZEMkEUegGhv1nCKK+HS/dPbRqo4ppUY5NGR7VJCfadqeuQ==', N'fac9c103-2dfd-443d-b7b8-c97457cb13a0', N'0772345666', 0, 0, NULL, 1, 0, N'Hope', N'Hatem Al-Taa''''i Street', N'donate.png')
GO
SET IDENTITY_INSERT [dbo].[Cash] ON 

INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (42, N'Yazeed Aldamen', CAST(250 AS Decimal(18, 0)), CAST(N'2023-01-11' AS Date), 1, 1, N'2be3d247-78d3-4598-bfd1-ffe063176341')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (43, N'Yazeed Aldamen', CAST(250 AS Decimal(18, 0)), CAST(N'2023-01-11' AS Date), 1, 1, N'2be3d247-78d3-4598-bfd1-ffe063176341')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (44, N'Yazeed Aldamen', CAST(789654 AS Decimal(18, 0)), CAST(N'2023-01-11' AS Date), 2, 1, N'2be3d247-78d3-4598-bfd1-ffe063176341')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (46, N'Yazeed Aldamen', CAST(34334 AS Decimal(18, 0)), CAST(N'2023-01-11' AS Date), 1, 3, N'e3d6ff05-8819-4cb3-9b9d-2f26de6bf77a')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (47, N'Yazeed Aldamen', CAST(100 AS Decimal(18, 0)), CAST(N'2023-01-12' AS Date), 2, 1, N'2be3d247-78d3-4598-bfd1-ffe063176341')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (48, N'Yazeed Aldamen', CAST(555 AS Decimal(18, 0)), CAST(N'2023-01-12' AS Date), 2, 1, N'2be3d247-78d3-4598-bfd1-ffe063176341')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (49, N'Yazeed Aldamen', CAST(165 AS Decimal(18, 0)), CAST(N'2023-01-12' AS Date), 2, 1, N'2be3d247-78d3-4598-bfd1-ffe063176341')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (50, N'Yazeed Aldamen', CAST(250 AS Decimal(18, 0)), CAST(N'2023-01-12' AS Date), 1, 2, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (51, N'Yazeed Aldamen', CAST(100 AS Decimal(18, 0)), CAST(N'2023-01-12' AS Date), 1, 1, N'3ada0bde-c20a-48f1-bd46-ce65ca168985')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (52, N'Yazeed Aldamen', CAST(222 AS Decimal(18, 0)), CAST(N'2023-01-12' AS Date), 2, 2, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (53, N'Yazeed Aldamen', CAST(420 AS Decimal(18, 0)), CAST(N'2023-01-12' AS Date), 1, 3, N'95b99114-3819-40e5-abbc-3342f4bd5ad5')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (54, N'Yazeed Aldamen', CAST(420 AS Decimal(18, 0)), CAST(N'2023-01-12' AS Date), 1, 3, N'95b99114-3819-40e5-abbc-3342f4bd5ad5')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (55, N'Yazeed Aldamen', CAST(420 AS Decimal(18, 0)), CAST(N'2023-01-12' AS Date), 3, 3, N'2be3d247-78d3-4598-bfd1-ffe063176341')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (56, N'Yazeed Aldamen', CAST(562 AS Decimal(18, 0)), CAST(N'2023-01-12' AS Date), 7, 2, N'2be3d247-78d3-4598-bfd1-ffe063176341')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (57, N'Yazeed Aldamen', CAST(420 AS Decimal(18, 0)), CAST(N'2023-01-14' AS Date), 5, 2, N'95b99114-3819-40e5-abbc-3342f4bd5ad5')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (58, N'Yazeed Aldamen', CAST(250 AS Decimal(18, 0)), CAST(N'2023-01-14' AS Date), 2, 2, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (59, N'Yazeed Aldamen', CAST(250 AS Decimal(18, 0)), CAST(N'2023-01-14' AS Date), 1, 2, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (60, N'Yazeed Aldamen', CAST(250 AS Decimal(18, 0)), CAST(N'2023-01-14' AS Date), 2, 2, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (61, N'Yazeed Aldamen', CAST(420 AS Decimal(18, 0)), CAST(N'2023-01-14' AS Date), 2, 3, N'95b99114-3819-40e5-abbc-3342f4bd5ad5')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (62, N'Yazeed Aldamen', CAST(100 AS Decimal(18, 0)), CAST(N'2023-01-15' AS Date), 1, 1, N'ece1cdfd-aa61-4310-8fb3-9394351bbc40')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (63, N'Yazeed Aldamen', CAST(450 AS Decimal(18, 0)), CAST(N'2023-01-15' AS Date), 5, 2, N'3ada0bde-c20a-48f1-bd46-ce65ca168985')
INSERT [dbo].[Cash] ([coupon_id], [donorName], [amount], [dateDonated], [city_id], [store_id], [user_id]) VALUES (1063, N'Yazeed Aldamen', CAST(12345 AS Decimal(18, 0)), CAST(N'2023-01-27' AS Date), 3, 2, N'2be3d247-78d3-4598-bfd1-ffe063176341')
SET IDENTITY_INSERT [dbo].[Cash] OFF
GO
SET IDENTITY_INSERT [dbo].[city] ON 

INSERT [dbo].[city] ([city_id], [cityName]) VALUES (1, N'Irbid')
INSERT [dbo].[city] ([city_id], [cityName]) VALUES (2, N'Amman')
INSERT [dbo].[city] ([city_id], [cityName]) VALUES (3, N'Ajloun')
INSERT [dbo].[city] ([city_id], [cityName]) VALUES (4, N'Jarash')
INSERT [dbo].[city] ([city_id], [cityName]) VALUES (5, N'Zarqa')
INSERT [dbo].[city] ([city_id], [cityName]) VALUES (6, N'Mafraq')
INSERT [dbo].[city] ([city_id], [cityName]) VALUES (7, N'Aqaba')
INSERT [dbo].[city] ([city_id], [cityName]) VALUES (8, N'Karak')
INSERT [dbo].[city] ([city_id], [cityName]) VALUES (9, N'Madaba')
INSERT [dbo].[city] ([city_id], [cityName]) VALUES (10, N'Albalqa')
INSERT [dbo].[city] ([city_id], [cityName]) VALUES (11, N'Ma''an')
INSERT [dbo].[city] ([city_id], [cityName]) VALUES (12, N'Tafelah')
SET IDENTITY_INSERT [dbo].[city] OFF
GO
INSERT [dbo].[contact] ([name], [email], [message]) VALUES (N'Yazeed', N'yazeedaldamen98@outlook.com', N'Hello')
INSERT [dbo].[contact] ([name], [email], [message]) VALUES (N'qwerty', N'haithamalhazaymeh@gmail.com', N'hello yazeed')
INSERT [dbo].[contact] ([name], [email], [message]) VALUES (N'qwerty', N'haithamalhazaymeh@gmail.com', N'Hello77777')
INSERT [dbo].[contact] ([name], [email], [message]) VALUES (N'qwerty', N'haithamalhazaymeh@gmail.com', N'Hello777773457654345')
INSERT [dbo].[contact] ([name], [email], [message]) VALUES (N'qwerty', N'yazeedaldamen98@outlook.com', N'Hello')
INSERT [dbo].[contact] ([name], [email], [message]) VALUES (N'Yazeed', N'yazeedaldamen98@outlook.com', N'Hello Coach')
INSERT [dbo].[contact] ([name], [email], [message]) VALUES (N'Ahmad', N'something@gmail.com', N'hhhhhh')
INSERT [dbo].[contact] ([name], [email], [message]) VALUES (N'qwerty', N'qwertyu@gmail.com', N'danger')
INSERT [dbo].[contact] ([name], [email], [message]) VALUES (N'qwert', N'qwerty@gmail.com', N'qwerty')
INSERT [dbo].[contact] ([name], [email], [message]) VALUES (N'qwerty', N'yazeedaldamen98@outlook.com', N'qwertyu')
INSERT [dbo].[contact] ([name], [email], [message]) VALUES (N'Yazeed', N'yazeedaldamen98@outlook.com', N'qwerty')
INSERT [dbo].[contact] ([name], [email], [message]) VALUES (N'qwerty', N'yazeed@gmail.com', N'qwerty')
INSERT [dbo].[contact] ([name], [email], [message]) VALUES (N'sohaib', N'alrousansohaib@gmail.com', N'????? ????')
INSERT [dbo].[contact] ([name], [email], [message]) VALUES (N'qwerty', N'yazeedaldamen98@outlook.com', N'hello yazeed')
GO
SET IDENTITY_INSERT [dbo].[coupon_stores] ON 

INSERT [dbo].[coupon_stores] ([store_id], [storeName]) VALUES (1, N'Carfour')
INSERT [dbo].[coupon_stores] ([store_id], [storeName]) VALUES (2, N'C-Town')
INSERT [dbo].[coupon_stores] ([store_id], [storeName]) VALUES (3, N'SamehMall')
SET IDENTITY_INSERT [dbo].[coupon_stores] OFF
GO
SET IDENTITY_INSERT [dbo].[Tool] ON 

INSERT [dbo].[Tool] ([tool_id], [donorName], [category], [quality], [dateDonated], [phone], [email], [address], [city_id], [comment], [status], [image]) VALUES (57, N'Yazeed Aldamen', N'Electronics', N'Very Good', CAST(N'2023-01-12' AS Date), 772345678, N'yazeed@gmail.com', N'Hatem Al-Taa''i Street', 2, N'', 0, N'\Image\2.png')
INSERT [dbo].[Tool] ([tool_id], [donorName], [category], [quality], [dateDonated], [phone], [email], [address], [city_id], [comment], [status], [image]) VALUES (58, N'Yazeed Aldamen', N'Electronics', N'Very Good', CAST(N'2023-01-12' AS Date), 772345678, N'yazeed@gmail.com', N'Hatem Al-Taa''i Street', 2, N'', 0, N'\Image\9.jpg')
INSERT [dbo].[Tool] ([tool_id], [donorName], [category], [quality], [dateDonated], [phone], [email], [address], [city_id], [comment], [status], [image]) VALUES (59, N'Yazeed Aldamen', N'Utinsilis', N'Very Good', CAST(N'2023-01-12' AS Date), 772345678, N'yazeed@gmail.com', N'Hatem Al-Taa''i Street', 2, N'', 1, N'\Image\18.jpg')
INSERT [dbo].[Tool] ([tool_id], [donorName], [category], [quality], [dateDonated], [phone], [email], [address], [city_id], [comment], [status], [image]) VALUES (60, N'Yazeed Aldamen', N'Electronics', N'Decent', CAST(N'2023-01-12' AS Date), 772345678, N'yazeed@gmail.com', N'Hatem Al-Taa''i Street', 2, N'', 1, N'\Image\13.jpg')
INSERT [dbo].[Tool] ([tool_id], [donorName], [category], [quality], [dateDonated], [phone], [email], [address], [city_id], [comment], [status], [image]) VALUES (61, N'Yazeed Aldamen', N'Utinsilis', N'Decent', CAST(N'2023-01-12' AS Date), 772345678, N'yazeed@gmail.com', N'Hatem Al-Taa''i Street', 2, N'', 1, N'\Image\20.jpg')
INSERT [dbo].[Tool] ([tool_id], [donorName], [category], [quality], [dateDonated], [phone], [email], [address], [city_id], [comment], [status], [image]) VALUES (63, N'Yazeed Aldamen', N'Utinsilis', N'Very Good', CAST(N'2023-01-12' AS Date), 772345678, N'yazeed@gmail.com', N'Hatem Al-Taa''i Street', 5, N'', 0, N'\image\18.jpg')
INSERT [dbo].[Tool] ([tool_id], [donorName], [category], [quality], [dateDonated], [phone], [email], [address], [city_id], [comment], [status], [image]) VALUES (64, N'Yazeed Aldamen', N'Utinsilis', N'Decent', CAST(N'2023-01-14' AS Date), 772345678, N'yazeed@gmail.com', N'Hatem Al-Taa''i Street', 6, N'', 1, N'\Image\18.jpg')
INSERT [dbo].[Tool] ([tool_id], [donorName], [category], [quality], [dateDonated], [phone], [email], [address], [city_id], [comment], [status], [image]) VALUES (65, N'Yazeed Aldamen', N'Utinsilis', N'Very Good', CAST(N'2023-01-15' AS Date), 772345678, N'yazeed@gmail.com', N'Hatem Al-Taa''i Street', 4, N'Frying pans', 0, N'\Image\18.jpg')
INSERT [dbo].[Tool] ([tool_id], [donorName], [category], [quality], [dateDonated], [phone], [email], [address], [city_id], [comment], [status], [image]) VALUES (1065, N'admin 0', N'Utinsilis', N'Good', CAST(N'2023-03-23' AS Date), 790552460, N'admin@gmail.com', N'ssmaa', 1, N'', 0, N'\Image\OIP (1).jpeg')
SET IDENTITY_INSERT [dbo].[Tool] OFF
GO
SET IDENTITY_INSERT [dbo].[volunteer] ON 

INSERT [dbo].[volunteer] ([id], [name], [city], [adress], [phone], [email]) VALUES (1, N'Yazeed', N'Irbid', N'Bani Kenanah, Irbid', 778929863, N'yazeed@gmail.com')
INSERT [dbo].[volunteer] ([id], [name], [city], [adress], [phone], [email]) VALUES (2, N'Yazeed', N'Bani Kenanah, Irbid', N'Hatim,Irbid Bani Kenanah', 778929863, N'yazeed@gmail.com')
INSERT [dbo].[volunteer] ([id], [name], [city], [adress], [phone], [email]) VALUES (3, N'Yazeed', N'Bani Kenanah, Irbid', N'Hatim,Irbid Bani Kenanah', 778929863, N'yazeed@gmail.com')
INSERT [dbo].[volunteer] ([id], [name], [city], [adress], [phone], [email]) VALUES (4, N'Yazeed', N'Irbid', N'Hatim,Irbid Bani Kenanah', 778929863, N'yazeed@gmail.com')
INSERT [dbo].[volunteer] ([id], [name], [city], [adress], [phone], [email]) VALUES (13, N'Yazeed', N'Bani Kenanah, Irbid', N'Tlaa AlAli', 778929863, N'yazeed@gmail.com')
INSERT [dbo].[volunteer] ([id], [name], [city], [adress], [phone], [email]) VALUES (14, N'Yazeed', N'Irbid', N'Hatim,Irbid Bani Kenanah', 778929863, N'yazeed@gmail.com')
INSERT [dbo].[volunteer] ([id], [name], [city], [adress], [phone], [email]) VALUES (15, N'Ahmad', N'Irbid', N'Hatim,Irbid Bani Kenanah', 778929863, N'ahmad1@gmail.com')
INSERT [dbo].[volunteer] ([id], [name], [city], [adress], [phone], [email]) VALUES (16, N'Yazeed', N'Irbid', N'Hatim,Irbid Bani Kenanah', 778929863, N'yazeed@gmail.com')
INSERT [dbo].[volunteer] ([id], [name], [city], [adress], [phone], [email]) VALUES (1016, N'suhaib jehad alrousan', N'jordan', N'e', 790552430, N'alrousansohaib@gmail.com')
INSERT [dbo].[volunteer] ([id], [name], [city], [adress], [phone], [email]) VALUES (5, N'Ahmad', N'Amman', N'Tabrbour, Amman', 778929863, N'ahmad1@gmail.com')
INSERT [dbo].[volunteer] ([id], [name], [city], [adress], [phone], [email]) VALUES (6, N'Ahmad', N'Amman', N'Tabrbour, Amman', 778929863, N'ahmad1@gmail.com')
INSERT [dbo].[volunteer] ([id], [name], [city], [adress], [phone], [email]) VALUES (8, N'Roaa', N'Irbid', N'Irbid', 778929863, N'roaa1@gmail.com')
INSERT [dbo].[volunteer] ([id], [name], [city], [adress], [phone], [email]) VALUES (10, N'Faten', N'Irbid', N'Tlaa AlAli', 778929863, N'faten@gmail.com')
INSERT [dbo].[volunteer] ([id], [name], [city], [adress], [phone], [email]) VALUES (11, N'Yazeed', N'Irbid', N'Tlaa AlAli', 778929863, N'yazeed@gmail.com')
INSERT [dbo].[volunteer] ([id], [name], [city], [adress], [phone], [email]) VALUES (12, N'Faten', N'Irbid', N'Hatim,Irbid Bani Kenanah', 778929863, N'faten@gmail.com')
SET IDENTITY_INSERT [dbo].[volunteer] OFF
GO
ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF__Applicati__appli__6166761E]  DEFAULT ((0)) FOR [applicationStatus]
GO
ALTER TABLE [dbo].[Tool] ADD  CONSTRAINT [DF__Tool__status__44CA3770]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK__Applicati__tool___503BEA1C] FOREIGN KEY([tool_id])
REFERENCES [dbo].[Tool] ([tool_id])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK__Applicati__tool___503BEA1C]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK__Applicati__user___51300E55] FOREIGN KEY([user_id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK__Applicati__user___51300E55]
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
ALTER TABLE [dbo].[Cash]  WITH CHECK ADD FOREIGN KEY([city_id])
REFERENCES [dbo].[city] ([city_id])
GO
ALTER TABLE [dbo].[Cash]  WITH CHECK ADD FOREIGN KEY([store_id])
REFERENCES [dbo].[coupon_stores] ([store_id])
GO
ALTER TABLE [dbo].[Cash]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Tool]  WITH CHECK ADD  CONSTRAINT [FK__Tool__city_id__43D61337] FOREIGN KEY([city_id])
REFERENCES [dbo].[city] ([city_id])
GO
ALTER TABLE [dbo].[Tool] CHECK CONSTRAINT [FK__Tool__city_id__43D61337]
GO
