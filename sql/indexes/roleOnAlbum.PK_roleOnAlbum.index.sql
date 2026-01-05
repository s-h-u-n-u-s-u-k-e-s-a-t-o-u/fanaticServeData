-- Index: PK_roleOnAlbum (on dbo.roleOnAlbum)
-- Generated: 2026-01-05 22:44:55Z
/****** Object:  Index [PK_roleOnAlbum]    Script Date: 2026/01/05 22:44:55 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[roleOnAlbum]') AND name = N'PK_roleOnAlbum')
ALTER TABLE [dbo].[roleOnAlbum] ADD  CONSTRAINT [PK_roleOnAlbum] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

