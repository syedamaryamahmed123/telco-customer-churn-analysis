-- ============================================
-- TELCO CUSTOMER CHURN ANALYTICS
-- 01_DATABASE_SETUP.SQL
-- ============================================

-- Create database
CREATE DATABASE IF NOT EXISTS telco_churn_analytics;

-- Select database
USE telco_churn_analytics;


-- ============================================
-- CREATE MAIN TABLE
-- ============================================

CREATE TABLE telco_churn (
    customerID VARCHAR(20) PRIMARY KEY,
    gender VARCHAR(20),
    SeniorCitizen INT,
    Partner VARCHAR(10),
    Dependents VARCHAR(10),
    tenure INT,
    PhoneService VARCHAR(20),
    MultipleLines VARCHAR(30),
    InternetService VARCHAR(30),
    OnlineSecurity VARCHAR(30),
    OnlineBackup VARCHAR(30),
    DeviceProtection VARCHAR(30),
    TechSupport VARCHAR(30),
    StreamingTV VARCHAR(30),
    StreamingMovies VARCHAR(30),
    Contract VARCHAR(30),
    PaperlessBilling VARCHAR(10),
    PaymentMethod VARCHAR(50),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(12,2),
    Churn VARCHAR(10),
    Tenure_Group VARCHAR(30),
    Monthly_Charges_Group VARCHAR(30),
    Senior_Citizen_Status VARCHAR(30),
    Churn_Flag INT
);


-- ============================================
-- VERIFY DATABASE AND TABLE
-- ============================================

SHOW TABLES;

DESCRIBE telco_churn;


-- ============================================
-- VERIFY IMPORT
-- ============================================

SELECT COUNT(*) AS total_customers
FROM telco_churn;

SELECT COUNT(DISTINCT customerID) AS unique_customers
FROM telco_churn;