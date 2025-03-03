# Pizza-Sales-Analysis-with-SQL
Pizza Sales Analysis with SQL Server

# PIZZA SALES SQL QUERIES
#  All KPI’s
# 1. Total Revenue:
SELECT SUM(total_price) AS Total_Revenue
FROM [Pizza_DB].[dbo].[pizza_sales]
# 2. Average Order Value
SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_order_Value FROM
[Pizza_DB].[dbo].[pizza_sales]
# 3. Total Pizzas Sold
SELECT SUM(quantity) AS Total_Pizza_Sold
FROM [Pizza_DB].[dbo].[pizza_sales]
# 4. Total Orders
SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM [Pizza_DB].[dbo].[pizza_sales]
# 5. Average Order Value (AOV) / Avarage Order Value Per Pizzas
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / CAST(COUNT(DISTINCT
order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
AS AOV
FROM [Pizza_DB].[dbo].[pizza_sales]
# 6. Day Wise(Daily) Trend of Total Orders and Sales
SELECT DATENAME(DW, order_date) AS 'DAYS' , COUNT(DISTINCT order_id) AS
'TOTAL_ORDERS', CAST(SUM(total_price) AS DECIMAL(10,2)) AS 'TOTAL_SALE'
FROM pizza_sales
GROUP BY DATENAME(DW, order_date)
# 7. Hourly Trend for Orders
SELECT DATEPART(HOUR, order_time) AS 'CLOCK HOUR' , COUNT(DISTINCT order_id) AS
'TOTAL_ORDERS', CAST(SUM(total_price) AS DECIMAL(10,2)) AS 'TOTAL_SALE'
FROM pizza_sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY DATEPART(HOUR, order_time)
# 8. Percentage(%) of Sales by Pizza Category
SELECT pizza_category AS CATEGORY , COUNT(DISTINCT order_id) AS
'TOTAL_ORDERS', CAST(SUM(total_price) AS DECIMAL(10,2)) AS 'TOTAL_SALE',
CAST(CAST(SUM(total_price) AS DECIMAL(10,2))*100 / (SELECT SUM(total_price)
FROM pizza_sales) AS DECIMAL(10,2)) AS 'PCT(%)'
FROM pizza_sales
GROUP BY pizza_category
ORDER BY 'PCT(%)' DESC
# 9. Percentage(%) of Sales by Pizza Size
SELECT pizza_size , COUNT(DISTINCT order_id) AS 'TOTAL_ORDERS', CAST(SUM(total_price) AS
DECIMAL(10,2)) AS 'TOTAL_SALE',
CAST(CAST(SUM(total_price) AS DECIMAL(10,2))*100 / (SELECT SUM(total_price) FROM pizza_sales) AS
DECIMAL(10,2)) AS 'PCT(%)'
FROM pizza_sales
GROUP BY pizza_size
ORDER BY 'PCT(%)' DESC
# 10. Total Pizzas Sold by Pizza Category
SELECT pizza_category , SUM(quantity) AS 'TOTAL_ORDER_QUANTITY',
CAST(SUM(total_price) AS DECIMAL(10,2)) AS 'TOTAL_SALE',
CAST(CAST(SUM(total_price) AS DECIMAL(10,2))*100 / (SELECT SUM(total_price)
FROM pizza_sales) AS DECIMAL(10,2)) AS 'PCT(%)'
FROM pizza_sales
GROUP BY pizza_category
ORDER BY 'PCT(%)' DESC
# 11. Top 5 Best Sellers by Total Pizzas Sold
SELECT TOP 5 pizza_name , SUM(quantity) AS 'TOTAL_ORDER_QUANTITY',
CAST(SUM(total_price) AS DECIMAL(10,2)) AS 'TOTAL_SALE'
FROM pizza_sales
GROUP BY pizza_name
ORDER BY 'TOTAL_ORDER_QUANTITY' DESC
12. Bottom 5 Best Sellers by Total Pizzas Sold
SELECT TOP 5 pizza_name , SUM(quantity) AS 'TOTAL_ORDER_QUANTITY',
CAST(SUM(total_price) AS DECIMAL(10,2)) AS 'TOTAL_SALE'
FROM pizza_sales
GROUP BY pizza_name
ORDER BY 'TOTAL_ORDER_QUANTITY' ASC

![Screenshot 2025-03-03 164601](https://github.com/user-attachments/assets/796ba153-d9f4-4ead-bb30-c5c67ae5fadb)
![Screenshot 2025-03-03 165212](https://github.com/user-attachments/assets/71171458-f969-4686-b6cb-5738fc6a9b1c)
![Screenshot 2025-03-03 165713](https://github.com/user-attachments/assets/36c5eb33-f9a0-45d3-a2a8-0ca047f1222c)
![Screenshot 2025-03-03 170019](https://github.com/user-attachments/assets/78f5a8f6-2308-4da5-b363-ee2ad154992c)
![Screenshot 2025-03-03 170207](https://github.com/user-attachments/assets/37f02b84-fd7b-4d23-9d45-5d73d5dfcdb4)
![Screenshot 2025-03-03 173200](https://github.com/user-attachments/assets/e557ca62-f318-4d41-aad3-78e770148f12)
![Screenshot 2025-03-03 173219](https://github.com/user-attachments/assets/37290ae1-2461-473e-a2e6-ed1ab2467f00)
![Screenshot 2025-03-03 180713](https://github.com/user-attachments/assets/fabbb96a-25ec-4fa2-be56-3289c83d2130)
![Screenshot 2025-03-03 182118](https://github.com/user-attachments/assets/8cdb9f30-40c3-48ea-aae4-ac27f7f30acf)
![Screenshot 2025-03-03 183721](https://github.com/user-attachments/assets/e989aec2-3187-406a-be1d-8f5b73f679d3)
![Screenshot 2025-03-03 184201](https://github.com/user-attachments/assets/08c7d2d4-505c-4e87-af04-4041a094d32d)
![Screenshot 2025-03-03 184818](https://github.com/user-attachments/assets/3385f764-7b43-4f5f-9686-c16cd75044c0)
![Screenshot 2025-03-03 191038](https://github.com/user-attachments/assets/849527c0-80eb-431a-91d7-7208bcc5cec7)
![Screenshot 2025-03-03 191255](https://github.com/user-attachments/assets/0d28687c-93b3-4396-bec0-e0e3a211b85f)
![image](https://github.com/user-attachments/assets/62f6d667-0811-4acf-80d0-7e45de05d154)

