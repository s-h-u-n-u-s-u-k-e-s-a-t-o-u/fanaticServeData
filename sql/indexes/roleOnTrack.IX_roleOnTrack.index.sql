-- Index: IX_roleOnTrack (on dbo.roleOnTrack)
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[roleOnTrack]') AND name = N'IX_roleOnTrack')
CREATE UNIQUE NONCLUSTERED INDEX [IX_roleOnTrack] ON [dbo].[roleOnTrack]
(
	[track_id] ASC,
	[role_id] ASC,
	[person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

