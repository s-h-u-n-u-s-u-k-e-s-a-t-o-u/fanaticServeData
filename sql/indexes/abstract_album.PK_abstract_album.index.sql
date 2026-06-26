-- Index: PK_abstract_album (on dbo.abstract_album)
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[abstract_album]') AND name = N'PK_abstract_album')
ALTER TABLE [dbo].[abstract_album] ADD  CONSTRAINT [PK_abstract_album] PRIMARY KEY CLUSTERED 
(
	[abstract_album_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

