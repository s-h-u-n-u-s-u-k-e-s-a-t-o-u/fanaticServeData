-- Index: UQ_site_site_id (on dbo.site)
-- Generated: 2026-01-05 22:44:55Z
/****** Object:  Index [UQ_site_site_id]    Script Date: 2026/01/05 22:44:55 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[site]') AND name = N'UQ_site_site_id')
ALTER TABLE [dbo].[site] ADD  CONSTRAINT [UQ_site_site_id] UNIQUE NONCLUSTERED 
(
	[site_id] ASC,
	[sequence] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

