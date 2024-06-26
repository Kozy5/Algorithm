SELECT FLAVOR
FROM
(
SELECT FLAVOR,TOTOTAL,RANK() OVER(ORDER BY TOTOTAL DESC) AS RANKING 
FROM
(
SELECT H.FLAVOR,
       SUM(H.TOTAL_ORDER) + SUM(J.TOTAL_ORDER) AS TOTOTAL
FROM FIRST_HALF H
LEFT JOIN JULY J ON H.FLAVOR = J.FLAVOR
GROUP BY 1
) A
) B
WHERE RANKING <= 3