-- Foreign Key: FK_abstract_album_link_abstract_album (on dbo.abstract_album_link)
-- Generated: 2026-01-05 22:44:54Z
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_album_link_abstract_album]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_album_link]'))
ALTER TABLE [dbo].[abstract_album_link]  WITH CHECK ADD  CONSTRAINT [FK_abstract_album_link_abstract_album] FOREIGN KEY([abstract_album_id])
REFERENCES [dbo].[abstract_album] ([abstract_album_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_abstract_album_link_abstract_album]') AND parent_object_id = OBJECT_ID(N'[dbo].[abstract_album_link]'))
ALTER TABLE [dbo].[abstract_album_link] CHECK CONSTRAINT [FK_abstract_album_link_abstract_album]

