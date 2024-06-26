SELECT C.CAR_ID,
       C.CAR_TYPE,
       ROUND(C.DAILY_FEE*(100-P.DISCOUNT_RATE)*30/100) FEE
FROM CAR_RENTAL_COMPANY_CAR C
LEFT JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN P 
ON C.CAR_TYPE = P.CAR_TYPE
WHERE C.CAR_ID 
NOT IN (SELECT CAR_ID 
        FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
        WHERE '2022-11' BETWEEN DATE_FORMAT(START_DATE,'%Y-%m%') AND DATE_FORMAT(END_DATE,'%Y-%m'))
AND P.DURATION_TYPE = '30일 이상'
AND C.DAILY_FEE*(100-P.DISCOUNT_RATE)*30/100 BETWEEN 500000 AND 2000000
AND C.CAR_TYPE IN ('세단','SUV') 
ORDER BY 3 DESC,2,1 DESC