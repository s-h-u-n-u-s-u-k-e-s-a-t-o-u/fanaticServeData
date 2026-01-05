-- Foreign Key: FK_album_media (on dbo.album)
-- Generated: 2026-01-05 22:44:54Z
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_album_media]') AND parent_object_id = OBJECT_ID(N'[dbo].[album]'))
ALTER TABLE [dbo].[album]  WITH CHECK ADD  CONSTRAINT [FK_album_media] FOREIGN KEY([media_type])
REFERENCES [dbo].[media] ([media_type])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_album_media]') AND parent_object_id = OBJECT_ID(N'[dbo].[album]'))
ALTER TABLE [dbo].[album] CHECK CONSTRAINT [FK_album_media]

