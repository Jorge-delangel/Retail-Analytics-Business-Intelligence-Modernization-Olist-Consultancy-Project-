CREATE TABLE `Customers`(
    `customers_id` VARCHAR(30) NOT NULL,
    `customer_unique_id` VARCHAR(30) NULL,
    `customer_zip_code_prefix` INT NOT NULL,
    `customer_city` VARCHAR(30) NOT NULL,
    `customer_state` VARCHAR(20) NOT NULL,
    PRIMARY KEY(`customers_id`)
);
CREATE TABLE `Geolocation`(
    `geolocation_zip_code_prefix` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `geolocation_lat` DECIMAL(8, 2) NOT NULL,
    `geolocation_lng` DECIMAL(8, 2) NOT NULL,
    `geolocation_city` VARCHAR(30) NOT NULL
);
CREATE TABLE `Orders_items`(
    `order_item_id` VARCHAR(255) NOT NULL,
    `order_id` VARCHAR(255) NULL,
    `product_id` VARCHAR(255) NOT NULL,
    `seller_id` VARCHAR(255) NOT NULL,
    `shipping_limit_date` DATETIME NOT NULL,
    `price` DECIMAL(8, 2) NOT NULL,
    `freight_value` DECIMAL(8, 2) NOT NULL,
    PRIMARY KEY(`order_item_id`)
);
CREATE TABLE `Order_payments`(
    `order_id` VARCHAR(255) NOT NULL,
    `payment_sequential` INT NOT NULL,
    `payment_type` ENUM('') NOT NULL,
    `payment_installments` INT NOT NULL,
    `payment_value` DECIMAL(8, 2) NOT NULL,
    PRIMARY KEY(`order_id`)
);
CREATE TABLE `Orders`(
    `order_id` VARCHAR(255) NOT NULL,
    `customer_id` VARCHAR(255) NOT NULL,
    `order_status` ENUM('') NOT NULL,
    `order_purchase_timestamp` DATETIME NOT NULL,
    `order_approved_at` DATETIME NOT NULL,
    `order_delivered_carrier_date` DATETIME NOT NULL,
    `order_delivered_customer_date` DATETIME NOT NULL,
    `order_estimated_delivery_date` DATETIME NOT NULL,
    `lead_time_days` INT NOT NULL,
    `delivery_status` ENUM('') NOT NULL,
    `delay_time` INT NOT NULL,
    PRIMARY KEY(`order_id`)
);
CREATE TABLE `Products`(
    `product_id` VARCHAR(255) NOT NULL,
    `product_category_name` VARCHAR(255) NOT NULL,
    `product_name_lenght` INT NOT NULL,
    `product_description_lenght` INT NOT NULL,
    `product_photo_qty` INT NOT NULL,
    `product_weight_g` INT NOT NULL,
    `product_lenght_cm` INT NOT NULL,
    `product_height_cm` INT NOT NULL,
    `product_width_cm` INT NOT NULL,
    PRIMARY KEY(`product_id`)
);
CREATE TABLE `Sellers`(
    `seller_id` VARCHAR(255) NOT NULL,
    `seller_zip_code_prefix` INT NOT NULL,
    `seller_city` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`seller_id`)
);
ALTER TABLE
    `Orders_items` ADD CONSTRAINT `orders_items_product_id_foreign` FOREIGN KEY(`product_id`) REFERENCES `Products`(`product_id`);
ALTER TABLE
    `Customers` ADD CONSTRAINT `customers_customer_zip_code_prefix_foreign` FOREIGN KEY(`customer_zip_code_prefix`) REFERENCES `Geolocation`(`geolocation_zip_code_prefix`);
ALTER TABLE
    `Orders_items` ADD CONSTRAINT `orders_items_order_id_foreign` FOREIGN KEY(`order_id`) REFERENCES `Orders`(`order_id`);
ALTER TABLE
    `Orders` ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY(`customer_id`) REFERENCES `Customers`(`customers_id`);
ALTER TABLE
    `Sellers` ADD CONSTRAINT `sellers_seller_zip_code_prefix_foreign` FOREIGN KEY(`seller_zip_code_prefix`) REFERENCES `Geolocation`(`geolocation_zip_code_prefix`);
ALTER TABLE
    `Orders_items` ADD CONSTRAINT `orders_items_seller_id_foreign` FOREIGN KEY(`seller_id`) REFERENCES `Sellers`(`seller_id`);
ALTER TABLE
    `Orders` ADD CONSTRAINT `orders_order_id_foreign` FOREIGN KEY(`order_id`) REFERENCES `Order_payments`(`order_id`);