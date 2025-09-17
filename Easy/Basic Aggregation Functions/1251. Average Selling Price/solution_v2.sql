# Write your MySQL query statement below
# Using Join 
SELECT p.product_id,COALESCE(round(sum(price*units)/sum(units),2),0) as average_price
FROM PRICES as p
LEFT JOIN UnitsSold As US 
    ON p.product_id=US.product_id
    AND US.purchase_date BETWEEN start_date AND end_date
GROUP BY p.product_id