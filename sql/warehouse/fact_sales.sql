-- Purpose: Build Fact_Sales table for analytics
-- Source: olist_staging.orders, customers, products, sellers, order_items, geolocation, payments.


CREATE OR REPLACE TABLE `gentle-exchange-480312-a1.Olist_dw.Fact_Sales`(
  order_item_pk STRING NOT NULL
  OPTIONS (description = "Unique identifier for each order item transaction"),
  order_id STRING NOT NULL
  OPTIONS (description = "Original order ID from staging"),
  customer_fk STRING NOT NULL
  OPTIONS (description = "Foreign key to Dim_Customers"),
  product_fk STRING NOT NULL
  OPTIONS (description = "Foreign key to Dim_Products"),
  seller_fk STRING NOT NULL
  OPTIONS (description = "Foreign key to Dim_Sellers"),
  order_purchase_date_fk DATE NOT NULL
  OPTIONS (description = "Foreign key to Dim_Time for order purchase date"),
  shipping_limit_date_fk DATE
  OPTIONS (description = "Foreign key to Dim_Time for shipping limit date"),
  order_approved_date_fk DATE
  OPTIONS (description = "Foreign key to Dim_Time for order approved date"),
  customer_geolocation_fk STRING
  OPTIONS (
    description = "Foreign key to Dim_Geolocation for customer zip code"),
  seller_geolocation_fk STRING
  OPTIONS (description = "Foreign key to Dim_Geolocation for seller zip code"),
  price FLOAT64
  OPTIONS (description = "Price of the item"), freight_value FLOAT64
  OPTIONS (description = "Freight value for the item"), payment_sequential INT64
  OPTIONS (description = "Payment sequence number for an order"),
  payment_type STRING
  OPTIONS (description = "Type of payment"), payment_installments INT64
  OPTIONS (description = "Number of payment installments"),
  payment_value FLOAT64
  OPTIONS (description = "Total payment value for the order"));
