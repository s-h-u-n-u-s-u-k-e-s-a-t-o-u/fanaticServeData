USE [Fanatic_Serve]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[album_note];
GO

CREATE TABLE [dbo].[album_note](
	[album_id] [uniqueidentifier] NOT NULL,
	[note] [nvarchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[modified_at] [datetime] NOT NULL,
     CONSTRAINT [PK_album_note] PRIMARY KEY CLUSTERED 
(
	[album_id] ASC
)
);

EXEC sys.sp_addextendedproperty
 @name=N'MS_Description', @value=N'アルバムID' ,
 @level0type=N'SCHEMA', @level0name=N'dbo',
 @level1type=N'TABLE', @level1name=N'album_note',
 @level2type=N'COLUMN', @level2name=N'album_id'
GO

EXEC sys.sp_addextendedproperty
 @name=N'MS_Description', @value=N'ノート' ,
 @level0type=N'SCHEMA', @level0name=N'dbo',
 @level1type=N'TABLE', @level1name=N'album_note',
 @level2type=N'COLUMN', @level2name=N'note'
GO
EXEC sys.sp_addextendedproperty
 @name=N'MS_Description', @value=N'登録日時' ,
 @level0type=N'SCHEMA', @level0name=N'dbo',
 @level1type=N'TABLE', @level1name=N'album_note',
 @level2type=N'COLUMN', @level2name=N'created_at'
GO

EXEC sys.sp_addextendedproperty
 @name=N'MS_Description', @value=N'更新日時' ,
 @level0type=N'SCHEMA', @level0name=N'dbo',
 @level1type=N'TABLE', @level1name=N'album_note',
 @level2type=N'COLUMN', @level2name=N'modified_at'
GO