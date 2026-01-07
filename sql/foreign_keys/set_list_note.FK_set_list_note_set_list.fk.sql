-- Foreign Key: FK_set_list_note_set_list (on dbo.set_list_note)
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_set_list_note_set_list]') AND parent_object_id = OBJECT_ID(N'[dbo].[set_list_note]'))
ALTER TABLE [dbo].[set_list_note]  WITH CHECK ADD  CONSTRAINT [FK_set_list_note_set_list] FOREIGN KEY([set_list_id])
REFERENCES [dbo].[set_list] ([set_list_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_set_list_note_set_list]') AND parent_object_id = OBJECT_ID(N'[dbo].[set_list_note]'))
ALTER TABLE [dbo].[set_list_note] CHECK CONSTRAINT [FK_set_list_note_set_list]

