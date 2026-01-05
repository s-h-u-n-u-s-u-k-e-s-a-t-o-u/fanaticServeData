-- Index: PK_abstract_album_link (on dbo.abstract_album_link)
-- Generated: 2026-01-05 22:44:54Z
/****** Object:  Index [PK_abstract_album_link]    Script Date: 2026/01/05 22:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[abstract_album_link]') AND name = N'PK_abstract_album_link')
ALTER TABLE [dbo].[abstract_album_link] ADD  CONSTRAINT [PK_abstract_album_link] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

