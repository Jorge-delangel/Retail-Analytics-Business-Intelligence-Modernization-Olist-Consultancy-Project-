-- Purpose: Build Dim_Products table for analytics
-- Source: olist_staging.olist_products

CREATE TABLE IF NOT EXISTS `gentle-exchange-480312-a1.Olist_dw.Dim_Products`(
  product_pk STRING NOT NULL
  OPTIONS (description = "Unique identifier for the product dimension"),
  product_id STRING NOT NULL
  OPTIONS (description = "Original product ID from staging"),
  product_category_name STRING
  OPTIONS (description = "Product category name"), 
  product_name_lenght INT64
  OPTIONS (description = "Number of characters in product name"),
  product_description_lenght INT64
  OPTIONS (description = "Number of characters in product description"),
  product_photo_qty INT64
  OPTIONS (description = "Number of product photos"), 
  product_weight_g INT64
  OPTIONS (description = "Product weight in grams"), 
  product_lenght_cm INT64
  OPTIONS (description = "Product length in centimeters"),
  product_height_cm INT64
  OPTIONS (description = "Product height in centimeters"),
  product_width_cm INT64
  OPTIONS (description = "Product width in centimeters"));
