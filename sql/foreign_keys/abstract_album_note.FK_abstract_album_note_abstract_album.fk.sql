-- Foreign Key: FK_abstract_album_note_abstract_album (on dbo.abstract_album_note)
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_album_note_abstract_album]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_album_note]'))
ALTER TABLE [dbo].[abstract_album_note]  WITH CHECK ADD  CONSTRAINT [FK_abstract_album_note_abstract_album] FOREIGN KEY([album_id])
REFERENCES [dbo].[abstract_album] ([abstract_album_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_album_note_abstract_album]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_album_note]'))
ALTER TABLE [dbo].[abstract_album_note] CHECK CONSTRAINT [FK_abstract_album_note_abstract_album]

