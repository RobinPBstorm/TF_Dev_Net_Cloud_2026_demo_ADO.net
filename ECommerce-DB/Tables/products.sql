CREATE TABLE [dbo].[products]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY,
	[name] NVARCHAR(50) NOT NULL, 
    [unit_price] MONEY NOT NULL,
	[active] BIT NOT NULL DEFAULT 1,

	CONSTRAINT [CK_Products_positive_unite_price] CHECK (unit_price > CAST(0 AS MONEY))
)

GO

CREATE TRIGGER [dbo].[Trigger_products_soft_delete]
    ON [dbo].[products]
    INSTEAD OF DELETE
    AS
    BEGIN
        SET NoCount ON;

        UPDATE [dbo].[products]
        SET [active] = 0
        FROM [dbo].[products] p
            INNER JOIN deleted d 
                ON d.id = p.id;

    END