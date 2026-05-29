-- ============================================
-- E-Commerce Customer Analytics
-- SQL Analysis Queries
-- Author: Aryan Gupta
-- ============================================


-- --------------------------------------------
-- Query 1: Top 10 Countries by Total Revenue
-- --------------------------------------------
SELECT
	Country,
	SUM("Total Price") AS Total_Revenue
FROM transactions
GROUP BY Country
ORDER BY Total_Revenue DESC 
LIMIT 10


-- --------------------------------------------
-- Query 2: Customer Segments Revenue Analysis (JOIN)
-- --------------------------------------------
SELECT
	COUNT(DISTINCT T."Customer ID") AS Unique_Customer,
	R.Segment,
	SUM(T."Total Price") AS Total_Revenue
FROM rfm_segments R
JOIN transactions T
	ON R."Customer ID" = T."Customer ID"
GROUP BY R.Segment
ORDER BY Total_Revenue DESC


-- --------------------------------------------
-- Query 3: Average Revenue per Segment (CTE)
-- --------------------------------------------
WITH revenue_per_customer AS (
	SELECT
		"Customer ID",
		SUM("Total Price") AS Total_Revenue
	FROM transactions
	GROUP BY "Customer ID"
)
SELECT 
	R2.Segment,
	ROUND(AVG(R1.Total_Revenue),2) AS Avg_Revenue
FROM revenue_per_customer AS R1
JOIN rfm_segments AS R2
	ON R1."Customer ID" = R2."Customer ID"
GROUP BY R2.Segment
ORDER BY Avg_Revenue DESC


-- --------------------------------------------
-- Query 4: Customer Ranking Within Segments (Window Function)
-- --------------------------------------------
SELECT
	T."Customer ID",
	R.Segment,
	SUM(T."Total Price") AS Total_Rev,
	RANK() OVER(PARTITION BY R.Segment ORDER BY SUM(T."Total Price") DESC) AS Customer_Rank
FROM transactions AS T
JOIN rfm_segments AS R
	ON T."Customer ID" = R."Customer ID"
GROUP BY T."Customer ID", R.Segment 
ORDER BY R.Segment ASC, Total_Rev DESC


-- --------------------------------------------
-- Query 5: Monthly Revenue Trend with LAG (Window Function)
-- --------------------------------------------
SELECT
	"Month Name",
	SUM("Total Price") AS Current_Month_Revenue,
	LAG(SUM("Total Price")) OVER(ORDER BY "Month Number") AS Previous_Month_Revenue
FROM transactions
GROUP BY "Month Number", "Month Name"
ORDER BY "Month Number"
