-- Foreign Key: FK_roleOnAlbum_album (on dbo.roleOnAlbum)
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_roleOnAlbum_album]') AND parent_object_id = OBJECT_ID(N'[dbo].[roleOnAlbum]'))
ALTER TABLE [dbo].[roleOnAlbum]  WITH CHECK ADD  CONSTRAINT [FK_roleOnAlbum_album] FOREIGN KEY([album_id])
REFERENCES [dbo].[album] ([album_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_roleOnAlbum_album]') AND parent_object_id = OBJECT_ID(N'[dbo].[roleOnAlbum]'))
ALTER TABLE [dbo].[roleOnAlbum] CHECK CONSTRAINT [FK_roleOnAlbum_album]

