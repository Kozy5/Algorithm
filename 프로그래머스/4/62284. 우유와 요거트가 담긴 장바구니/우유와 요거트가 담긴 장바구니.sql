SELECT CART_ID
FROM CART_PRODUCTS 
WHERE CART_ID IN (SELECT cart_id FROM CART_PRODUCTS GROUP BY 1 HAVING NAME IN ('Milk','Yogurt'))
group by 1
having count(distinct name) = 2