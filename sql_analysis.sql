CREATE DATABASE GovernmentProcurement;
USE GovernmentProcurement;
SELECT COUNT(*) FROM government_procurement;
SELECT TOP 10 * FROM government_procurement;
SELECT COUNT(DISTINCT tender_no) FROM government_procurement;


/* Which government agencies have the highest procurement expenditure?*/

SELECT
    agency,
    SUM(awarded_amt) AS total_procurement_value,
    RANK() OVER (ORDER BY SUM(awarded_amt) DESC) AS agency_rank
FROM government_procurement
GROUP BY agency
ORDER BY total_procurement_value DESC;


/* Which supplier has received the highest total procurement value within each government agency? */

WITH SupplierPerformance AS
(
    SELECT
        agency,
        supplier_name,
        SUM(awarded_amt) AS total_procurement_value,

        ROW_NUMBER() OVER
        (
            PARTITION BY agency
            ORDER BY SUM(awarded_amt) DESC
        ) AS supplier_rank

    FROM government_procurement

    GROUP BY
        agency,
        supplier_name
)

SELECT
    agency,
    supplier_name,
    total_procurement_value

FROM SupplierPerformance

WHERE supplier_rank = 1

ORDER BY total_procurement_value DESC;

/* What percentage of the total procurement expenditure is contributed by each government agency? */

SELECT
    agency,
    SUM(awarded_amt) AS total_procurement_value,

    ROUND(
        (SUM(awarded_amt) * 100.0) /
        SUM(SUM(awarded_amt)) OVER (),
        2
    ) AS spending_percentage

FROM government_procurement

GROUP BY agency

ORDER BY spending_percentage DESC;


/* How has procurement expenditure changed from one year to the next, and what is the year-over-year growth percentage? */


WITH YearlySpending AS
(
    SELECT
        award_year,
        SUM(awarded_amt) AS total_procurement_value
    FROM government_procurement
    GROUP BY award_year
)

SELECT
    award_year,
    total_procurement_value,

    LAG(total_procurement_value) OVER
    (
        ORDER BY award_year
    ) AS previous_year_spending,

    ROUND(
        (
            (total_procurement_value -
            LAG(total_procurement_value) OVER (ORDER BY award_year))
            * 100.0
        )
        /
        LAG(total_procurement_value) OVER (ORDER BY award_year),
        2
    ) AS yoy_growth_percentage

FROM YearlySpending

ORDER BY award_year;

/* Can government agencies be categorized into High, Medium, and Low procurement spenders based on their total procurement expenditure? */


WITH AgencySpending AS
(
    SELECT
        agency,
        SUM(awarded_amt) AS total_procurement_value
    FROM government_procurement
    GROUP BY agency
)

SELECT
    agency,
    total_procurement_value,

    CASE
        WHEN total_procurement_value >= 100000000 THEN 'High Spending'
        WHEN total_procurement_value >= 50000000 THEN 'Medium Spending'
        ELSE 'Low Spending'
    END AS spending_category

FROM AgencySpending

ORDER BY total_procurement_value DESC;