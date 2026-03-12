-- Purpose: Build Dim_Sellers table for analytics
-- Source: olist_staging.olist_sellers

CREATE OR REPLACE TABLE `gentle-exchange-480312-a1.Olist_dw.Dim_Sellers`(
  seller_pk STRING NOT NULL
  OPTIONS (description = "Unique identifier for the seller dimension"),
  seller_id STRING NOT NULL
  OPTIONS (description = "Original seller ID from staging"),
  seller_zip_code_prefix STRING
  OPTIONS (description = "First 5 digits of seller's zip code"),
  seller_city STRING
  OPTIONS (description = "Seller's city"), 
  seller_state INTEGER
  OPTIONS (description = "Seller's state"));