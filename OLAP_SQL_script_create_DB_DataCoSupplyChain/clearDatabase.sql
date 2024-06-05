USE OLAP_Database_SupplyChain

-- Drop constraints from fact_order_items table
ALTER TABLE fact_order_items DROP CONSTRAINT IF EXISTS FK_fact_order_items_location_id;
ALTER TABLE fact_order_items DROP CONSTRAINT IF EXISTS FK_fact_order_items_time_id;
ALTER TABLE fact_order_items DROP CONSTRAINT IF EXISTS FK_fact_order_items_product_id;
ALTER TABLE fact_order_items DROP CONSTRAINT IF EXISTS FK_fact_order_items_customer_id;
ALTER TABLE fact_order_items DROP CONSTRAINT IF EXISTS FK_fact_order_items_order_status_id;
ALTER TABLE fact_order_items DROP CONSTRAINT IF EXISTS FK_fact_order_items_shipping_mode_id;
ALTER TABLE fact_order_items DROP CONSTRAINT IF EXISTS FK_fact_order_items_type_id;
ALTER TABLE fact_order_items DROP CONSTRAINT IF EXISTS FK_fact_order_items_delivery_status_id;

ALTER TABLE dim_products DROP CONSTRAINT IF EXISTS FK_dim_products_category_id;

-- Drop all tables
DROP TABLE IF EXISTS fact_order_items;
DROP TABLE IF EXISTS dim_delivery_statuses;
DROP TABLE IF EXISTS dim_shipping_modes;
DROP TABLE IF EXISTS dim_order_statuses;
DROP TABLE IF EXISTS dim_types;
DROP TABLE IF EXISTS dim_customers;
DROP TABLE IF EXISTS dim_products;
DROP TABLE IF EXISTS dim_categories;
DROP TABLE IF EXISTS dim_locations;
DROP TABLE IF EXISTS dim_times;