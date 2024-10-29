USE [API]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/29/2024 7:53:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](256) NULL,
	[Company] [int] NULL,
	[IsAdmin] [bit] NOT NULL,
	[Salt] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Username], [Password], [Company], [IsAdmin], [Salt]) VALUES (8, N'test', N'a56d0f2473914a19d9147c6cba3c2b773631dc467cb466844636737a937ea19a', NULL, 0, N'4dEDIgycxAiNZGqFkrwU4Q==')
INSERT [dbo].[Users] ([ID], [Username], [Password], [Company], [IsAdmin], [Salt]) VALUES (10, N'admin', N'acdc669b1ecda3826cf9ea920a33abefa57d31cdc26a73ad4de8d86ce06176df', 1, 1, N'ZmO5mjSnt9U2di/lxBSw4g==')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Company] FOREIGN KEY([Company])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Company]
GO
