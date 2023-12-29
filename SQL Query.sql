SELECT
o.Date as order_date,
pc.CategoryName as category_name,
p.ProdName as product_name,
p.Price as product_price,
o.Quantity as product_quantity,
round(sum(o.Quantity * p.Price)) as total_sales,
c.CustomerEmail as cust_email,
c.CustomerCity as cust_city
FROM orders as o
JOIN customers as c on o.CustomerID = c.CustomerID
JOIN products as p on o.ProdNumber= p.ProdNumber
JOIN productcategory as pc on p.Category = pc.CategoryID
GROUP BY 1,2,3,4,5,7,8
ORDER BY 1 ASC;