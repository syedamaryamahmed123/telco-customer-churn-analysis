-- ============================================
-- TELCO CUSTOMER CHURN ANALYTICS
-- 03_CUSTOMER_ANALYSIS.SQL
-- ============================================

USE telco_churn_analytics;

SELECT
    gender,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_churn),
        2
    ) AS customer_percentage
FROM telco_churn
GROUP BY gender
ORDER BY customer_count DESC;

SELECT
    Senior_Citizen_Status,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_churn),
        2
    ) AS customer_percentage
FROM telco_churn
GROUP BY Senior_Citizen_Status
ORDER BY customer_count DESC;

SELECT
    Partner,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_churn),
        2
    ) AS customer_percentage
FROM telco_churn
GROUP BY Partner
ORDER BY customer_count DESC;

SELECT
    Dependents,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_churn),
        2
    ) AS customer_percentage
FROM telco_churn
GROUP BY Dependents
ORDER BY customer_count DESC;

SELECT
    Contract,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_churn),
        2
    ) AS customer_percentage
FROM telco_churn
GROUP BY Contract
ORDER BY customer_count DESC;

SELECT
    InternetService,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_churn),
        2
    ) AS customer_percentage
FROM telco_churn
GROUP BY InternetService
ORDER BY customer_count DESC;

SELECT
    PaymentMethod,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_churn),
        2
    ) AS customer_percentage
FROM telco_churn
GROUP BY PaymentMethod
ORDER BY customer_count DESC;

SELECT
    PhoneService,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_churn),
        2
    ) AS customer_percentage
FROM telco_churn
GROUP BY PhoneService
ORDER BY customer_count DESC;

SELECT
    MultipleLines,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_churn),
        2
    ) AS customer_percentage
FROM telco_churn
GROUP BY MultipleLines
ORDER BY customer_count DESC;

SELECT
    OnlineSecurity,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_churn),
        2
    ) AS customer_percentage
FROM telco_churn
GROUP BY OnlineSecurity
ORDER BY customer_count DESC;

SELECT
    OnlineBackup,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_churn),
        2
    ) AS customer_percentage
FROM telco_churn
GROUP BY OnlineBackup
ORDER BY customer_count DESC;

SELECT
    DeviceProtection,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_churn),
        2
    ) AS customer_percentage
FROM telco_churn
GROUP BY DeviceProtection
ORDER BY customer_count DESC;

SELECT
    TechSupport,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_churn),
        2
    ) AS customer_percentage
FROM telco_churn
GROUP BY TechSupport
ORDER BY customer_count DESC;

SELECT
    StreamingTV,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_churn),
        2
    ) AS customer_percentage
FROM telco_churn
GROUP BY StreamingTV
ORDER BY customer_count DESC;

SELECT
    StreamingMovies,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_churn),
        2
    ) AS customer_percentage
FROM telco_churn
GROUP BY StreamingMovies
ORDER BY customer_count DESC;

SELECT
    Contract,
    COUNT(*) AS customer_count,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charge,
    ROUND(AVG(TotalCharges), 2) AS avg_total_charges,
    ROUND(AVG(tenure), 2) AS avg_tenure_months
FROM telco_churn
GROUP BY Contract
ORDER BY avg_monthly_charge DESC;

SELECT
    InternetService,
    COUNT(*) AS customer_count,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charge,
    ROUND(AVG(TotalCharges), 2) AS avg_total_charges,
    ROUND(AVG(tenure), 2) AS avg_tenure_months
FROM telco_churn
GROUP BY InternetService
ORDER BY avg_monthly_charge DESC;

SELECT
    Tenure_Group,
    COUNT(*) AS customer_count,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charge,
    ROUND(AVG(TotalCharges), 2) AS avg_total_charges,
    ROUND(AVG(tenure), 2) AS avg_tenure_months
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
    PaperlessBilling,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_churn),
        2
    ) AS customer_percentage
FROM telco_churn
GROUP BY PaperlessBilling
ORDER BY customer_count DESC;

SELECT
    Senior_Citizen_Status,
    Partner,
    Dependents,
    COUNT(*) AS customer_count,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charge,
    ROUND(AVG(TotalCharges), 2) AS avg_total_charges,
    ROUND(AVG(tenure), 2) AS avg_tenure_months
FROM telco_churn
GROUP BY
    Senior_Citizen_Status,
    Partner,
    Dependents
ORDER BY customer_count DESC;