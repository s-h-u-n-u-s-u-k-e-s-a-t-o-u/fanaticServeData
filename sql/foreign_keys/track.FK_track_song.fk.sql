-- Foreign Key: FK_track_song (on dbo.track)
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_track_song]') AND parent_object_id = OBJECT_ID(N'[dbo].[track]'))
ALTER TABLE [dbo].[track]  WITH CHECK ADD  CONSTRAINT [FK_track_song] FOREIGN KEY([song_id])
REFERENCES [dbo].[song] ([song_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_track_song]') AND parent_object_id = OBJECT_ID(N'[dbo].[track]'))
ALTER TABLE [dbo].[track] CHECK CONSTRAINT [FK_track_song]

