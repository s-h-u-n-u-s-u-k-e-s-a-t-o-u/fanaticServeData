-- Table: dbo.site
-- Generated: 2026-01-05 22:44:54Z
/****** Object:  Table [dbo].[site]    Script Date: 2026/01/05 22:44:54 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[site]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[site](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [uniqueidentifier] NOT NULL,
	[sequence] [int] NOT NULL,
	[display_name] [nvarchar](256) COLLATE Japanese_CI_AS NOT NULL,
	[url] [nvarchar](256) COLLATE Japanese_CI_AS NOT NULL,
	[created_at] [datetime] NOT NULL,
	[modified_at] [datetime] NULL,
 CONSTRAINT [PK_site] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_site_site_id] UNIQUE NONCLUSTERED 
(
	[site_id] ASC,
	[sequence] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END

-- Column comment: dbo.site.site_id
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'site' AND c.name = 'site_id'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'レーベルID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'site', 
        @level2type=N'Column', @level2name=N'site_id';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'レーベルID', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'site', 
        @level2type=N'Column', @level2name=N'site_id';
END
GO

-- Column comment: dbo.site.sequence
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'site' AND c.name = 'sequence'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'表示順', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'site', 
        @level2type=N'Column', @level2name=N'sequence';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'表示順', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'site', 
        @level2type=N'Column', @level2name=N'sequence';
END
GO

-- Column comment: dbo.site.display_name
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'site' AND c.name = 'display_name'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'表示名前', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'site', 
        @level2type=N'Column', @level2name=N'display_name';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'表示名前', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'site', 
        @level2type=N'Column', @level2name=N'display_name';
END
GO

-- Column comment: dbo.site.url
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'site' AND c.name = 'url'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'url', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'site', 
        @level2type=N'Column', @level2name=N'url';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'url', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'site', 
        @level2type=N'Column', @level2name=N'url';
END
GO

-- Column comment: dbo.site.created_at
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'site' AND c.name = 'created_at'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'登録日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'site', 
        @level2type=N'Column', @level2name=N'created_at';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'登録日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'site', 
        @level2type=N'Column', @level2name=N'created_at';
END
GO

-- Column comment: dbo.site.modified_at
IF EXISTS (
    SELECT 1 FROM sys.extended_properties ep
    JOIN sys.tables t ON t.object_id = ep.major_id
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    JOIN sys.columns c ON c.object_id = t.object_id AND c.column_id = ep.minor_id
    WHERE ep.name = 'MS_Description' AND s.name = 'dbo' AND t.name = 'site' AND c.name = 'modified_at'
)
BEGIN
    EXEC sp_updateextendedproperty 
        @name=N'MS_Description', 
        @value=N'更新日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'site', 
        @level2type=N'Column', @level2name=N'modified_at';
END
ELSE
BEGIN
    EXEC sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'更新日時', 
        @level0type=N'Schema', @level0name=N'dbo', 
        @level1type=N'Table',  @level1name=N'site', 
        @level2type=N'Column', @level2name=N'modified_at';
END
GO

