-- Index: IX_abstract_album_link (on dbo.abstract_album_link)
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[abstract_album_link]') AND name = N'IX_abstract_album_link')
CREATE UNIQUE NONCLUSTERED INDEX [IX_abstract_album_link] ON [dbo].[abstract_album_link]
(
	[abstract_album_id] ASC,
	[album_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

