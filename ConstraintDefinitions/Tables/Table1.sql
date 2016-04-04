CREATE TABLE [dbo].[Table1]
(
	[datetimeColumn] DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    [intColumn] INT NOT NULL, 
    CONSTRAINT [CK_Table1_Column] CHECK ([intColumn] In (1,3,7))
)
GO