-- Foreign Key: FK_roleOnAlbum_person (on dbo.roleOnAlbum)
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_roleOnAlbum_person]') AND parent_object_id = OBJECT_ID(N'[dbo].[roleOnAlbum]'))
ALTER TABLE [dbo].[roleOnAlbum]  WITH CHECK ADD  CONSTRAINT [FK_roleOnAlbum_person] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([person_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_roleOnAlbum_person]') AND parent_object_id = OBJECT_ID(N'[dbo].[roleOnAlbum]'))
ALTER TABLE [dbo].[roleOnAlbum] CHECK CONSTRAINT [FK_roleOnAlbum_person]

