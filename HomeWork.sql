USE [TestDB]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 04.09.2021 23:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Client_Id] [int] NOT NULL,
	[Account_Number] [nvarchar](200) NOT NULL,
	[Currency_Id] [int] NOT NULL,
	[Created_At] [datetime] NOT NULL,
	[Updated_At] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 04.09.2021 23:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](200) NOT NULL,
	[LastName] [nvarchar](200) NOT NULL,
	[MiddleName] [nvarchar](200) NULL,
	[BirthDate] [datetime] NOT NULL,
	[Created_At] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currencies]    Script Date: 04.09.2021 23:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currencies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Currency] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([Id], [Client_Id], [Account_Number], [Currency_Id], [Created_At], [Updated_At]) VALUES (1, 1, N'1', 1, CAST(N'2021-09-04T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Accounts] ([Id], [Client_Id], [Account_Number], [Currency_Id], [Created_At], [Updated_At]) VALUES (9, 2, N'1', 2, CAST(N'2021-09-04T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Accounts] ([Id], [Client_Id], [Account_Number], [Currency_Id], [Created_At], [Updated_At]) VALUES (10, 3, N'1', 3, CAST(N'2021-09-04T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [MiddleName], [BirthDate], [Created_At]) VALUES (1, N'Asad', N'Asadov', N'Asadovich', CAST(N'2000-02-02T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [MiddleName], [BirthDate], [Created_At]) VALUES (2, N'Ikrom', N'Ikromov', N'Ikromovich', CAST(N'1989-01-01T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [MiddleName], [BirthDate], [Created_At]) VALUES (3, N'Murod', N'Murodov', N'Murodovich', CAST(N'1994-04-04T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Currencies] ON 

INSERT [dbo].[Currencies] ([Id], [Currency]) VALUES (1, N'1000')
INSERT [dbo].[Currencies] ([Id], [Currency]) VALUES (2, N'2600')
INSERT [dbo].[Currencies] ([Id], [Currency]) VALUES (3, N'1450')
SET IDENTITY_INSERT [dbo].[Currencies] OFF
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD FOREIGN KEY([Client_Id])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD FOREIGN KEY([Currency_Id])
REFERENCES [dbo].[Currencies] ([Id])
GO
