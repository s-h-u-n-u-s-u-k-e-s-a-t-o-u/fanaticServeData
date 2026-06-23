-- Table: dbo.live_event_url
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[live_event_url]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[live_event_url](
	[live_event_url_id] [int] IDENTITY(1,1) NOT NULL,
	[live_event_id] [uniqueidentifier] NOT NULL,
	[url] [nvarchar](max) COLLATE Japanese_CI_AS NOT NULL,
	[description] [nvarchar](50) COLLATE Japanese_CI_AS NULL,
	[created_at] [datetime] NOT NULL,
	[modified_At] [datetime] NOT NULL,
 CONSTRAINT [PK_live_event_url] PRIMARY KEY CLUSTERED 
(
	[live_event_url_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_live_event_url_live_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[live_event_url]'))
ALTER TABLE [dbo].[live_event_url]  WITH CHECK ADD  CONSTRAINT [FK_live_event_url_live_event] FOREIGN KEY([live_event_id])
REFERENCES [dbo].[live_event] ([live_event_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_live_event_url_live_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[live_event_url]'))
ALTER TABLE [dbo].[live_event_url] CHECK CONSTRAINT [FK_live_event_url_live_event]

