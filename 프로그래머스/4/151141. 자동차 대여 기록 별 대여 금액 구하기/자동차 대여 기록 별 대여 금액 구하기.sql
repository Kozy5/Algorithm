SELECT B.HISTORY_ID,
ROUND(B.RENT*B.DAILY_FEE*(100-IF(A.DISCOUNT_RATE IS NULL, 0, A.DISCOUNT_RATE))/100) FEE
FROM
(SELECT H.HISTORY_ID, DATEDIFF(H.END_DATE,H.START_DATE)+1 RENT,
CASE WHEN DATEDIFF(H.END_DATE,H.START_DATE)+1 >= 90 THEN '90일 이상'
         WHEN DATEDIFF(H.END_DATE,H.START_DATE)+1 >= 30 THEN '30일 이상'
         WHEN DATEDIFF(H.END_DATE,H.START_DATE)+1 >= 7 THEN  '7일 이상' END DISCOUNT,
         C.CAR_TYPE, C.DAILY_FEE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY H LEFT JOIN CAR_RENTAL_COMPANY_CAR C
     ON H.CAR_ID = C.CAR_ID
WHERE C.CAR_TYPE = '트럭'
) B LEFT JOIN (SELECT DURATION_TYPE, DISCOUNT_RATE FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN
               WHERE CAR_TYPE = '트럭') A 
ON B.DISCOUNT = A.DURATION_TYPE
ORDER BY 2 DESC, 1 DESC