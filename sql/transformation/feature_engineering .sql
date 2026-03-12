ALTER TABLE `gentle-exchange-480312-a1.Olist_staging.olist_orders`
ADD COLUMN lead_time_days INT64,
ADD COLUMN delay_time INT64,
ADD COLUMN delivery_status STRING;

UPDATE `gentle-exchange-480312-a1.Olist_staging.olist_orders`
SET
  lead_time_days = DATETIME_DIFF(
    order_delivered_customer_date, order_purchase_timestamp, DAY)
WHERE TRUE;

UPDATE `gentle-exchange-480312-a1.Olist_staging.olist_orders`
SET
  delay_time = DATETIME_DIFF(
    order_delivered_customer_date, order_estimated_delivery_date, DAY)
WHERE TRUE;

UPDATE `gentle-exchange-480312-a1.Olist_staging.olist_orders`
SET
  delivery_status = CASE
    WHEN order_delivered_customer_date IS NULL THEN 'Pending'
    ELSE 'Delivered'
    END
WHERE TRUE;
