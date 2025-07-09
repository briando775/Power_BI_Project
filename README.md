# Maven Market Power BI Analysis 📊

This project analyses Maven Market’s sales and return data to uncover actionable insights that support revenue growth and operational improvements. It is part of my Power BI portfolio and demonstrates end-to-end data analysis, visualisation, and strategic recommendation skills.

---

## 📖 Project Background

Maven Market is a multinational grocery chain operating 24 stores across Canada, Mexico, and the United States. This project analyses the company’s sales and return data to uncover actionable insights that support revenue growth and operational improvements.

The insights and recommendations are structured into three key areas:
- **Sales Trends:** Analysis of sales patterns over the past two years, highlighting revenue trends across store types and individual stores.
- **Store Performance:** Evaluation of U.S. store performance based on year-over-year changes in Average Monthly Transactions, Average Monthly Revenue, Average Monthly Customers, and Average Revenue per Customer.
- **Product and Brand Performance:** In-depth analysis of top-performing brands and identification of underperforming products requiring attention.

A demonstration of how the three dashboards function is available [here](https://github.com/briando775/Power_BI_Project/tree/main/Power%20BI%20Dashboards#readme)

The SQL queries used to analyse underperforming products are available [here](https://github.com/briando775/Power_BI_Project/blob/main/SQL/Product%20Labeling%20For%20Replacement.sql).

---

## 📂 Data Structure

The dataset includes Maven Market’s transaction and returns data from **January 1997** to **December 1998**, covering customers, products, and stores across **24 locations**. The transactions table and the returns table consist of **269,720 rows** and **7,087 rows** respectively.

Power Query’s profiling tools (such as column quality and column profile) were used to assess data quality and address null and duplicate values. Transformation tools—including text, numeric, and date/time functions—were applied to prepare the data for analysis.

![Data Structure](/Images%20&%20Gifs/Data%20Structure.png)

Power Query’s profiling tools (such as column quality and column profile) were used to assess data quality and address null and duplicate values. Transformation tools—including text, numeric, and date/time functions—were applied to prepare the data for analysis.

## 📊 Executive Summary

### Overview and Findings

Revenue has shown a consistent upward trend over the past two years. In **1998**, key performance indicators recorded significant year-over-year (YOY) increases: **total transactions rose by 110.6%, total revenue by 112.18%, and total profit by 112.29%**. The return rate remained steady at 1%, reflecting strong operational performance. This growth was largely driven by the addition of 11 new stores across Canada and Mexico:

- **Canada:** 1 Deluxe Supermarket, 1 Mid-size Grocery
- **Mexico:** 3 Deluxe Supermarkets, 2 Supermarkets, 1 Gourmet Supermarket, 2 Mid-size Groceries, 1 Small Grocery

Below is the Executive dashboard that provides a high-level overview of 1998 business performance.

![Executive Dashboard](/Images%20&%20Gifs/Executive%20Dashboard.png)

---

## 📈 Sales Trends

**January 1998 recorded a notable 72.3% revenue increase over the previous month, driven by the opening of the new stores**. **Monthly revenue peaked in December 1998 at $120,161 from 182,883 transactions**, highlighting strong year-end performance.

In both years, revenue remained stable near the annual average throughout the first three quarters, followed by a seasonal dip in October ($42,342 in 1997 and $92,436 in 1998) and a rebound in November and December during the holiday season.

![Monthly Revenue Trending](/Images%20&%20Gifs/Monthly%20Revenue%20Trending.png)

**Deluxe Supermarkets and Supermarkets** remained the top-performing store types, **contributing 85.14% of total revenue in 1997 and 81.55% in 1998**. Deluxe Supermarkets expanded from 2 to 6 locations and outperformed Supermarkets in 1998 revenue by $37.3K, despite operating two fewer stores, indicating higher average revenue per store. Moreover, all 6 Deluxe Supermarkets ranked among the top 6 revenue-generating stores company-wide.

**Mid-size Groceries achieved the highest YOY growth, nearly quadrupling revenue from $24.3K to $94.2K**, supported by an increase in store count from 1 to 4.

![Sales Trend](/Images%20&%20Gifs/Sales%20Trend.png)

---

## 🏬 Store Performance

**The 11 new stores generated an additional $586,590 in 1998**, supplementing $612,718 from existing U.S. locations.

**In the U.S., most stores posted YOY revenue growth**. Store 16 recorded the highest YOY increase at 22.60%, while Store 2 had the smallest at 0.86%.

**Stores 13 and 23 were the only locations with negative YOY Average Monthly Revenue (-4.63% and -4.45%, respectively)**, driven by significant declines in Average Monthly Customers (-11.13% and -11.27%). These customer declines also reduced Average Monthly Transactions (-6.21% for Store 13 and -5.39% for Store 23). Despite this, Average Monthly Revenue in both stores only fell slightly (less than 5%), supported by increased Average Revenue per Customer.

<p align="center">
<img src="Images & Gifs/Store Performance.png"/>
</p>

---

## 📦 Product and Brand Performance

**Hermanos, Tell Tale, Ebony, and Tri-State** were **the top four revenue- and profit-generating brands for two consecutive years**, collectively **contributing over $139,463 in revenue and $82,069 in profit in 1998**.

**In 1998, the top 30 of 111 brands** sold across Maven Market stores **accounted for nearly 62% of transactions and contributed $754,862 in revenue** (63% of total sales), with an average profit margin of 59.89% and a return rate of 1%.

![Top 30 brands](/Images%20&%20Gifs/Top%2030%20Brands.png)

**Over the past two years, 427 underperforming products from 93 brands** (some brands having multiple underperforming products) have been identified to **repeatedly generated at least 20% below the median revenue of other brands in their product group**. These are categorised as:

- **Critical Priority:** 44 products from 34 brands (≥70% below median revenue)
- **High Priority:** 137 products from 65 brands (≥50% below median revenue)
- **Moderate Priority:** 153 products from 66 brands (≥30% below median revenue)
- **Review Needed:** 93 products from 54 brands (≥20% below median revenue)

A detailed table of all product-brand pairs with revenue at least 20% below their product group’s median revenue can be downloaded [here](https://github.com/briando775/Power_BI_Project/blob/main/Underperforming%20Products/A%20detailed%20table%20of%20all%20product-brand%20pairs.xlsx)

A summary table showing each product brand and the count of its products in each priority label can be downloaded [here](https://github.com/briando775/Power_BI_Project/blob/main/Underperforming%20Products/A%20summary%20table%20for%20each%20product%20brand%20and%20the%20count%20of%20its%20products.xlsx)

---

## ✅ Recommendation

### Product Recommendations

- **Phase out or replace underperforming products from specific brands** identified in the analysis to enhance sales performance and optimize the product portfolio.
- **Prioritize 44 Critical Priority products (34 brands) and 137 High Priority products (65 brands)**, where revenue was 50–70% or more below the product group median over two years, using a phased replacement strategy to ensure smooth transitions and maximise revenue gains.

### Store Improvement Recommendations

Radar charts for each store type illustrate which operational aspects require improvement:

**Deluxe Supermarket**

- For stores with **low traffic but high average spend per customer** (Stores 8 and 12), focus on expanding the customer base through targeted marketing and loyalty initiatives while maintaining premium positioning.
- For stores with **higher traffic but moderate average spend per customer** (Stores 13, 17, 19, and 21), implement upselling and cross-selling strategies to boost revenue per visit. For Store 13, address the -11.13% YOY customer decline through retention campaigns. Additionally, optimize space utilization in Store 21 to improve revenue per square foot.

![Deluxe Supermarket](/Images%20&%20Gifs/Deluxe%20Supermarket.png)

**Gourmet Supermarket**

- For **store 4 with low traffic and high average spend per customer**, increase customer traffic through marketing campaigns and loyalty programs.
- For **store 6 with high traffic and lower average spend per customer**, focus on upselling and cross-selling to lift average spend per visit.

![Gourmet Supermarket](/Images%20&%20Gifs/Gourmet%20Supermarket.png)

**Mid-size Grocery**

- For stores with **low traffic and high average spend per customer** (Stores 18 and 23), grow customer visits via hyperlocal marketing and retention programs. Store 18 should also address underutilised space to improve revenue per square foot.
- For stores with **high traffic and lower average spend per customer** (Stores 9 and 20), leverage their customer bases with upselling and cross-selling efforts to enhance profitability.

![Mid-size Grocery](/Images%20&%20Gifs/Mid-size%20Grocery.png)

**Small Grocery**

**All Small Grocery locations have modest foot traffic (23–27 customers/month) and lower revenue per square foot**. Recommended actions include:

- Attracting more customers through hyperlocal marketing, community partnerships, and loyalty initiatives.
- For underperforming stores (e.g., Stores 2 and 22), optimize space utilization and introduce higher-margin products to maximise returns from limited space.

![Small Grocery](/Images%20&%20Gifs/Small%20Grocery.png)

**Supermarket**

- For stores with **high traffic and moderate average spend per customer** (Stores 1, 7, 11, and 15), apply upselling and cross-selling initiatives to drive higher average spend.
- For stores with **low traffic and high average spend per customer** (Stores 10 and 16), prioritize customer acquisition strategies to grow the customer base while maintaining strong customer spend.
- For stores with **low revenue per square foot** (Stores 3, 10, 16, and 24), optimize space utilization and refine product assortments to increase space efficiency.

![Supermarket](/Images%20&%20Gifs/Supermarket.png)
