CREATE TABLE [dbo].[customers]
(
	[id] INT NOT NULL  IDENTITY,
	[last_name] NVARCHAR(50) NOT NULL,
	[first_name] NVARCHAR(50) NOT NULL,
	[mail] NVARCHAR(100) NOT NULL,
	[active] BIT NOT NULL DEFAULT 1, 

    CONSTRAINT [UK_customers_mail] UNIQUE ([mail]), 
    CONSTRAINT [PK_customers] PRIMARY KEY ([id]) 

)

GO

CREATE TRIGGER [dbo].[Trigger_customers_soft_delete]
    ON [dbo].[customers]
    INSTEAD OF DELETE
    AS
    BEGIN
        SET NoCount ON;

        UPDATE [dbo].[customers]
        SET [active] = 0
        FROM [dbo].[customers] c
            INNER JOIN deleted d 
                ON d.id = c.id;
    END