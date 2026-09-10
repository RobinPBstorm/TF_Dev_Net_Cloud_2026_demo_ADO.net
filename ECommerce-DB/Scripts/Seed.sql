DELETE FROM [dbo].[order_lines];
DELETE FROM [dbo].[orders];
DELETE FROM [dbo].[customers];
DELETE FROM [dbo].[products];

--          products
SET IDENTITY_INSERT [dbo].[products] ON;

INSERT INTO [dbo].[products] ([id],[name],[unit_price])
VALUES (1, 'Pull Jaune XLL', 30),
	(2, 'Pull Jaune L', 25),
	(3, 'Pull Vert L', 25);

SET IDENTITY_INSERT [dbo].[products] OFF;

--           customers
SET IDENTITY_INSERT [dbo].[customers] ON;

INSERT INTO [dbo].[customers] ([id], [first_name], [last_name], [mail])
VALUES (1, 'John', 'Doe', 'John.Doe@gmail.com'),
	(2, 'Jane', 'Doe', 'Jane.Doe@gmail.com');

SET IDENTITY_INSERT [dbo].[customers] OFF;

--           orders
SET IDENTITY_INSERT [dbo].[orders] ON;

INSERT INTO [dbo].[orders] ([id], [customer_id], [order_date])
VALUES (1, 1, GETDATE()),
	(2, 2, GETDATE())

SET IDENTITY_INSERT [dbo].[orders] OFF;
--           order_line
SET IDENTITY_INSERT [dbo].[order_lines] ON;

INSERT INTO [dbo].[order_lines] ([id], [order_id], [product_id], [quantity])
VALUES (1, 1, 1, 2),
	(2, 1, 2 , 2),
	(3, 1, 3, 2),
	(4, 2, 3, 1);

SET IDENTITY_INSERT [dbo].[order_lines] OFF;
