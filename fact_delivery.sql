-- Purpose: Build Fact_Delivery table for analytics
-- Source: olist_staging.orders, customers, order_items, geolocation.

CREATE TABLE IF NOT EXISTS `gentle-exchange-480312-a1.Olist_dw.Fact_Delivery`(
  order_pk STRING NOT NULL
  OPTIONS (description = "Unique identifier for each order delivery event"),
  order_id STRING NOT NULL
  OPTIONS (description = "Original order ID from staging"),
  customer_fk STRING NOT NULL
  OPTIONS (description = "Foreign key to Dim_Customers"),
  order_purchase_date_fk DATE NOT NULL
  OPTIONS (description = "Foreign key to Dim_Time for order purchase date"),
  order_delivered_carrier_date_fk DATE
  OPTIONS (description = "Foreign key to Dim_Time for carrier delivery date"),
  order_delivered_customer_date_fk DATE
  OPTIONS (description = "Foreign key to Dim_Time for customer delivery date"),
  order_estimated_delivery_date_fk DATE
  OPTIONS (description = "Foreign key to Dim_Time for estimated delivery date"),
  customer_geolocation_fk STRING
  OPTIONS (
    description = "Foreign key to Dim_Geolocation for customer zip code"),
  order_status STRING
  OPTIONS (description = "Current status of the order"), lead_time_days INT64
  OPTIONS (description = "Lead time in days (purchase to delivery)"),
  delay_time INT64
  OPTIONS (description = "Delay time in days (actual vs. estimated delivery)"),
  delivery_status STRING
  OPTIONS (
    description = "Categorized delivery status (e.g., 'On Time', 'Delayed')"));