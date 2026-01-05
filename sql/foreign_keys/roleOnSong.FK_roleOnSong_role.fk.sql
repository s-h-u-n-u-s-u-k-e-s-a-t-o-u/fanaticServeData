-- Foreign Key: FK_roleOnSong_role (on dbo.roleOnSong)
-- Generated: 2026-01-05 22:44:54Z
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_roleOnSong_role]') AND parent_object_id = OBJECT_ID(N'[dbo].[roleOnSong]'))
ALTER TABLE [dbo].[roleOnSong]  WITH CHECK ADD  CONSTRAINT [FK_roleOnSong_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_roleOnSong_role]') AND parent_object_id = OBJECT_ID(N'[dbo].[roleOnSong]'))
ALTER TABLE [dbo].[roleOnSong] CHECK CONSTRAINT [FK_roleOnSong_role]

