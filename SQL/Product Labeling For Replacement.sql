use PowerBIProject;

-- Create a view listing all product-brand pairs that underperformed in 1997 & 1998
--IF EXISTS (SELECT 1 FROM sys.views WHERE name = 'final_product_labeling' AND type = 'V')
--DROP VIEW final_product_labeling;
CREATE VIEW final_product_labeling AS

-- Separate product names from their associated brand names to define product groups 
-- (each product group consists of all brands selling the same product)
WITH separating_product AS ( 
	SELECT 
		p.*, 
		TRIM(RIGHT(p.product_name, LEN(p.product_name) - LEN(p.product_brand))) AS product
	FROM products p
),

-- Calculate total revenue for each product-brand pair across 1997 & 1998
product_revenue_1997_1998 AS (
	SELECT
		product, 
		product_brand,
		ISNULL(ROUND(SUM(t.quantity * separating_product.product_retail_price), 2), 0) AS revenue_in_1997_1998
	FROM separating_product
		LEFT JOIN transactions t ON t.product_id = separating_product.product_id
	GROUP BY product, product_brand
),

-- Calculate the median revenue within each product group
add_median_revenue AS (
	SELECT 
		p.*,
		ROUND(PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY revenue_in_1997_1998) OVER (PARTITION BY product), 2) AS median_revenue_in_product_group 
	FROM product_revenue_1997_1998 p
),

-- Calculate the percentage gap between each brand’s product revenue and its product group’s median revenue  
calculating_pct_revenue_gap AS (
	SELECT 
		a.*,
		ROUND((revenue_in_1997_1998 - median_revenue_in_product_group) * 100 / median_revenue_in_product_group, 2) AS pct_revenue_gap
	FROM add_median_revenue a 
),

-- Assign priority labels to product-brand pairs based on the percentage revenue gap
product_labeling AS (
SELECT
	c.*,
	CASE
		WHEN pct_revenue_gap < -70 THEN 'Critical Priority' 
		WHEN pct_revenue_gap < -50 THEN 'High Priority' 
        WHEN pct_revenue_gap < -30 THEN 'Moderate Priority'
		ELSE 'Review Needed'
	END AS urgency_level
FROM calculating_pct_revenue_gap c
WHERE pct_revenue_gap < -20
)

-- Return all labeled product-brand records for review
SELECT *
FROM product_labeling;


-- A detailed table of all product-brand pairs with revenue at least 20% below their product group’s median revenue
SELECT * 
FROM final_product_labeling
ORDER BY 5;


-- A summary table showing each product brand and the count of its products in each priority label
SELECT 
	f.product_brand,
	COUNT(CASE WHEN urgency_level = 'Critical Priority' THEN 1 END) AS critical_priority,
	COUNT(CASE WHEN urgency_level = 'High Priority' THEN 1 END) AS high_priority,
	COUNT(CASE WHEN urgency_level = 'Moderate Priority' THEN 1 END) AS moderate_priority,
	COUNT(CASE WHEN urgency_level = 'Review Needed' THEN 1 END) AS review_needed
FROM final_product_labeling f
GROUP BY f.product_brand
ORDER BY 2 DESC, 3 DESC, 4 DESC, 5 DESC;





