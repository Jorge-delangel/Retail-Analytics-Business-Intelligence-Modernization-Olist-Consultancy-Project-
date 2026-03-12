-- Purpose: Build Dim_Time table for analytics
-- Source: olist_staging.olist_time

CREATE OR REPLACE TABLE `gentle-exchange-480312-a1.Olist_dw.Dim_Time`(
  date_pk INT64 NOT NULL
  OPTIONS (description = "Date primary key"), full_date DATE
  OPTIONS (description = "Full date"), day_of_week STRING
  OPTIONS (description = "Day of the week (e.g., Monday)"), day_of_month INT64
  OPTIONS (description = "Day of the month (1-31)"), day_of_year INT64
  OPTIONS (description = "Day of the year (1-366)"), week_of_year INT64
  OPTIONS (description = "Week of the year (1-53)"), month INT64
  OPTIONS (description = "Month number (1-12)"), month_name STRING
  OPTIONS (description = "Month name (e.g., January)"), quarter INT64
  OPTIONS (description = "Quarter number (1-4)"), year INT64
  OPTIONS (description = "Year"), is_weekend BOOL
  OPTIONS (description = "True if the date is a weekend, False otherwise"));