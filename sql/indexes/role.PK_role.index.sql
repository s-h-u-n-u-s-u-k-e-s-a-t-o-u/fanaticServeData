-- Index: PK_role (on dbo.role)
-- Generated: 2026-01-05 22:44:55Z
/****** Object:  Index [PK_role]    Script Date: 2026/01/05 22:44:55 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[role]') AND name = N'PK_role')
ALTER TABLE [dbo].[role] ADD  CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

