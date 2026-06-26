-- Index: IX_roleOnAlbum (on dbo.roleOnAlbum)
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[roleOnAlbum]') AND name = N'IX_roleOnAlbum')
CREATE UNIQUE NONCLUSTERED INDEX [IX_roleOnAlbum] ON [dbo].[roleOnAlbum]
(
	[album_id] ASC,
	[role_id] ASC,
	[person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

