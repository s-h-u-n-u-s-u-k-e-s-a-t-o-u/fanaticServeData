-- Index: PK_song_note (on dbo.song_note)
-- Generated: 2026-01-05 22:44:55Z
/****** Object:  Index [PK_song_note]    Script Date: 2026/01/05 22:44:55 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[song_note]') AND name = N'PK_song_note')
ALTER TABLE [dbo].[song_note] ADD  CONSTRAINT [PK_song_note] PRIMARY KEY CLUSTERED 
(
	[song_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

