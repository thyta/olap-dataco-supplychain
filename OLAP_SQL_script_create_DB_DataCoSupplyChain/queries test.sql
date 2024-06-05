USE OLAP_Database_SupplyChain

-- Retrieve all rows from dim_times table
SELECT * FROM dim_times;

-- Retrieve all rows from dim_locations table
SELECT * FROM dim_locations;

-- Retrieve all rows from dim_categories table
SELECT * FROM dim_categories;

-- Retrieve all rows from dim_products table
SELECT * FROM dim_products;

-- Retrieve all rows from dim_customers table
SELECT * FROM dim_customers;

-- Retrieve all rows from dim_types table
SELECT * FROM dim_types;

-- Retrieve all rows from dim_order_statuses table
SELECT * FROM dim_order_statuses;

-- Retrieve all rows from dim_shipping_modes table
SELECT * FROM dim_shipping_modes;

-- Retrieve all rows from dim_delivery_statuses table
SELECT * FROM dim_delivery_statuses;

-- Retrieve all rows from fact_order_items table
SELECT * FROM fact_order_items;
