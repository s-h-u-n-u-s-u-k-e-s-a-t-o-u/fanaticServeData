-- Foreign Key: FK_song_note_song (on dbo.song_note)
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_song_note_song]') AND parent_object_id = OBJECT_ID(N'[dbo].[song_note]'))
ALTER TABLE [dbo].[song_note]  WITH CHECK ADD  CONSTRAINT [FK_song_note_song] FOREIGN KEY([song_id])
REFERENCES [dbo].[song] ([song_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_song_note_song]') AND parent_object_id = OBJECT_ID(N'[dbo].[song_note]'))
ALTER TABLE [dbo].[song_note] CHECK CONSTRAINT [FK_song_note_song]

