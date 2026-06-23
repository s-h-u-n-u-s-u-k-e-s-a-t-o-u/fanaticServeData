-- Index: PK_live_event_url (on dbo.live_event_url)
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[live_event_url]') AND name = N'PK_live_event_url')
ALTER TABLE [dbo].[live_event_url] ADD  CONSTRAINT [PK_live_event_url] PRIMARY KEY CLUSTERED 
(
	[live_event_url_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

