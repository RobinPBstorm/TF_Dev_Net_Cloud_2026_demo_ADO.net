CREATE PROCEDURE [dbo].[create_order]
	@customer_id int,
	@product1_id int,
	@product1_quantity int
AS
BEGIN
	INSERT INTO orders ([customer_id], [order_date])
	VALUES (@customer_id, GETDATE());

	INSERT INTO order_lines ([order_id], [product_id],[quantity])
	VALUES (IDENT_CURRENT('orders'), @product1_id, @product1_quantity);
END