SELECT CART_ID
FROM
(
SELECT CART_ID,GROUP_CONCAT(NAME) AS NAMES
FROM CART_PRODUCTS 
GROUP BY CART_ID
) GROUP_NAMES
WHERE NAMES LIKE "%MiLK%" AND NAMES LIKE "%Yogurt%"