USE [Pizza_DB]
GO
/****** Object:  Table [dbo].[pizza_sales]    Script Date: 03-03-2025 19:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pizza_sales](
	[pizza_id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[pizza_name_id] [varchar](50) NOT NULL,
	[quantity] [int] NOT NULL,
	[order_date] [date] NOT NULL,
	[order_time] [time](7) NOT NULL,
	[unit_price] [float] NOT NULL,
	[total_price] [float] NOT NULL,
	[pizza_size] [varchar](50) NOT NULL,
	[pizza_category] [varchar](50) NOT NULL,
	[pizza_ingredients] [varchar](200) NOT NULL,
	[pizza_name] [varchar](200) NOT NULL
) ON [PRIMARY]
GO
