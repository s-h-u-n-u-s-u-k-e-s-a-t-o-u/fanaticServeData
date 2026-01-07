-- Foreign Key: FK_roleOnTrack_role (on dbo.roleOnTrack)
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_roleOnTrack_role]') AND parent_object_id = OBJECT_ID(N'[dbo].[roleOnTrack]'))
ALTER TABLE [dbo].[roleOnTrack]  WITH CHECK ADD  CONSTRAINT [FK_roleOnTrack_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_roleOnTrack_role]') AND parent_object_id = OBJECT_ID(N'[dbo].[roleOnTrack]'))
ALTER TABLE [dbo].[roleOnTrack] CHECK CONSTRAINT [FK_roleOnTrack_role]

