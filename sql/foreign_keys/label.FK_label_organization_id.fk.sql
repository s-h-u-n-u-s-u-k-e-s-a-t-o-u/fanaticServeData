-- Foreign Key: FK_label_organization_id (on dbo.label)
-- Generated: 2026-01-05 22:44:54Z
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_label_organization_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[label]'))
ALTER TABLE [dbo].[label]  WITH CHECK ADD  CONSTRAINT [FK_label_organization_id] FOREIGN KEY([organization_id])
REFERENCES [dbo].[organization] ([organization_id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_label_organization_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[label]'))
ALTER TABLE [dbo].[label] CHECK CONSTRAINT [FK_label_organization_id]

