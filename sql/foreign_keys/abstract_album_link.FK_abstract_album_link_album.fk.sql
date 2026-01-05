-- Foreign Key: FK_abstract_album_link_album (on dbo.abstract_album_link)
-- Generated: 2026-01-05 22:44:54Z
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_album_link_album]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_album_link]'))
ALTER TABLE [dbo].[abstract_album_link]  WITH CHECK ADD  CONSTRAINT [FK_abstract_album_link_album] FOREIGN KEY([album_id])
REFERENCES [dbo].[album] ([album_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_album_link_album]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_album_link]'))
ALTER TABLE [dbo].[abstract_album_link] CHECK CONSTRAINT [FK_abstract_album_link_album]

