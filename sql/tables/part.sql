USE [Fanatic_Serve]
GO

/****** Object:  Table [dbo].[part]    Script Date: 2026/06/09 1:26:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[part](
	[part_type] [int] IDENTITY(1,1) NOT NULL,
	[part_value] [nvarchar](50) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[modified_at] [datetime] NOT NULL,
 CONSTRAINT [PK_part] PRIMARY KEY CLUSTERED 
(
	[part_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'パート区分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'part', @level2type=N'COLUMN',@level2name=N'part_type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'パート値' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'part', @level2type=N'COLUMN',@level2name=N'part_value'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登録日時' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'part', @level2type=N'COLUMN',@level2name=N'created_at'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日時' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'part', @level2type=N'COLUMN',@level2name=N'modified_at'
GO

