CREATE TABLE [dbo].[orders]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	[customer_id] INT NOT NULL,
	[order_date] DATETIME NOT NULL,

    CONSTRAINT [FK_orders_customers_id] 
		FOREIGN KEY([customer_id])
		REFERENCES [customers]([id])
)

GO
