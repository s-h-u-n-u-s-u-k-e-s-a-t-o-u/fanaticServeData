-- Foreign Key: FK_roleOnAlbum_role (on dbo.roleOnAlbum)
-- Generated: 2026-01-05 22:44:54Z
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_roleOnAlbum_role]') AND parent_object_id = OBJECT_ID(N'[dbo].[roleOnAlbum]'))
ALTER TABLE [dbo].[roleOnAlbum]  WITH CHECK ADD  CONSTRAINT [FK_roleOnAlbum_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_roleOnAlbum_role]') AND parent_object_id = OBJECT_ID(N'[dbo].[roleOnAlbum]'))
ALTER TABLE [dbo].[roleOnAlbum] CHECK CONSTRAINT [FK_roleOnAlbum_role]

