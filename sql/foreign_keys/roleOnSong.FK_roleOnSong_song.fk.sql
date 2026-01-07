-- Foreign Key: FK_roleOnSong_song (on dbo.roleOnSong)
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_roleOnSong_song]') AND parent_object_id = OBJECT_ID(N'[dbo].[roleOnSong]'))
ALTER TABLE [dbo].[roleOnSong]  WITH CHECK ADD  CONSTRAINT [FK_roleOnSong_song] FOREIGN KEY([song_id])
REFERENCES [dbo].[song] ([song_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_roleOnSong_song]') AND parent_object_id = OBJECT_ID(N'[dbo].[roleOnSong]'))
ALTER TABLE [dbo].[roleOnSong] CHECK CONSTRAINT [FK_roleOnSong_song]

