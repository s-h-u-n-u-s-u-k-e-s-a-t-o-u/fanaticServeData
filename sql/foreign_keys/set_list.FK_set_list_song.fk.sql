-- Foreign Key: FK_set_list_song (on dbo.set_list)
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_set_list_song]') AND parent_object_id = OBJECT_ID(N'[dbo].[set_list]'))
ALTER TABLE [dbo].[set_list]  WITH CHECK ADD  CONSTRAINT [FK_set_list_song] FOREIGN KEY([song_id])
REFERENCES [dbo].[song] ([song_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_set_list_song]') AND parent_object_id = OBJECT_ID(N'[dbo].[set_list]'))
ALTER TABLE [dbo].[set_list] CHECK CONSTRAINT [FK_set_list_song]

