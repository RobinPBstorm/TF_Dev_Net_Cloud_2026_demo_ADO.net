CREATE TABLE [dbo].[order_lines]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [order_id] INT NOT NULL, 
    [product_id] INT NOT NULL,
    [quantity] INT NOT NULL,


    CONSTRAINT [FK_order_lines_order_id] 
        FOREIGN KEY ([order_id]) 
        REFERENCES [orders]([id]),
    CONSTRAINT [FK_order_lines_product_id] 
        FOREIGN KEY ([product_id]) 
        REFERENCES [products]([id]), 
    CONSTRAINT [CK_order_lines_positive_quantity] 
        CHECK (quantity >= 1),


)
