CREATE VIEW [dbo].[v_customers_active]
AS 
	SELECT [id], 
		CONCAT([last_name], ' ', [first_name]) AS [nom complet], 
		[mail]
	FROM [customers]
	WHERE [active] = 1;
