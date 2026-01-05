-- Index: PK_media (on dbo.media)
-- Generated: 2026-01-05 22:44:55Z
/****** Object:  Index [PK_media]    Script Date: 2026/01/05 22:44:55 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[media]') AND name = N'PK_media')
ALTER TABLE [dbo].[media] ADD  CONSTRAINT [PK_media] PRIMARY KEY CLUSTERED 
(
	[media_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

