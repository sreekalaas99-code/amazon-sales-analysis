SELECT Category, COUNT(*) AS Total_Orders
FROM amazon_sales_data
GROUP BY Category
ORDER BY Total_Orders DESC;
SELECT Status, COUNT(*) AS Total_Orders
FROM amazon_sales_data
GROUP BY Status
ORDER BY Total_Orders DESC;
SELECT `ship-city`, COUNT(*) AS Total_Orders
FROM amazon_sales_data
GROUP BY `ship-city`
ORDER BY Total_Orders DESC
LIMIT 10;
SELECT Size, COUNT(*) AS Total_Orders
FROM amazon_sales_data
GROUP BY Size
ORDER BY Total_Orders DESC;
SELECT Category, ROUND(SUM(Amount),2) AS Total_Revenue
FROM amazon_sales_data
GROUP BY Category
ORDER BY Total_Revenue DESC;
SELECT 
MONTH(Date) AS Month_Number,
COUNT(*) AS Total_Orders,
ROUND(SUM(Amount),2) AS Total_Revenue
FROM amazon_sales_data
GROUP BY MONTH(Date)
ORDER BY Month_Number;
SELECT 
MONTH(STR_TO_DATE(Date,'%d-%m-%Y')) AS Month_Number,
COUNT(*) AS Total_Orders,
ROUND(SUM(Amount),2) AS Total_Revenue
FROM amazon_sales_data
GROUP BY Month_Number
ORDER BY Month_Number;
SELECT Date
FROM amazon_sales_data
LIMIT 10;
SELECT 
MONTH(STR_TO_DATE(Date,'%m-%d-%y')) AS Month_Number,
COUNT(*) AS Total_Orders,
ROUND(SUM(Amount),2) AS Total_Revenue
FROM amazon_sales_data
GROUP BY Month_Number
ORDER BY Month_Number;
SELECT *
FROM amazon_sales_data;
SELECT `ship-city`,
ROUND(SUM(Amount),2) AS Revenue
FROM amazon_sales_data
GROUP BY `ship-city`
ORDER BY Revenue DESC
LIMIT 5;
SELECT 
ROUND(AVG(Amount),2) AS Avg_Order_Value
FROM amazon_sales_data;
SELECT 
Status,
COUNT(*) AS Total_Orders
FROM amazon_sales_data
GROUP BY Status
ORDER BY Total_Orders DESC;

