CREATE VIEW [dbo].[v_orders]
AS 
	SELECT c.[mail], 
		c.[first_name], 
		c.[last_name],
		total.[total]
	FROM [orders] o
	INNER JOIN [customers] c
		ON o.[customer_id] = c.[id]
	INNER JOIN (
		SELECT o1.[id] AS [order_id], 
			SUM(ol.[quantity] * p.[unit_price]) AS total
		FROM orders o1
			INNER JOIN [order_lines] ol
		ON ol.[order_id] = o1.[id]
			INNER JOIN [products] p
		ON p.[id] = ol.[product_id]
		GROUP BY o1.[id]
	) total
		ON total.[order_id] = o.[id]
	
