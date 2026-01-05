-- Table: dbo.abstract_event_note
-- Generated: 2026-01-05 22:44:53Z
/****** Object:  Table [dbo].[abstract_event_note]    Script Date: 2026/01/05 22:44:53 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[abstract_event_note]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[abstract_event_note](
	[abstract_event_id] [uniqueidentifier] NOT NULL,
	[note] [nvarchar](max) COLLATE Japanese_CI_AS NULL,
	[created_at] [datetime] NOT NULL,
	[modified_at] [datetime] NOT NULL,
 CONSTRAINT [PK_abstract_event_note] PRIMARY KEY CLUSTERED 
(
	[abstract_event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_event_note_abstract_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_event_note]'))
ALTER TABLE [dbo].[abstract_event_note]  WITH CHECK ADD  CONSTRAINT [FK_abstract_event_note_abstract_event] FOREIGN KEY([abstract_event_id])
REFERENCES [dbo].[abstract_event] ([abstract_event_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_event_note_abstract_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_event_note]'))
ALTER TABLE [dbo].[abstract_event_note] CHECK CONSTRAINT [FK_abstract_event_note_abstract_event]

-- Column comment: dbo.abstract_event_note.abstract_event_id
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'abstract_event_note' AND c.name = 'abstract_event_id'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'抽象イベントID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_event_note', 
        @level2type=N'Column', @level2name=N'abstract_event_id';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'抽象イベントID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_event_note', 
        @level2type=N'Column', @level2name=N'abstract_event_id';
END
GO

-- Column comment: dbo.abstract_event_note.note
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'abstract_event_note' AND c.name = 'note'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'ノート', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_event_note', 
        @level2type=N'Column', @level2name=N'note';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'ノート', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_event_note', 
        @level2type=N'Column', @level2name=N'note';
END
GO

-- Column comment: dbo.abstract_event_note.created_at
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'abstract_event_note' AND c.name = 'created_at'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'登録日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_event_note', 
        @level2type=N'Column', @level2name=N'created_at';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'登録日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_event_note', 
        @level2type=N'Column', @level2name=N'created_at';
END
GO

-- Column comment: dbo.abstract_event_note.modified_at
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'abstract_event_note' AND c.name = 'modified_at'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'更新日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_event_note', 
        @level2type=N'Column', @level2name=N'modified_at';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'更新日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'abstract_event_note', 
        @level2type=N'Column', @level2name=N'modified_at';
END
GO

