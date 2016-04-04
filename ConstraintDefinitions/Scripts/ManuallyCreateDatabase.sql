CREATE DATABASE [ConstraintDefinitions]
GO

USE [ConstraintDefinitions]
GO

CREATE TABLE [dbo].[Table1]
(
	[datetimeColumn] DATETIME NOT NULL, 
    [intColumn] INT NOT NULL, 
)
GO

ALTER TABLE [dbo].[Table1]
ADD  CONSTRAINT [DF_Table1_Column1]  DEFAULT (CURRENT_TIMESTAMP) FOR [datetimeColumn]
GO

ALTER TABLE [dbo].[Table1]
ADD CONSTRAINT [CK_Table1_intColumn] CHECK ([intColumn] In (1,3,7))
GO