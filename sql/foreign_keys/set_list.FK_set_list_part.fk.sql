-- Foreign Key: FK_set_list_part (on dbo.set_list)
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_set_list_part]') AND parent_object_id = OBJECT_ID(N'[dbo].[set_list]'))
ALTER TABLE [dbo].[set_list]  WITH CHECK ADD  CONSTRAINT [FK_set_list_part] FOREIGN KEY([part_type])
REFERENCES [dbo].[part] ([part_type])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_set_list_part]') AND parent_object_id = OBJECT_ID(N'[dbo].[set_list]'))
ALTER TABLE [dbo].[set_list] CHECK CONSTRAINT [FK_set_list_part]

