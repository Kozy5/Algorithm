SELECT CART_ID
FROM CART_PRODUCTS 
WHERE CART_ID in (SELECT CART_ID FROM CART_PRODUCTS group by 1 having name in ('Milk','Yogurt'))
group by 1
having count(distinct name) = 2
