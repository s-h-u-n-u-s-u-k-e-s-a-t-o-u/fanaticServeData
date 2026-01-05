-- Table: dbo.roleOnSong
-- Generated: 2026-01-05 22:44:54Z
/****** Object:  Table [dbo].[roleOnSong]    Script Date: 2026/01/05 22:44:54 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[roleOnSong]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[roleOnSong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[song_id] [uniqueidentifier] NOT NULL,
	[role_id] [int] NOT NULL,
	[person_id] [uniqueidentifier] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[modified_at] [datetime] NOT NULL
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_roleOnSong_role]') AND parent_object_id = OBJECT_ID(N'[dbo].[roleOnSong]'))
ALTER TABLE [dbo].[roleOnSong]  WITH CHECK ADD  CONSTRAINT [FK_roleOnSong_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_roleOnSong_role]') AND parent_object_id = OBJECT_ID(N'[dbo].[roleOnSong]'))
ALTER TABLE [dbo].[roleOnSong] CHECK CONSTRAINT [FK_roleOnSong_role]

-- Column comment: dbo.roleOnSong.song_id
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'roleOnSong' AND c.name = 'song_id'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'楽曲ID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnSong', 
        @level2type=N'Column', @level2name=N'song_id';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'楽曲ID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnSong', 
        @level2type=N'Column', @level2name=N'song_id';
END
GO

-- Column comment: dbo.roleOnSong.role_id
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'roleOnSong' AND c.name = 'role_id'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'役割ID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnSong', 
        @level2type=N'Column', @level2name=N'role_id';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'役割ID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnSong', 
        @level2type=N'Column', @level2name=N'role_id';
END
GO

-- Column comment: dbo.roleOnSong.person_id
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'roleOnSong' AND c.name = 'person_id'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'人物ID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnSong', 
        @level2type=N'Column', @level2name=N'person_id';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'人物ID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnSong', 
        @level2type=N'Column', @level2name=N'person_id';
END
GO

-- Column comment: dbo.roleOnSong.created_at
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'roleOnSong' AND c.name = 'created_at'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'登録日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnSong', 
        @level2type=N'Column', @level2name=N'created_at';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'登録日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnSong', 
        @level2type=N'Column', @level2name=N'created_at';
END
GO

-- Column comment: dbo.roleOnSong.modified_at
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'roleOnSong' AND c.name = 'modified_at'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'更新日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnSong', 
        @level2type=N'Column', @level2name=N'modified_at';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'更新日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnSong', 
        @level2type=N'Column', @level2name=N'modified_at';
END
GO

