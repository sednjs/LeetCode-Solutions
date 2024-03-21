SELECT Prices.product_id, 
       COALESCE(ROUND(SUM(Prices.price*UnitsSold.units)/SUM(units) , 2) ,0) as average_price
FROM Prices 
LEFT JOIN UnitsSold on Prices.product_id=UnitsSold.product_id 
                    and Prices.start_date<=UnitsSold.purchase_date and Prices.end_date>=UnitsSold.purchase_date
GROUP BY product_id