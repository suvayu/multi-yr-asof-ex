-- query
WITH a2 AS (SELECT a1.*, lt.technical_lifetime, lt.economic_lifetime
     FROM assets a1
     	  LEFT JOIN assets_lt lt
	  ON lt.name = a1.name
     )
	SELECT a2.*, m1.year, a2.commission_year + a2.technical_lifetime AS decomission_year
	FROM  a2
	      ASOF JOIN model_years m1
	      ON a2.name = m1.name AND a2.commission_year + a2.technical_lifetime >= m1.year
	      -- WHERE m1.year = 2050 -- optional
	      ORDER BY year, commission_year, decomission_year;
