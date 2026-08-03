-- ============================================================================
-- SECTION 0 — TABLE SETUP (20 tables)
-- ============================================================================
 
-- Q1 tables -------------------------------------------------------------
CREATE OR REPLACE TABLE branch_sandton_accounts (
  account_id STRING, account_holder STRING, city STRING
);
INSERT INTO branch_sandton_accounts VALUES
 ('A001','Nomvula Dlamini','Sandton'),
 ('A002','David Mokoena','Sandton'),
 ('A003','Lerato Sithole','Sandton'),
 ('A004','Peter Nkosi','Sandton');
 
CREATE OR REPLACE TABLE branch_rosebank_accounts (
  account_id STRING, account_holder STRING, city STRING
);
INSERT INTO branch_rosebank_accounts VALUES
 ('A003','Lerato Sithole','Rosebank'),
 ('A004','Peter Nkosi','Rosebank'),
 ('A005','Zanele Khumalo','Rosebank'),
 ('A006','Thabo Motha','Rosebank');
 
-- Q2 tables -------------------------------------------------------------
CREATE OR REPLACE TABLE savings_products (
  product_code STRING, product_name STRING, product_type STRING
);
INSERT INTO savings_products VALUES
 ('SV01','Basic Savings','Savings'),
 ('SV02','Premium Savings','Savings'),
 ('SV03','Youth Savings','Savings'),
 ('SV04','Business Savings','Savings');
 
CREATE OR REPLACE TABLE current_products (
  product_code STRING, product_name STRING, product_type STRING
);
INSERT INTO current_products VALUES
 ('CR01','Standard Current','Current'),
 ('CR02','Gold Current','Current'),
 ('SV03','Youth Savings','Savings'),
 ('CR03','Business Current','Current');
 
-- Q3 tables -------------------------------------------------------------
CREATE OR REPLACE TABLE retail_banking_staff (
  staff_id STRING, staff_name STRING, email STRING
);
INSERT INTO retail_banking_staff VALUES
 ('S001','Mpho Radebe','mpho.radebe@nexbank.co.za'),
 ('S002','Brian Tshabalala','brian.tshabalala@nexbank.co.za'),
 ('S003','Aisha Patel','aisha.patel@nexbank.co.za'),
 ('S004','Kabelo Moabelo','kabelo.moabelo@nexbank.co.za');
 
CREATE OR REPLACE TABLE corporate_banking_staff (
  staff_id STRING, staff_name STRING, email STRING
);
INSERT INTO corporate_banking_staff VALUES
 ('S003','Aisha Patel','aisha.patel@nexbank.co.za'),
 ('S005','Nandi Dube','nandi.dube@nexbank.co.za'),
 ('S006','Sipho Khumalo','sipho.khumalo@nexbank.co.za'),
 ('S004','Kabelo Moabelo','kabelo.moabelo@nexbank.co.za');
 
-- Q4 tables -------------------------------------------------------------
CREATE OR REPLACE TABLE mobile_branch_cities (
  city_code STRING, city_name STRING, region STRING
);
INSERT INTO mobile_branch_cities VALUES
 ('C01','Johannesburg','Gauteng'),
 ('C02','Pretoria','Gauteng'),
 ('C03','Cape Town','Western Cape'),
 ('C04','Durban','KwaZulu-Natal');
 
CREATE OR REPLACE TABLE digital_branch_cities (
  city_code STRING, city_name STRING, region STRING
);
INSERT INTO digital_branch_cities VALUES
 ('C03','Cape Town','Western Cape'),
 ('C05','Polokwane','Limpopo'),
 ('C06','Port Elizabeth','Eastern Cape'),
 ('C01','Johannesburg','Gauteng');
 
-- Q5 tables -------------------------------------------------------------
CREATE OR REPLACE TABLE push_notification_targets (
  customer_id STRING, customer_name STRING, segment STRING
);
INSERT INTO push_notification_targets VALUES
 ('C1001','Nomsa Zwane','Retail'),
 ('C1002','Andile Buthelezi','Retail'),
 ('C1003','Fatima Mahomed','Premium'),
 ('C1004','Ryno van Zyl','Retail');
 
CREATE OR REPLACE TABLE inapp_banner_targets (
  customer_id STRING, customer_name STRING, segment STRING
);
INSERT INTO inapp_banner_targets VALUES
 ('C1003','Fatima Mahomed','Premium'),
 ('C1005','Thandeka Cele','Retail'),
 ('C1006','Samuel Nkosi','Premium'),
 ('C1002','Andile Buthelezi','Retail');
 
-- Q6 tables -------------------------------------------------------------
CREATE OR REPLACE TABLE atm01_transactions (
  txn_id STRING, account_id STRING, amount DECIMAL(10,2), transaction_date DATE
);
INSERT INTO atm01_transactions VALUES
 ('T1001','A001',500.00, DATE'2025-01-05'),
 ('T1002','A002',1200.00,DATE'2025-01-06'),
 ('T1003','A001',300.00, DATE'2025-01-07'),
 ('T1004','A003',750.00, DATE'2025-01-08');
 
CREATE OR REPLACE TABLE atm02_transactions (
  txn_id STRING, account_id STRING, amount DECIMAL(10,2), transaction_date DATE
);
INSERT INTO atm02_transactions VALUES
 ('T1003','A001',300.00, DATE'2025-01-07'),
 ('T1005','A004',900.00, DATE'2025-01-09'),
 ('T1006','A002',450.00, DATE'2025-01-10'),
 ('T1007','A005',150.00, DATE'2025-01-11');
 
-- Q7 tables -------------------------------------------------------------
CREATE OR REPLACE TABLE gauteng_loan_applications (
  app_id STRING, customer_id STRING, loan_type STRING, amount_requested DECIMAL(12,2)
);
INSERT INTO gauteng_loan_applications VALUES
 ('LA001','C1001','Home Loan',850000.00),
 ('LA002','C1002','Vehicle Loan',220000.00),
 ('LA003','C1003','Personal',45000.00),
 ('LA004','C1004','Home Loan',1200000.00);
 
CREATE OR REPLACE TABLE western_cape_loan_applications (
  app_id STRING, customer_id STRING, loan_type STRING, amount_requested DECIMAL(12,2)
);
INSERT INTO western_cape_loan_applications VALUES
 ('LA003','C1003','Personal',45000.00),
 ('LA005','C1005','Vehicle Loan',310000.00),
 ('LA006','C1006','Business',900000.00),
 ('LA007','C1007','Home Loan',1500000.00);
 
-- Q8 tables -------------------------------------------------------------
CREATE OR REPLACE TABLE email_complaints (
  complaint_id STRING, customer_id STRING, category STRING, logged_date DATE
);
INSERT INTO email_complaints VALUES
 ('EC001','C2001','Card Issue', DATE'2025-02-01'),
 ('EC002','C2002','App Bug',    DATE'2025-02-02'),
 ('EC003','C2003','Delay',      DATE'2025-02-03'),
 ('EC004','C2004','Fees',       DATE'2025-02-04');
 
CREATE OR REPLACE TABLE app_complaints (
  complaint_id STRING, customer_id STRING, category STRING, logged_date DATE
);
INSERT INTO app_complaints VALUES
 ('AC001','C2005','App Bug', DATE'2025-02-05'),
 ('AC002','C2001','Card Issue', DATE'2025-02-06'),
 ('AC003','C2006','Fees', DATE'2025-02-07'),
 ('AC004','C2007','Delay', DATE'2025-02-08');
 
-- Q9 tables -------------------------------------------------------------
CREATE OR REPLACE TABLE april_payments (
  payment_id STRING, account_id STRING, amount DECIMAL(10,2), payment_date DATE
);
INSERT INTO april_payments VALUES
 ('PAY001','A001',12500.00, DATE'2025-04-05'),
 ('PAY002','A002',4800.00,  DATE'2025-04-10'),
 ('PAY003','A003',9200.00,  DATE'2025-04-15'),
 ('PAY004','A004',3300.00,  DATE'2025-04-20');
 
CREATE OR REPLACE TABLE may_payments (
  payment_id STRING, account_id STRING, amount DECIMAL(10,2), payment_date DATE
);
INSERT INTO may_payments VALUES
 ('PAY005','A001',12500.00, DATE'2025-05-05'),
 ('PAY006','A005',7600.00,  DATE'2025-05-10'),
 ('PAY007','A002',5100.00,  DATE'2025-05-15'),
 ('PAY008','A006',2800.00,  DATE'2025-05-20');
 
-- Q10 tables ------------------------------------------------------------
CREATE OR REPLACE TABLE debit_entries (
  entry_id STRING, account_id STRING, entry_type STRING, amount DECIMAL(10,2), entry_date DATE
);
INSERT INTO debit_entries VALUES
 ('DR001','A001','Debit',500.00, DATE'2025-06-01'),
 ('DR002','A002','Debit',1200.00,DATE'2025-06-02'),
 ('DR003','A003','Debit',750.00, DATE'2025-06-03'),
 ('DR004','A004','Debit',300.00, DATE'2025-06-04');
 
CREATE OR REPLACE TABLE credit_entries (
  entry_id STRING, account_id STRING, entry_type STRING, amount DECIMAL(10,2), entry_date DATE
);
INSERT INTO credit_entries VALUES
 ('CR001','A001','Credit',500.00, DATE'2025-06-01'),
 ('CR002','A005','Credit',900.00, DATE'2025-06-05'),
 ('CR003','A002','Credit',1200.00,DATE'2025-06-02'),
 ('CR004','A006','Credit',150.00, DATE'2025-06-06');
 
 
-- ============================================================================
-- SECTION 1 — QUESTIONS 01-05 (UNION)
-- ============================================================================
 
-- Q1: Unique account holders across both branches
SELECT account_id, account_holder, city FROM branch_sandton_accounts
UNION
SELECT account_id, account_holder, city FROM branch_rosebank_accounts
ORDER BY account_id;
 
-- Q2: Unique product catalogue
SELECT product_code, product_name, product_type FROM savings_products
UNION
SELECT product_code, product_name, product_type FROM current_products
ORDER BY product_code;
 
-- Q3: Unique staff across Retail + Corporate Banking
SELECT staff_id, staff_name, email FROM retail_banking_staff
UNION
SELECT staff_id, staff_name, email FROM corporate_banking_staff
ORDER BY staff_id;
 
-- Q4: Unique cities served (mobile + digital)
SELECT city_code, city_name, region FROM mobile_branch_cities
UNION
SELECT city_code, city_name, region FROM digital_branch_cities
ORDER BY city_code;
 
-- Q5: Unique customers targeted (push + in-app banner)
SELECT customer_id, customer_name, segment FROM push_notification_targets
UNION
SELECT customer_id, customer_name, segment FROM inapp_banner_targets
ORDER BY customer_id;
 
 
-- ============================================================================
-- SECTION 2 — QUESTIONS 06-10 (UNION ALL)
-- ============================================================================
 
-- Q6: Full ATM transaction log (duplicates kept, e.g. T1003)
SELECT txn_id AS transaction_id, account_id, amount, transaction_date FROM atm01_transactions
UNION ALL
SELECT txn_id AS transaction_id, account_id, amount, transaction_date FROM atm02_transactions
ORDER BY transaction_id;
 
-- Q7: Full loan application list (duplicates kept, e.g. LA003)
SELECT app_id AS application_id, customer_id, loan_type, amount_requested FROM gauteng_loan_applications
UNION ALL
SELECT app_id AS application_id, customer_id, loan_type, amount_requested FROM western_cape_loan_applications
ORDER BY application_id;
-- Expected result: 8 rows total, LA003 appears twice.
 
-- Q8: Full complaint log (email + app), no dedup
SELECT complaint_id, customer_id, category, logged_date FROM email_complaints
UNION ALL
SELECT complaint_id, customer_id, category, logged_date FROM app_complaints
ORDER BY complaint_id;
 
-- Q9: Reconciled April + May payments, every row counted
SELECT payment_id, account_id, amount, payment_date FROM april_payments
UNION ALL
SELECT payment_id, account_id, amount, payment_date FROM may_payments
ORDER BY payment_date, payment_id;
 
-- Q10: Combined general ledger (debits + credits), every entry kept
SELECT entry_id, account_id, entry_type, amount, entry_date FROM debit_entries
UNION ALL
SELECT entry_id, account_id, entry_type, amount, entry_date FROM credit_entries
ORDER BY entry_date, entry_id;
-- Expected result: 8 rows total (4 debit + 4 credit rows, nothing dropped).

        



