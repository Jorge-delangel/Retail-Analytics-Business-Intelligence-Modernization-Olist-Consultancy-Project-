-- Purpose: Build Dim_Geolocation table for analytics
-- Source: olist_staging.olist_geolocation

CREATE TABLE IF NOT EXISTS `gentle-exchange-480312-a1.Olist_dw.Dim_Geolocation`(
  geolocation_pk STRING NOT NULL
  OPTIONS (description = "Unique identifier for the geolocation dimension"),
  geolocation_zip_code_prefix STRING NOT NULL
  OPTIONS (description = "First 5 digits of zip code for geolocation"),
  geolocation_lat FLOAT64
  OPTIONS (description = "Latitude of the geolocation"), geolocation_lng FLOAT64
  OPTIONS (description = "Longitude of the geolocation"),
  geolocation_city STRING
  OPTIONS (description = "City of the geolocation"));