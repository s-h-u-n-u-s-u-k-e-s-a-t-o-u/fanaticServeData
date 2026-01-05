-- Table: dbo.abstract_album_link
-- Generated: 2026-01-05 22:44:53Z
/****** Object:  Table [dbo].[abstract_album_link]    Script Date: 2026/01/05 22:44:53 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[abstract_album_link]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[abstract_album_link](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[album_id] [uniqueidentifier] NOT NULL,
	[abstract_album_id] [uniqueidentifier] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[modified_at] [datetime] NOT NULL,
 CONSTRAINT [PK_abstract_album_link] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
/****** Object:  Index [IX_abstract_album_link]    Script Date: 2026/01/05 22:44:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[abstract_album_link]') AND name = N'IX_abstract_album_link')
CREATE UNIQUE NONCLUSTERED INDEX [IX_abstract_album_link] ON [dbo].[abstract_album_link]
(
	[abstract_album_id] ASC,
	[album_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__$$abstrac__creat__4830B400]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[abstract_album_link] ADD  DEFAULT (getdate()) FOR [created_at]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__$$abstrac__modif__4924D839]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[abstract_album_link] ADD  DEFAULT (getdate()) FOR [modified_at]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_album_link_abstract_album]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_album_link]'))
ALTER TABLE [dbo].[abstract_album_link]  WITH CHECK ADD  CONSTRAINT [FK_abstract_album_link_abstract_album] FOREIGN KEY([abstract_album_id])
REFERENCES [dbo].[abstract_album] ([abstract_album_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_album_link_abstract_album]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_album_link]'))
ALTER TABLE [dbo].[abstract_album_link] CHECK CONSTRAINT [FK_abstract_album_link_abstract_album]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_album_link_album]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_album_link]'))
ALTER TABLE [dbo].[abstract_album_link]  WITH CHECK ADD  CONSTRAINT [FK_abstract_album_link_album] FOREIGN KEY([album_id])
REFERENCES [dbo].[album] ([album_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_album_link_album]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_album_link]'))
ALTER TABLE [dbo].[abstract_album_link] CHECK CONSTRAINT [FK_abstract_album_link_album]

-- Column comment: dbo.abstract_album_link.id
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'abstract_album_link' AND c.name = 'id'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'ID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_album_link', 
        @level2type=N'Column', @level2name=N'id';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'ID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_album_link', 
        @level2type=N'Column', @level2name=N'id';
END
GO

-- Column comment: dbo.abstract_album_link.album_id
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'abstract_album_link' AND c.name = 'album_id'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'アルバムID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_album_link', 
        @level2type=N'Column', @level2name=N'album_id';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'アルバムID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_album_link', 
        @level2type=N'Column', @level2name=N'album_id';
END
GO

-- Column comment: dbo.abstract_album_link.abstract_album_id
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'abstract_album_link' AND c.name = 'abstract_album_id'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'抽象アルバムID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_album_link', 
        @level2type=N'Column', @level2name=N'abstract_album_id';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'抽象アルバムID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_album_link', 
        @level2type=N'Column', @level2name=N'abstract_album_id';
END
GO

-- Column comment: dbo.abstract_album_link.created_at
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'abstract_album_link' AND c.name = 'created_at'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'登録日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_album_link', 
        @level2type=N'Column', @level2name=N'created_at';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'登録日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_album_link', 
        @level2type=N'Column', @level2name=N'created_at';
END
GO

-- Column comment: dbo.abstract_album_link.modified_at
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'abstract_album_link' AND c.name = 'modified_at'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'更新日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_album_link', 
        @level2type=N'Column', @level2name=N'modified_at';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'更新日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_album_link', 
        @level2type=N'Column', @level2name=N'modified_at';
END
GO

