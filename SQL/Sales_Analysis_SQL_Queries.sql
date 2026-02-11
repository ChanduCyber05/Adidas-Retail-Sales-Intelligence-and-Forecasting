select * from adidas limit 5
--1. Which region contributes the highest percentage of total sales?
SELECT
    region,
        round(((SUM(total_sales)*100.0/ SUM(SUM(total_sales)) OVER())::numeric),2)AS Sale_perc
FROM adidas
GROUP BY region
ORDER BY Sale_perc DESC
LIMIT 1;

--2. Rank the top 5 products by operating profit.
select product, ROW_NUMBER()OVER(ORDER BY SUM(operating_profit) DESC) as Rank
FROM adidas
GROUP BY product
ORDER BY Rank ASC
LIMIT 5

--3. What is the monthly sales trend? Identify peak sales months.
select TO_CHAR(invoice_date,'Month') as Months, SUM(total_sales) as Total_Sale
from adidas
GROUP BY Months
ORDER BY Total_Sale DESC LIMIT 5

--4. Which retailers generate high revenue but low profit margins?
select retailer, SUM(total_sales) as Revenue, ROUND(((SUM(operating_profit)/SUM(total_sales))::numeric),2) as Margin
FROM adidas
GROUP BY retailer
ORDER BY Revenue DESC, Margin

--5. Compare Online vs In-store sales performance.
select sales_method, round((SUM(total_sales)*100/(SUM(SUM(total_sales)) OVER()))::numeric,2)as Sales
from adidas
WHERE sales_method IN ('In-store','Online')
GROUP BY sales_method

--6. Identify the top 3 states within each region by sales.
WITH CTE as(select region,state,SUM(total_sales) as Sales, RANK()OVER(PARTITION BY region ORDER BY SUM(total_sales)DESC) as Rank
FROM adidas
GROUP BY region, state)
select region, state, Sales
FROM CTE
WHERE Rank < 4

--7. Which products have above-average operating margins?
with cte as(select product, ROUND(((SUM(operating_profit)/SUM(total_sales))::numeric),2) as Margins
FROM adidas
GROUP BY product)
select product, Margins from cte
WHERE Margins > (SELECT ROUND(((SUM(operating_profit)/SUM(total_sales))::numeric),2) FROM adidas)

--8. What percentage of total revenue comes from the top 20% of products?
WITH product_revenue AS (
    SELECT
        product,
        SUM(total_sales) AS revenue
    FROM adidas
    GROUP BY product
),
ranked AS (
    SELECT
        product,
        revenue,
        ROW_NUMBER() OVER (ORDER BY revenue DESC) AS rn,
        COUNT(*) OVER () AS total_products
    FROM product_revenue
)
SELECT
    ROUND(
        (SUM(revenue) * 100.0 / (SELECT SUM(revenue) FROM product_revenue))::numeric,
        2
    ) AS top_20pct_revenue_share
FROM ranked
WHERE rn <= total_products * 0.2;

--9. Month-over-Month Sales Growth Rate
WITH CTE AS(SELECT Month, SUM(total_sales) as Sales, LAG(SUM(total_sales))OVER(ORDER BY EXTRACT(Month from invoice_date)) as prev_sales
FROM adidas
WHERE Year = 2020
GROUP BY Month, EXTRACT(Month from invoice_date)
ORDER BY EXTRACT(Month from invoice_date))
SELECT Month, round(((Sales + prev_sales)/prev_sales)::numeric,2) as Growth_Rate
FROM CTE

WITH CTE AS(SELECT Month, SUM(total_sales) as Sales, LAG(SUM(total_sales))OVER(ORDER BY EXTRACT(Month from invoice_date)) as prev_sales
FROM adidas
WHERE Year = 2021
GROUP BY Month, EXTRACT(Month from invoice_date)
ORDER BY EXTRACT(Month from invoice_date))
SELECT Month, round(((Sales + prev_sales)/prev_sales)::numeric,2) as Growth_Rate
FROM CTE

--10. Detect underperforming regions based on BOTH sales and margin.
select region, sum(total_sales) as sales,round(((sum(operating_profit)/sum(total_sales))::numeric),2) as margin
from adidas
group by region
ORDER BY sales,margin
LIMIT 1