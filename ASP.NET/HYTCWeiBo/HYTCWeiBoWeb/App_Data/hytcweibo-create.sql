USE [db_hytcweibo]
GO
/****** Object:  Table [dbo].[t_WeiBo]    Script Date: 05/26/2014 15:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_WeiBo](
	[weiboId] [int] IDENTITY(1,1) NOT NULL,
	[authorId] [int] NOT NULL,
	[authorName] [varchar](40) NOT NULL,
	[content] [varchar](280) NULL,
	[isOriginal] [varchar](10) NULL,
	[orAuthorId] [int] NULL,
	[orContent] [varchar](100) NULL,
	[orAuthorName] [varchar](40) NULL,
	[orTime] [datetime] NULL,
	[createTime] [datetime] NULL,
	[zanNumber] [int] NULL,
	[reviewNumber] [int] NULL,
	[transmitNumber] [int] NULL,
	[favsNumber] [int] NULL,
 CONSTRAINT [PK_T_WEIBO] PRIMARY KEY CLUSTERED 
(
	[weiboId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Userlogo]    Script Date: 05/26/2014 15:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Userlogo](
	[userId] [int] NOT NULL,
	[logoURL] [varchar](300) NOT NULL,
	[topbgURL] [varchar](300) NOT NULL,
 CONSTRAINT [PK_T_USERLOGO] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_User]    Script Date: 05/26/2014 15:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_User](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](40) NOT NULL,
	[pwd] [varchar](12) NOT NULL,
	[email] [varchar](50) NULL,
	[sex] [varchar](2) NULL,
	[colloge] [varchar](60) NULL,
	[inCollogeYear] [varchar](4) NULL,
	[realName] [varchar](40) NULL,
	[home] [varchar](50) NULL,
	[birthday] [varchar](10) NULL,
	[boodtype] [varchar](10) NULL,
	[personalwords] [varchar](50) NULL,
	[registerTime] [datetime] NULL,
	[phone] [varchar](11) NULL,
	[QQ] [varchar](50) NULL,
	[MSN] [varchar](50) NULL,
	[prinmarySchool] [varchar](100) NULL,
	[seccondSchool] [varchar](100) NULL,
	[hobbies] [varchar](200) NULL,
	[sports] [varchar](100) NULL,
	[bestBook] [varchar](50) NULL,
	[bestFilm] [varchar](50) NULL,
	[bestSong] [varchar](50) NULL,
	[bestFood] [varchar](50) NULL,
	[bestStars] [varchar](40) NULL,
	[bestGames] [varchar](100) NULL,
	[bestPlaces] [varchar](200) NULL,
 CONSTRAINT [PK_T_USER] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Reviews]    Script Date: 05/26/2014 15:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Reviews](
	[reviewId] [int] IDENTITY(1,1) NOT NULL,
	[weiboId] [int] NOT NULL,
	[reAuthorId] [int] NOT NULL,
	[reAuthorName] [varchar](40) NOT NULL,
	[returnContent] [varchar](500) NOT NULL,
	[reTime] [datetime] NOT NULL,
 CONSTRAINT [PK_T_REVIEWS] PRIMARY KEY CLUSTERED 
(
	[reviewId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_LoginMarks]    Script Date: 05/26/2014 15:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_LoginMarks](
	[markId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[userName] [varchar](40) NULL,
	[loginTime] [datetime] NULL,
	[leftTime] [datetime] NULL,
 CONSTRAINT [PK_T_LOGINMARKS] PRIMARY KEY CLUSTERED 
(
	[markId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Favorites]    Script Date: 05/26/2014 15:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Favorites](
	[favoriteId] [int] IDENTITY(1,1) NOT NULL,
	[weiboId] [int] NOT NULL,
	[favPersonId] [int] NOT NULL,
	[createTime] [datetime] NOT NULL,
 CONSTRAINT [PK_T_FAVORITES] PRIMARY KEY CLUSTERED 
(
	[favoriteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_FansMarks]    Script Date: 05/26/2014 15:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FansMarks](
	[markId] [int] IDENTITY(1,1) NOT NULL,
	[onselfId] [int] NOT NULL,
	[otherId] [int] NOT NULL,
	[createTime] [datetime] NULL,
 CONSTRAINT [PK_T_FANSMARKS] PRIMARY KEY CLUSTERED 
(
	[markId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
