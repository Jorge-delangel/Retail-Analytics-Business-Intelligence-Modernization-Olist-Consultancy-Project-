-- Purpose: Build Dim_Customers table for analytics
-- Source: olist_staging.olist_customers

CREATE OR REPLACE TABLE `gentle-exchange-480312-a1.Olist_dw.Dim_Customers`(
  customer_pk STRING NOT NULL
  OPTIONS (description = "Unique identifier for the customer dimension"),
  customer_id STRING NOT NULL
  OPTIONS (description = "Original customer ID from staging"),
  customer_unique_id STRING
  OPTIONS (description = "Unique identifier for a customer across multiple purchases"),
  customer_zip_code_prefix STRING
  OPTIONS (description = "First 5 digits of customer's zip code"),
  customer_city STRING
  OPTIONS (description = "Customer's city"), customer_state STRING
  OPTIONS (description = "Customer's state"));