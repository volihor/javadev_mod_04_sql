SELECT name ,salary FROM worker
	WHERE salary = (
		SELECT MAX(salary) FROM worker
	)
;

--SELECT DISTINCT ON (2) name, level, Max(salary) FROM worker
--	GROUP BY name, level, salary;


SELECT name, level, salary FROM
	(SELECT name, level , salary,
               RANK() OVER (PARTITION BY level ORDER BY salary DESC) AS rk
        FROM   worker) t
WHERE  rk = 1;