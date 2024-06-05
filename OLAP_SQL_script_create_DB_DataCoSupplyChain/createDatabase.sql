USE OLAP_Database_SupplyChain

DROP TABLE IF EXISTS dim_times;
CREATE TABLE dim_times (
    time_id INT PRIMARY KEY,
    day INT,
	month INT,
    year INT,
	hour INT,
	minute INT,
	date_of_week NVARCHAR(255)
);

DROP TABLE IF EXISTS dim_locations;
CREATE TABLE dim_locations (
    location_id INT PRIMARY KEY,
    market NVARCHAR(255),
    country NVARCHAR(255),
    region NVARCHAR(255),
    state NVARCHAR(255),
    city NVARCHAR(255),
);

DROP TABLE IF EXISTS dim_categories;
CREATE TABLE dim_categories (
    category_id INT PRIMARY KEY,
    category_name NVARCHAR(255),
);

DROP TABLE IF EXISTS dim_products;
CREATE TABLE dim_products (
    product_id INT PRIMARY KEY,
    category_id INT,
    product_name NVARCHAR(255),
    product_price DECIMAL(18, 2),
	FOREIGN KEY (category_id) REFERENCES dim_categories(category_id),
);

DROP TABLE IF EXISTS dim_customers;
CREATE TABLE dim_customers (
    customer_id INT PRIMARY KEY,
    customer_fname NVARCHAR(255),
    customer_lname NVARCHAR(255)
);

DROP TABLE IF EXISTS dim_types;
CREATE TABLE dim_types (
    type_id INT PRIMARY KEY,
    type NVARCHAR(255)
);

DROP TABLE IF EXISTS dim_order_statuses;
CREATE TABLE dim_order_statuses (
    order_status_id INT PRIMARY KEY,
    order_status NVARCHAR(255)
);

DROP TABLE IF EXISTS dim_shipping_modes;
CREATE TABLE dim_shipping_modes (
    shipping_mode_id INT PRIMARY KEY,
    shipping_mode NVARCHAR(255)
);

DROP TABLE IF EXISTS dim_delivery_statuses;
CREATE TABLE dim_delivery_statuses (
    delivery_status_id INT PRIMARY KEY,
    delivery_status NVARCHAR(255)
);

DROP TABLE IF EXISTS fact_order_items;
CREATE TABLE fact_order_items (	
    order_item_id INT PRIMARY KEY,
    location_id INT,
    time_id INT,
	product_id INT,
	customer_id INT,
    order_status_id INT,
    type_id INT,
    shipping_mode_id INT,
    delivery_status_id INT,
	real_day INT,
	scheduled_day INT,
	item_quantity INT,
	item_discount_rate NUMERIC(10,2), 
	item_profit_ratio NUMERIC(10,2),
	order_item_total  NUMERIC(10,2),
	benefit_per_order NUMERIC(10,2),

	FOREIGN KEY (location_id) REFERENCES dim_locations(location_id),
	FOREIGN KEY (time_id) REFERENCES dim_times(time_id),
	FOREIGN KEY (product_id) REFERENCES dim_products(product_id),
	FOREIGN KEY (customer_id) REFERENCES dim_customers(customer_id),
	FOREIGN KEY (order_status_id) REFERENCES dim_order_statuses(order_status_id),
	FOREIGN KEY (shipping_mode_id) REFERENCES dim_shipping_modes(shipping_mode_id),
	FOREIGN KEY (type_id) REFERENCES dim_types(type_id),
	FOREIGN KEY (delivery_status_id) REFERENCES dim_delivery_statuses(delivery_status_id)
);
