-- Index: PK_abstract_event (on dbo.abstract_event)
-- Generated: 2026-01-05 22:44:54Z
/****** Object:  Index [PK_abstract_event]    Script Date: 2026/01/05 22:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[abstract_event]') AND name = N'PK_abstract_event')
ALTER TABLE [dbo].[abstract_event] ADD  CONSTRAINT [PK_abstract_event] PRIMARY KEY CLUSTERED 
(
	[abstract_event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

