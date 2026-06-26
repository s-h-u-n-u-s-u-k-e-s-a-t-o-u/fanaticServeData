-- Foreign Key: FK_album_note_album (on dbo.album_note)
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_album_note_album]') AND parent_object_id = OBJECT_ID(N'[dbo].[album_note]'))
ALTER TABLE [dbo].[album_note]  WITH CHECK ADD  CONSTRAINT [FK_album_note_album] FOREIGN KEY([album_id])
REFERENCES [dbo].[album] ([album_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_album_note_album]') AND parent_object_id = OBJECT_ID(N'[dbo].[album_note]'))
ALTER TABLE [dbo].[album_note] CHECK CONSTRAINT [FK_album_note_album]

