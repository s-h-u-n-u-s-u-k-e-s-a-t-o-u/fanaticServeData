-- Index: PK_live_event_note (on dbo.live_event_note)
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[live_event_note]') AND name = N'PK_live_event_note')
ALTER TABLE [dbo].[live_event_note] ADD  CONSTRAINT [PK_live_event_note] PRIMARY KEY CLUSTERED 
(
	[live_event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

