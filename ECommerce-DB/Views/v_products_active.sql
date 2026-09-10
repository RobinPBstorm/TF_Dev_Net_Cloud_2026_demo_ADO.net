CREATE VIEW [dbo].[v_products_active] 
AS 
	SELECT [id], [name], [unit_price] 
	FROM [products]
	WHERE [active] = 1;
