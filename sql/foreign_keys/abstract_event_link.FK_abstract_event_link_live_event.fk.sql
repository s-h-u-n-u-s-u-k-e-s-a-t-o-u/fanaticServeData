-- Foreign Key: FK_abstract_event_link_live_event (on dbo.abstract_event_link)
-- Generated: 2026-01-05 22:44:54Z
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_event_link_live_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_event_link]'))
ALTER TABLE [dbo].[abstract_event_link]  WITH CHECK ADD  CONSTRAINT [FK_abstract_event_link_live_event] FOREIGN KEY([event_id])
REFERENCES [dbo].[live_event] ([live_event_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_event_link_live_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_event_link]'))
ALTER TABLE [dbo].[abstract_event_link] CHECK CONSTRAINT [FK_abstract_event_link_live_event]

