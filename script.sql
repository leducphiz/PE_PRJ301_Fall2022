USE [PRJ30X_PE_FALL2022_B1]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 10/30/2022 9:43:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[aid] [int] NOT NULL,
	[title] [varchar](150) NOT NULL,
	[published_date] [date] NOT NULL,
	[open_access] [bit] NOT NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Article_Author]    Script Date: 10/30/2022 9:43:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article_Author](
	[aid] [int] NOT NULL,
	[auid] [int] NOT NULL,
	[major_author] [bit] NOT NULL,
 CONSTRAINT [PK_Article_Author] PRIMARY KEY CLUSTERED 
(
	[aid] ASC,
	[auid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 10/30/2022 9:43:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[auid] [int] NOT NULL,
	[auname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[auid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paper]    Script Date: 10/30/2022 9:43:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paper](
	[pid] [int] NOT NULL,
	[title] [varchar](150) NOT NULL,
	[published_date] [date] NOT NULL,
	[open_access] [bit] NOT NULL,
 CONSTRAINT [PK_Paper] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paper_Author]    Script Date: 10/30/2022 9:43:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paper_Author](
	[pid] [int] NOT NULL,
	[auid] [int] NOT NULL,
	[corresponding_author] [bit] NOT NULL,
 CONSTRAINT [PK_Paper_Author] PRIMARY KEY CLUSTERED 
(
	[pid] ASC,
	[auid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/30/2022 9:43:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
 CONSTRAINT [PK_UserTBL] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Article] ([aid], [title], [published_date], [open_access]) VALUES (1, N'Article 1', CAST(N'2022-10-29' AS Date), 1)
INSERT [dbo].[Article] ([aid], [title], [published_date], [open_access]) VALUES (2, N'Article 2', CAST(N'2022-08-06' AS Date), 0)
INSERT [dbo].[Article] ([aid], [title], [published_date], [open_access]) VALUES (3, N'Article 3', CAST(N'2022-04-25' AS Date), 0)
INSERT [dbo].[Article] ([aid], [title], [published_date], [open_access]) VALUES (4, N'Article 4', CAST(N'2022-06-22' AS Date), 1)
INSERT [dbo].[Article] ([aid], [title], [published_date], [open_access]) VALUES (5, N'Article 5', CAST(N'2022-07-30' AS Date), 1)
GO
INSERT [dbo].[Article_Author] ([aid], [auid], [major_author]) VALUES (1, 1, 1)
INSERT [dbo].[Article_Author] ([aid], [auid], [major_author]) VALUES (1, 2, 0)
INSERT [dbo].[Article_Author] ([aid], [auid], [major_author]) VALUES (1, 3, 0)
INSERT [dbo].[Article_Author] ([aid], [auid], [major_author]) VALUES (1, 4, 1)
GO
INSERT [dbo].[Author] ([auid], [auname]) VALUES (1, N'Author 1')
INSERT [dbo].[Author] ([auid], [auname]) VALUES (2, N'Author 2')
INSERT [dbo].[Author] ([auid], [auname]) VALUES (3, N'Author 3')
INSERT [dbo].[Author] ([auid], [auname]) VALUES (4, N'Author 4')
INSERT [dbo].[Author] ([auid], [auname]) VALUES (5, N'Author 5')
GO
INSERT [dbo].[Paper] ([pid], [title], [published_date], [open_access]) VALUES (1, N'Paper 1', CAST(N'2022-10-29' AS Date), 1)
INSERT [dbo].[Paper] ([pid], [title], [published_date], [open_access]) VALUES (2, N'Paper 2', CAST(N'2022-08-06' AS Date), 0)
INSERT [dbo].[Paper] ([pid], [title], [published_date], [open_access]) VALUES (3, N'Paper 3', CAST(N'2022-04-25' AS Date), 0)
INSERT [dbo].[Paper] ([pid], [title], [published_date], [open_access]) VALUES (4, N'Paper 4', CAST(N'2022-06-22' AS Date), 1)
INSERT [dbo].[Paper] ([pid], [title], [published_date], [open_access]) VALUES (5, N'Paper 5', CAST(N'2022-07-30' AS Date), 1)
GO
INSERT [dbo].[Paper_Author] ([pid], [auid], [corresponding_author]) VALUES (1, 1, 1)
INSERT [dbo].[Paper_Author] ([pid], [auid], [corresponding_author]) VALUES (1, 2, 0)
INSERT [dbo].[Paper_Author] ([pid], [auid], [corresponding_author]) VALUES (1, 3, 1)
INSERT [dbo].[Paper_Author] ([pid], [auid], [corresponding_author]) VALUES (1, 4, 0)
GO
INSERT [dbo].[User] ([username], [password]) VALUES (N'mra', N'mra')
INSERT [dbo].[User] ([username], [password]) VALUES (N'mrb', N'mrb')
INSERT [dbo].[User] ([username], [password]) VALUES (N'mrc', N'mrc')
INSERT [dbo].[User] ([username], [password]) VALUES (N'mrd', N'mrd')
GO
ALTER TABLE [dbo].[Article_Author]  WITH CHECK ADD  CONSTRAINT [FK_Article_Author_Article] FOREIGN KEY([aid])
REFERENCES [dbo].[Article] ([aid])
GO
ALTER TABLE [dbo].[Article_Author] CHECK CONSTRAINT [FK_Article_Author_Article]
GO
ALTER TABLE [dbo].[Article_Author]  WITH CHECK ADD  CONSTRAINT [FK_Article_Author_Author] FOREIGN KEY([auid])
REFERENCES [dbo].[Author] ([auid])
GO
ALTER TABLE [dbo].[Article_Author] CHECK CONSTRAINT [FK_Article_Author_Author]
GO
ALTER TABLE [dbo].[Paper_Author]  WITH CHECK ADD  CONSTRAINT [FK_Paper_Author_Author] FOREIGN KEY([auid])
REFERENCES [dbo].[Author] ([auid])
GO
ALTER TABLE [dbo].[Paper_Author] CHECK CONSTRAINT [FK_Paper_Author_Author]
GO
ALTER TABLE [dbo].[Paper_Author]  WITH CHECK ADD  CONSTRAINT [FK_Paper_Author_Paper] FOREIGN KEY([pid])
REFERENCES [dbo].[Paper] ([pid])
GO
ALTER TABLE [dbo].[Paper_Author] CHECK CONSTRAINT [FK_Paper_Author_Paper]
GO
