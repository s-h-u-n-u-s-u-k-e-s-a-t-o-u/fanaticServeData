-- Foreign Key: FK_live_event_note_live_event (on dbo.live_event_note)
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_live_event_note_live_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[live_event_note]'))
ALTER TABLE [dbo].[live_event_note]  WITH CHECK ADD  CONSTRAINT [FK_live_event_note_live_event] FOREIGN KEY([live_event_id])
REFERENCES [dbo].[live_event] ([live_event_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_live_event_note_live_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[live_event_note]'))
ALTER TABLE [dbo].[live_event_note] CHECK CONSTRAINT [FK_live_event_note_live_event]

