-- ============================================
-- TELCO CUSTOMER CHURN ANALYTICS
-- 02_BASIC_ANALYSIS.SQL
-- ============================================

USE telco_churn_analytics;

SELECT
    Churn,
    COUNT(*) AS customer_count
FROM telco_churn
GROUP BY Churn;

SELECT
    COUNT(*) AS total_customers,
    SUM(Churn_Flag) AS churned_customers,
    ROUND(
        SUM(Churn_Flag) * 100.0 / COUNT(*),
        2
    ) AS churn_rate_percent
FROM telco_churn;

SELECT
    ROUND(SUM(MonthlyCharges), 2) AS total_monthly_revenue
FROM telco_churn;

SELECT
    ROUND(AVG(MonthlyCharges), 2) AS average_monthly_charge
FROM telco_churn;

SELECT
    ROUND(SUM(TotalCharges), 2) AS total_customer_charges
FROM telco_churn;

SELECT
    ROUND(AVG(tenure), 2) AS average_tenure_months
FROM telco_churn;

SELECT
    MIN(tenure) AS minimum_tenure_months,
    MAX(tenure) AS maximum_tenure_months
FROM telco_churn;

SELECT
    gender,
    COUNT(*) AS total_customers,
    SUM(Churn_Flag) AS churned_customers,
    ROUND(
        SUM(Churn_Flag) * 100.0 / COUNT(*),
        2
    ) AS churn_rate_percent
FROM telco_churn
GROUP BY gender
ORDER BY churn_rate_percent DESC;

SELECT
    Senior_Citizen_Status,
    COUNT(*) AS total_customers,
    SUM(Churn_Flag) AS churned_customers,
    ROUND(
        SUM(Churn_Flag) * 100.0 / COUNT(*),
        2
    ) AS churn_rate_percent
FROM telco_churn
GROUP BY Senior_Citizen_Status
ORDER BY churn_rate_percent DESC;

SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(Churn_Flag) AS churned_customers,
    ROUND(
        SUM(Churn_Flag) * 100.0 / COUNT(*),
        2
    ) AS churn_rate_percent
FROM telco_churn
GROUP BY Contract
ORDER BY churn_rate_percent DESC;

SELECT
    Tenure_Group,
    COUNT(*) AS total_customers,
    SUM(Churn_Flag) AS churned_customers,
    ROUND(
        SUM(Churn_Flag) * 100.0 / COUNT(*),
        2
    ) AS churn_rate_percent
FROM telco_churn
GROUP BY Tenure_Group
ORDER BY
    CASE Tenure_Group
        WHEN '0-12 Months' THEN 1
        WHEN '13-24 Months' THEN 2
        WHEN '25-48 Months' THEN 3
        WHEN '49-60 Months' THEN 4
        WHEN '60+ Months' THEN 5
    END;
    
SELECT
    InternetService,
    COUNT(*) AS total_customers,
    SUM(Churn_Flag) AS churned_customers,
    ROUND(
        SUM(Churn_Flag) * 100.0 / COUNT(*),
        2
    ) AS churn_rate_percent
FROM telco_churn
GROUP BY InternetService
ORDER BY churn_rate_percent DESC;

SELECT
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(Churn_Flag) AS churned_customers,
    ROUND(
        SUM(Churn_Flag) * 100.0 / COUNT(*),
        2
    ) AS churn_rate_percent
FROM telco_churn
GROUP BY PaymentMethod
ORDER BY churn_rate_percent DESC;

SELECT
    COUNT(*) AS total_customers,
    SUM(Churn_Flag) AS churned_customers,
    COUNT(*) - SUM(Churn_Flag) AS retained_customers,
    ROUND(SUM(Churn_Flag) * 100.0 / COUNT(*), 2) AS churn_rate_percent,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charge,
    ROUND(AVG(TotalCharges), 2) AS avg_total_charges,
    ROUND(AVG(tenure), 2) AS avg_tenure_months
FROM telco_churn;