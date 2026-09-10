CREATE VIEW [dbo].[student_wth_grade]
AS 
	SELECT s.[first_name],
		s.[last_name],
		g.[grade]
	FROM [student] s
		INNER JOIN [grade] g
			ON s.[year_result] BETWEEN g.[lower_bound] AND g.[upper_bound];