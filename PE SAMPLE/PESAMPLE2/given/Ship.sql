
CREATE DATABASE Ship
GO
USE [Ship]
GO
/****** Object:  Table [dbo].[Battles]    Script Date: 29/11/2016 9:34:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Battles](
	[name] [nchar](20) NOT NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_Batteles] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Classes]    Script Date: 29/11/2016 9:34:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[class] [nchar](20) NOT NULL,
	[type] [char](2) NULL,
	[country] [nchar](20) NULL,
	[numGuns] [int] NULL,
	[bore] [int] NULL,
	[displacement] [int] NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[class] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outcomes]    Script Date: 29/11/2016 9:34:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outcomes](
	[ship] [nchar](20) NOT NULL,
	[battle] [nchar](20) NOT NULL,
	[result] [nchar](10) NULL,
 CONSTRAINT [PK_Outcomes] PRIMARY KEY CLUSTERED 
(
	[ship] ASC,
	[battle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ships]    Script Date: 29/11/2016 9:34:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ships](
	[name] [nchar](20) NOT NULL,
	[class] [nchar](20) NULL,
	[launched] [int] NULL,
 CONSTRAINT [PK_Ships] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Battles] ([name], [date]) VALUES (N'Denmark Strait      ', CAST(N'1941-01-01' AS Date))
INSERT [dbo].[Battles] ([name], [date]) VALUES (N'Guadalcanal         ', CAST(N'1941-01-01' AS Date))
INSERT [dbo].[Battles] ([name], [date]) VALUES (N'HHH                 ', NULL)
INSERT [dbo].[Battles] ([name], [date]) VALUES (N'North Cape          ', CAST(N'1941-01-01' AS Date))
INSERT [dbo].[Battles] ([name], [date]) VALUES (N'Surigao Strait      ', CAST(N'1946-01-01' AS Date))
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'Bismarck            ', N'bb', N'Germany             ', 8, 15, 42000)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'Iowa                ', N'bb', N'USA                 ', 9, 16, 46000)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'Kongo               ', N'bc', N'Japan               ', 8, 14, 32000)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'Mississippsi        ', N'bb', N'USA                 ', 12, 14, 33000)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'New1                ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'New2                ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'NEW3                ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'NEW4                ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'NEW5                ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'New6                ', N'bb', NULL, NULL, NULL, 35000)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'Renown              ', N'bc', N'Gt. Britain         ', 6, 15, 32000)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'Revenge             ', N'bb', N'Gt. Britain         ', 8, 15, 29000)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'South Dakota        ', N'bb', N'USA                 ', 9, 16, 37000)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'VN                  ', N'bb', N'VN                  ', 4, 10, 10000)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'Yamato              ', N'bb', N'Japan               ', 9, 18, 65000)
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Arizona             ', N'Pearl Harbour       ', N'sunk      ')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Bismarck            ', N'Denmark Strait      ', N'sunk      ')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'California          ', N'Surigao Strait      ', N'ok        ')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Duke of York        ', N'North Cape          ', N'ok        ')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Fuso                ', N'Surigao Strait      ', N'sunk      ')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'HHH                 ', N'HHH                 ', N'ok        ')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Hood                ', N'Denmark Strait      ', N'sunk      ')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'King George         ', N'Denmark Strait      ', N'ok        ')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Kirishima           ', N'Guadalcanal         ', N'sunk      ')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Prince of Wales     ', N'Denmark Strait      ', N'damaged   ')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Rodney              ', N'Denmark Strait      ', N'ok        ')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Scharnhorst         ', N'North Cape          ', N'sunk      ')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'South Dakota        ', N'Guadalcanal         ', N'damaged   ')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'South Dakota        ', N'Surigao Strait      ', N'ok        ')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Tennesses           ', N'Surigao Strait      ', N'ok        ')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Washington          ', N'Guadalcanal         ', N'ok        ')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'West Virginia       ', N'Surigao Strait      ', N'ok        ')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Yamashiro           ', N'Surigao Strait      ', N'sunk      ')
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Albahama            ', N'South Dakota        ', 1942)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Haruna              ', N'Kongo               ', 1915)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'HHH                 ', NULL, NULL)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'HHH1                ', N'Bismarck            ', 1920)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Hiei                ', N'Kongo               ', 1914)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Idaho               ', N'Mississippi         ', 1919)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Iowa                ', N'Iowa                ', 1943)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Kirishima           ', N'Kongo               ', 1915)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Kongo               ', N'Kongo               ', 1941)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Missouri            ', N'Iowa                ', 1944)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Musashi             ', N'Yamato              ', 1942)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'New Jersey          ', N'Iowa                ', 1943)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'New Mexico          ', N'Mississippi         ', 1918)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'New2                ', N'New2                ', NULL)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'new3                ', N'new3                ', NULL)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'NEW4                ', N'NEW4                ', NULL)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'NEW5                ', N'NEW5                ', NULL)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'New6                ', N'New6                ', NULL)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Ramillies           ', N'Revenge             ', 1917)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Renown              ', N'Renown              ', 1916)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Repulse             ', N'Renown              ', 1916)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Resolution          ', N'Revenge             ', 1916)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Revenge             ', N'Revenge             ', 1916)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Royal Oak           ', N'Revenge             ', 1916)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Royal Sovereign     ', N'Revenge             ', 1916)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'South Dakota        ', N'South Dakota        ', 1945)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'TEST1               ', N'Kongo               ', NULL)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Vietname            ', N'Bismarck            ', 1950)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'VN                  ', N'Renown              ', NULL)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'VNN                 ', N'Iowa                ', NULL)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Wisconsin           ', N'Iowa                ', 1944)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Yamato              ', N'Yamato              ', 1941)
