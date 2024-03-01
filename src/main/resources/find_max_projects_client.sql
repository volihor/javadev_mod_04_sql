SELECT tbl."NAME", tbl."PROJECT_COUNT" 
		FROM (
			SELECT c.name AS "NAME", COUNT(p.client_id) AS "PROJECT_COUNT"
				FROM client c, project p
				WHERE c.id = p.client_id
				GROUP BY c.name
			)AS tbl
		WHERE tbl."PROJECT_COUNT" = (
			SELECT MAX(c) 
				FROM (SELECT COUNT(client_id) AS c
					FROM project
					GROUP BY client_id
					)
			)
		GROUP BY tbl."NAME", tbl."PROJECT_COUNT" 
;

SELECT tbl."NAME", tbl."PROJECT_COUNT" 
		FROM (
			SELECT c.name AS "NAME", COUNT(p.client_id) AS "PROJECT_COUNT"
				FROM client c, project p
				WHERE c.id = p.client_id
				GROUP BY c.name
			)AS tbl
		GROUP BY tbl."NAME", tbl."PROJECT_COUNT" 
		HAVING tbl."PROJECT_COUNT" = (
			SELECT MAX(c) 
				FROM (SELECT COUNT(client_id) AS c
					FROM project
					GROUP BY client_id
					)
			)
;
