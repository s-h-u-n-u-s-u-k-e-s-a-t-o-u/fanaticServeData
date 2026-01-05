-- Table: dbo.roleOnAlbum
-- Generated: 2026-01-05 22:44:54Z
/****** Object:  Table [dbo].[roleOnAlbum]    Script Date: 2026/01/05 22:44:54 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[roleOnAlbum]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[roleOnAlbum](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[album_id] [uniqueidentifier] NOT NULL,
	[role_id] [int] NOT NULL,
	[person_id] [uniqueidentifier] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[modified_at] [datetime] NOT NULL,
 CONSTRAINT [PK_roleOnAlbum] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_roleOnAlbum_role]') AND parent_object_id = OBJECT_ID(N'[dbo].[roleOnAlbum]'))
ALTER TABLE [dbo].[roleOnAlbum]  WITH CHECK ADD  CONSTRAINT [FK_roleOnAlbum_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_roleOnAlbum_role]') AND parent_object_id = OBJECT_ID(N'[dbo].[roleOnAlbum]'))
ALTER TABLE [dbo].[roleOnAlbum] CHECK CONSTRAINT [FK_roleOnAlbum_role]

-- Column comment: dbo.roleOnAlbum.album_id
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'roleOnAlbum' AND c.name = 'album_id'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'アルバムID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnAlbum', 
        @level2type=N'Column', @level2name=N'album_id';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'アルバムID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnAlbum', 
        @level2type=N'Column', @level2name=N'album_id';
END
GO

-- Column comment: dbo.roleOnAlbum.role_id
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'roleOnAlbum' AND c.name = 'role_id'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'役割ID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnAlbum', 
        @level2type=N'Column', @level2name=N'role_id';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'役割ID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnAlbum', 
        @level2type=N'Column', @level2name=N'role_id';
END
GO

-- Column comment: dbo.roleOnAlbum.person_id
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'roleOnAlbum' AND c.name = 'person_id'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'人物ID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnAlbum', 
        @level2type=N'Column', @level2name=N'person_id';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'人物ID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnAlbum', 
        @level2type=N'Column', @level2name=N'person_id';
END
GO

-- Column comment: dbo.roleOnAlbum.created_at
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'roleOnAlbum' AND c.name = 'created_at'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'登録日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnAlbum', 
        @level2type=N'Column', @level2name=N'created_at';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'登録日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnAlbum', 
        @level2type=N'Column', @level2name=N'created_at';
END
GO

-- Column comment: dbo.roleOnAlbum.modified_at
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'roleOnAlbum' AND c.name = 'modified_at'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'更新日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnAlbum', 
        @level2type=N'Column', @level2name=N'modified_at';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'更新日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'roleOnAlbum', 
        @level2type=N'Column', @level2name=N'modified_at';
END
GO

