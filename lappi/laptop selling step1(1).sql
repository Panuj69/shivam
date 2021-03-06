CREATE DATABASE [tinkesh]
USE [tinkesh]
GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 03/10/2018 22:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_user](
	[userid] [numeric](18, 0) NULL,
	[username] [varchar](50) NOT NULL,
	[passw] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[address] [varchar](1000) NULL,
	[mobile] [numeric](18, 0) NULL,
 CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_product_attribute]    Script Date: 03/10/2018 22:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_product_attribute](
	[prod_attr_id] [numeric](18, 0) NULL,
	[product_id] [numeric](18, 0) NULL,
	[attribute_id] [numeric](18, 0) NULL,
	[attribute_value] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_product]    Script Date: 03/10/2018 22:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_product](
	[product_id] [numeric](18, 0) NULL,
	[product_name] [varchar](5000) NULL,
	[product_details] [varchar](max) NULL,
	[category_id] [numeric](18, 0) NULL,
	[age_id] [numeric](18, 0) NULL,
	[sales_price] [numeric](18, 0) NULL,
	[MRP] [numeric](18, 0) NULL,
	[image1] [varchar](50) NULL,
	[image2] [varchar](50) NULL,
	[image3] [varchar](50) NULL,
	[enable] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_feedback]    Script Date: 03/10/2018 22:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_feedback](
	[name] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[rating] [varchar](50) NULL,
	[message] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_enquiry]    Script Date: 03/10/2018 22:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_enquiry](
	[name] [varchar](500) NULL,
	[email] [varchar](500) NULL,
	[message] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_category]    Script Date: 03/10/2018 22:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_category](
	[category_id] [numeric](18, 0) NULL,
	[category_name] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_cart]    Script Date: 03/10/2018 22:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_cart](
	[cartid] [numeric](18, 0) NULL,
	[userid] [numeric](18, 0) NULL,
	[product_id] [numeric](18, 0) NULL,
	[qty] [numeric](18, 0) NULL,
	[price] [numeric](18, 0) NULL,
	[dt] [datetime] NULL,
	[total] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_billitems]    Script Date: 03/10/2018 22:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_billitems](
	[itemid] [numeric](18, 0) NULL,
	[billid] [numeric](18, 0) NULL,
	[product_id] [numeric](18, 0) NULL,
	[qty] [numeric](18, 0) NULL,
	[total] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_bill]    Script Date: 03/10/2018 22:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_bill](
	[billid] [numeric](18, 0) NULL,
	[userid] [numeric](18, 0) NULL,
	[total] [numeric](18, 0) NULL,
	[dt] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_attribute]    Script Date: 03/10/2018 22:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_attribute](
	[attribute_id] [numeric](18, 0) NULL,
	[attribute_name] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_age_group]    Script Date: 03/10/2018 22:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_age_group](
	[age_id] [numeric](18, 0) NULL,
	[age_name] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_admin]    Script Date: 03/10/2018 22:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_admin](
	[admin_id] [numeric](18, 0) NULL,
	[admin_name] [varchar](100) NULL,
	[admin_password] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
