-- Table: dbo.abstract_event_link
-- Generated: 2026-01-05 22:44:53Z
/****** Object:  Table [dbo].[abstract_event_link]    Script Date: 2026/01/05 22:44:53 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[abstract_event_link]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[abstract_event_link](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[event_id] [uniqueidentifier] NOT NULL,
	[abstract_event_id] [uniqueidentifier] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[modified_at] [datetime] NOT NULL,
 CONSTRAINT [PK_abstract_event_link] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
/****** Object:  Index [IX_abstract_event_link]    Script Date: 2026/01/05 22:44:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[abstract_event_link]') AND name = N'IX_abstract_event_link')
CREATE UNIQUE NONCLUSTERED INDEX [IX_abstract_event_link] ON [dbo].[abstract_event_link]
(
	[abstract_event_id] ASC,
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__$$abstrac__creat__4C0144E4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[abstract_event_link] ADD  DEFAULT (getdate()) FOR [created_at]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__$$abstrac__modif__4CF5691D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[abstract_event_link] ADD  DEFAULT (getdate()) FOR [modified_at]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_event_link_abstract_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_event_link]'))
ALTER TABLE [dbo].[abstract_event_link]  WITH CHECK ADD  CONSTRAINT [FK_abstract_event_link_abstract_event] FOREIGN KEY([abstract_event_id])
REFERENCES [dbo].[abstract_event] ([abstract_event_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_event_link_abstract_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_event_link]'))
ALTER TABLE [dbo].[abstract_event_link] CHECK CONSTRAINT [FK_abstract_event_link_abstract_event]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_event_link_live_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_event_link]'))
ALTER TABLE [dbo].[abstract_event_link]  WITH CHECK ADD  CONSTRAINT [FK_abstract_event_link_live_event] FOREIGN KEY([event_id])
REFERENCES [dbo].[live_event] ([live_event_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_event_link_live_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_event_link]'))
ALTER TABLE [dbo].[abstract_event_link] CHECK CONSTRAINT [FK_abstract_event_link_live_event]

-- Column comment: dbo.abstract_event_link.id
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'abstract_event_link' AND c.name = 'id'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'ID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_event_link', 
        @level2type=N'Column', @level2name=N'id';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'ID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_event_link', 
        @level2type=N'Column', @level2name=N'id';
END
GO

-- Column comment: dbo.abstract_event_link.event_id
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'abstract_event_link' AND c.name = 'event_id'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'イベントID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_event_link', 
        @level2type=N'Column', @level2name=N'event_id';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'イベントID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_event_link', 
        @level2type=N'Column', @level2name=N'event_id';
END
GO

-- Column comment: dbo.abstract_event_link.abstract_event_id
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'abstract_event_link' AND c.name = 'abstract_event_id'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'抽象イベントID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_event_link', 
        @level2type=N'Column', @level2name=N'abstract_event_id';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'抽象イベントID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_event_link', 
        @level2type=N'Column', @level2name=N'abstract_event_id';
END
GO

-- Column comment: dbo.abstract_event_link.created_at
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'abstract_event_link' AND c.name = 'created_at'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'登録日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_event_link', 
        @level2type=N'Column', @level2name=N'created_at';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'登録日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_event_link', 
        @level2type=N'Column', @level2name=N'created_at';
END
GO

-- Column comment: dbo.abstract_event_link.modified_at
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'abstract_event_link' AND c.name = 'modified_at'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'更新日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_event_link', 
        @level2type=N'Column', @level2name=N'modified_at';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'更新日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_event_link', 
        @level2type=N'Column', @level2name=N'modified_at';
END
GO

