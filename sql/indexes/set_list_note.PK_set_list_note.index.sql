-- Index: PK_set_list_note (on dbo.set_list_note)
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[set_list_note]') AND name = N'PK_set_list_note')
ALTER TABLE [dbo].[set_list_note] ADD  CONSTRAINT [PK_set_list_note] PRIMARY KEY CLUSTERED 
(
	[set_list_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

