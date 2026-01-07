-- Index: IX_abstract_event_link (on dbo.abstract_event_link)
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[abstract_event_link]') AND name = N'IX_abstract_event_link')
CREATE UNIQUE NONCLUSTERED INDEX [IX_abstract_event_link] ON [dbo].[abstract_event_link]
(
	[abstract_event_id] ASC,
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

