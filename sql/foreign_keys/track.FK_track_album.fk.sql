-- Foreign Key: FK_track_album (on dbo.track)
-- Generated: 2026-01-05 22:44:54Z
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_track_album]') AND parent_object_id = OBJECT_ID(N'[dbo].[track]'))
ALTER TABLE [dbo].[track]  WITH CHECK ADD  CONSTRAINT [FK_track_album] FOREIGN KEY([album_id])
REFERENCES [dbo].[album] ([album_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_track_album]') AND parent_object_id = OBJECT_ID(N'[dbo].[track]'))
ALTER TABLE [dbo].[track] CHECK CONSTRAINT [FK_track_album]

