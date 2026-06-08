select * from Shop_trends;

--> Total Revenue Generated
select SUM(sale_price) as total_revenue from Shop_trends;

--> Total Quantity Sold
select SUM(quantity) as total_quantity as  from Shop_trends;

--> Average Discount
select ROUND(AVG(discount),2) as avg_discount from shop_trends;

--> Customer Contribution in Sales
select Gender,SUM(sale_price) as Revenue from Shop_trends
GROUP BY Gender;

--> Category Wise Sales
select Category,SUM(sale_price) as Revenue from Shop_trends
GROUP BY Category;

--> Which Products Generated Highest Revenue
select product,Sum(sale_price) as Revenue from Shop_trends
GROUP BY product
ORDER BY Revenue DESC LIMIT 5;

--> Which Category has Generated Highest Revenue
select Category,SUM(Sale_price) as Revenue from Shop_trends 
GROUP BY category
ORDER BY Revenue DESC LIMIT 1;

--> Which Category has Generated High Profits
select Category,SUM(profit) as profit from Shop_trends 
GROUP BY category
ORDER BY profit DESC LIMIT 1;

--> Monthly sales 
select month_name,SUM(sale_price) as Revenue from Shop_trends
GROUP BY month_name 
ORDER BY Revenue DESC;

--> Which Cities Has Highest Sales
select City,SUM(sale_price) as Revenue from shop_trends
GROUP BY City
ORDER BY Revenue DESC LIMIT 5;

--> Regional Wise Sales
select Region,Sum(profit) as profit from shop_trends
GROUP BY Region
ORDER BY profit DESC;

--> Which Category has High Rating 
select category,ROUND(AVG(rating),2) as avg_rating from shop_trends
GROUP BY category
ORDER BY avg_rating DESC;

--> Most Prefered payment Mode
select payment_method,COUNT(*) as transactions from shop_trends 
GROUP BY payment_method
ORDER BY transactions DESC;

--> 
SELECT
    discount,
    ROUND(AVG(profit),2) AS avg_profit,
    ROUND(AVG(sale_price),2) AS avg_sales,
    COUNT(*) AS orders
FROM Shop_trends
GROUP BY discount
ORDER BY discount;

--> Which is konow as Month of Profits
select month_name,SUM(Profit) as Profit from shop_trends
GROUP BY month_name
ORDER BY Profit DESC LIMIT 1;

--> 
select subscriptions,COUNT(customer_id) as total_members from shop_trends
GROUP BY subscriptions
ORDER BY total_members DESC;

--> Revenue Contribution Subscription Wise
select subscriptions,SUM(sale_price) as Revenue from shop_trends
GROUP BY subscriptions
ORDER BY Revenue DESC;

--> Which Product has Highest Profit Margin
select product,ROUND(AVG(profit_margin),2) as avg_profit from shop_trends
GROUP BY product
ORDER BY avg_profit DESC LIMIT 10;

--> Lowest rating products
select product,ROUND(avg(rating),2) as avg_rating from shop_trends
GROUP BY product
ORDER BY avg_rating ASC LIMIT 10;

--> Most Frequently Purchased Category
select category,SUM(quantity) as quantity from shop_trends
GROUP BY category
ORDER BY quantity DESC;

--> Most Frequently Purchased Products
select product,SUM(quantity) as quantity from shop_trends
GROUP BY product
ORDER BY quantity DESC LIMIT 5;

--> Average Order value
select ROUND(Avg(sale_price),2) as avg_order_val from shop_trends;

--> Product Ranking Based Revenue
select product,SUM(sale_price) as revenue,
RANK() OVER(ORDER BY SUM(sale_price) DESC) as rnk_revenue
from shop_trends 
GROUP BY product;

--> Monthly  Ranking Based Revenue
select month_name,SUM(sale_price) as revenue,
RANK() OVER(ORDER BY SUM(sale_price) DESC) as rnk_revenue
from shop_trends 
GROUP BY month_name;

--> Ranking of customers
select * from(
select customer_id,SUM(sale_price) as revenue,
RANK() OVER(ORDER BY SUM(sale_price) DESC) as cus_rank
from shop_trends
GROUP BY customer_id
) where cus_rank <= 5;

--> Top Performing Cities
select * from(
select city,sum(sale_price) as revenue,
RANK() OVER(ORDER BY SUM(sale_price) DESC) as city_rank
from shop_trends
GROUP BY city)
WHERE city_rank <= 5;


SELECT
    discount,
    ROUND(AVG(profit),2) AS avg_profit,
    ROUND(AVG(sale_price),2) AS avg_sales,
    COUNT(*) AS orders
FROM Shop_trends
GROUP BY discount
ORDER BY discount;

