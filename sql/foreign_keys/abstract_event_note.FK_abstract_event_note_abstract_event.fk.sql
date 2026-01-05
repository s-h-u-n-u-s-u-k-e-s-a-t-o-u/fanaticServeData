-- Foreign Key: FK_abstract_event_note_abstract_event (on dbo.abstract_event_note)
-- Generated: 2026-01-05 22:44:54Z
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_event_note_abstract_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_event_note]'))
ALTER TABLE [dbo].[abstract_event_note]  WITH CHECK ADD  CONSTRAINT [FK_abstract_event_note_abstract_event] FOREIGN KEY([abstract_event_id])
REFERENCES [dbo].[abstract_event] ([abstract_event_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_event_note_abstract_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_event_note]'))
ALTER TABLE [dbo].[abstract_event_note] CHECK CONSTRAINT [FK_abstract_event_note_abstract_event]

