-- Table: dbo.set_list_dummy
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[set_list_dummy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[set_list_dummy](
	[set_list_id] [uniqueidentifier] NULL,
	[live_event_id] [uniqueidentifier] NULL,
	[set_list_no] [int] NULL,
	[title] [nvarchar](256) COLLATE Japanese_CI_AS NULL,
	[song_id] [uniqueidentifier] NULL,
	[created_at] [datetime] NOT NULL,
	[modified_at] [datetime] NOT NULL,
	[note] [nvarchar](max) COLLATE Japanese_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END

