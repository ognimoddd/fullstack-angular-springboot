-- -----------------------------------------------------
-- Schema full-stack-ecommerce 
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Categories
-- -----------------------------------------------------
INSERT INTO product_category(category_name) VALUES ('Shirts');
INSERT INTO product_category(category_name) VALUES ('Hoodies');
INSERT INTO product_category(category_name) VALUES ('Hats');
INSERT INTO product_category(category_name) VALUES ('Beverages');
INSERT INTO product_category(category_name) VALUES ('About Us');

-- -----------------------------------------------------
-- T-Shirts
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SHIRT-NUMB-1000', 'Michael Emma Wing T-Shirt', 'The official Michael Emma t-shirt line is made with premium materials. Ribbed crew neck collar. Multiple colorways. 100% cotton. Machine wash cold, tumble dry low. Imported. Size & fit: Regular fit. Item pictured is size Large.', 'assets/images/products/shirts/shirt-domguzman-1000.png', 1, 100, 50, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SHIRT-NUMB-1001', 'Michael Emma Kanye T-Shirt', 'The official Michael Emma t-shirt line is made with premium materials. Ribbed crew neck collar. Multiple colorways. 100% cotton. Machine wash cold, tumble dry low. Imported. Size & fit: Regular fit. Item pictured is size Large.', 'assets/images/products/shirts/shirt-domguzman-1001.png', 1, 100, 50, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SHIRT-NUMB-1002', 'Michael Emma Banana T-Shirt', 'The official Michael Emma t-shirt line is made with premium materials. Ribbed crew neck collar. Multiple colorways. 100% cotton. Machine wash cold, tumble dry low. Imported. Size & fit: Regular fit. Item pictured is size Large.', 'assets/images/products/shirts/shirt-domguzman-1002.png', 1, 100, 50, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SHIRT-NUMB-1003', 'Michael Emma Ghost T-Shirt', 'The official Michael Emma t-shirt line is made with premium materials. Ribbed crew neck collar. Multiple colorways. 100% cotton. Machine wash cold, tumble dry low. Imported. Size & fit: Regular fit. Item pictured is size Large.', 'assets/images/products/shirts/shirt-domguzman-1003.png', 1, 100, 50, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SHIRT-NUMB-1004', 'Michael Emma Wing T-Shirt', 'The official Michael Emma t-shirt line is made with premium materials. Ribbed crew neck collar. Multiple colorways. 100% cotton. Machine wash cold, tumble dry low. Imported. Size & fit: Regular fit. Item pictured is size Large.', 'assets/images/products/shirts/shirt-domguzman-1004.png', 1, 100, 50, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SHIRT-NUMB-1005', 'Michael Emma Kanye T-Shirt', 'The official Michael Emma t-shirt line is made with premium materials. Ribbed crew neck collar. Multiple colorways. 100% cotton. Machine wash cold, tumble dry low. Imported. Size & fit: Regular fit. Item pictured is size Large.', 'assets/images/products/shirts/shirt-domguzman-1005.png', 1, 100, 50, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SHIRT-NUMB-1006', 'Michael Emma Banana T-Shirt', 'The official Michael Emma t-shirt line is made with premium materials. Ribbed crew neck collar. Multiple colorways. 100% cotton. Machine wash cold, tumble dry low. Imported. Size & fit: Regular fit. Item pictured is size Large.', 'assets/images/products/shirts/shirt-domguzman-1006.png', 1, 100, 50, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SHIRT-NUMB-1007', 'Michael Emma Ghost T-Shirt', 'The official Michael Emma t-shirt line is made with premium materials. Ribbed crew neck collar. Multiple colorways. 100% cotton. Machine wash cold, tumble dry low. Imported. Size & fit: Regular fit. Item pictured is size Large.', 'assets/images/products/shirts/shirt-domguzman-1007.png', 1, 100, 50, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SHIRT-NUMB-1008', 'Michael Emma Wing T-Shirt', 'The official Michael Emma t-shirt line is made with premium materials. Ribbed crew neck collar. Multiple colorways. 100% cotton. Machine wash cold, tumble dry low. Imported. Size & fit: Regular fit. Item pictured is size Large.', 'assets/images/products/shirts/shirt-domguzman-1008.png', 1, 100, 50, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SHIRT-NUMB-1009', 'Michael Emma Kanye T-Shirt', 'The official Michael Emma t-shirt line is made with premium materials. Ribbed crew neck collar. Multiple colorways. 100% cotton. Machine wash cold, tumble dry low. Imported. Size & fit: Regular fit. Item pictured is size Large.', 'assets/images/products/shirts/shirt-domguzman-1009.png', 1, 100, 50, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SHIRT-NUMB-1010', 'Michael Emma Banana T-Shirt', 'The official Michael Emma t-shirt line is made with premium materials. Ribbed crew neck collar. Multiple colorways. 100% cotton. Machine wash cold, tumble dry low. Imported. Size & fit: Regular fit. Item pictured is size Large.', 'assets/images/products/shirts/shirt-domguzman-1010.png', 1, 100, 50, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SHIRT-NUMB-1011', 'Michael Emma Ghost T-Shirt', 'The official Michael Emma t-shirt line is made with premium materials. Ribbed crew neck collar. Multiple colorways. 100% cotton. Machine wash cold, tumble dry low. Imported. Size & fit: Regular fit. Item pictured is size Large.', 'assets/images/products/shirt/shirt-domguzman-1011.png', 1, 100, 50, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SHIRT-NUMB-1012', 'Michael Emma Wing T-Shirt', 'The official Michael Emma t-shirt line is made with premium materials. Ribbed crew neck collar. Multiple colorways. 100% cotton. Machine wash cold, tumble dry low. Imported. Size & fit: Regular fit. Item pictured is size Large.', 'assets/images/products/shirts/shirt-domguzman-1012.png', 1, 100, 50, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SHIRT-NUMB-1013', 'Michael Emma Kanye T-Shirt', 'The official Michael Emma t-shirt line is made with premium materials. Ribbed crew neck collar. Multiple colorways. 100% cotton. Machine wash cold, tumble dry low. Imported. Size & fit: Regular fit. Item pictured is size Large.', 'assets/images/products/shirts/shirt-domguzman-1013.png', 1, 100, 50, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SHIRT-NUMB-1014', 'Michael Emma Banana T-Shirt', 'The official Michael Emma t-shirt line is made with premium materials. Ribbed crew neck collar. Multiple colorways. 100% cotton. Machine wash cold, tumble dry low. Imported. Size & fit: Regular fit. Item pictured is size Large.', 'assets/images/products/shirts/shirt-domguzman-1014.png', 1, 100, 50, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SHIRT-NUMB-1015', 'Michael Emma Ghost T-Shirt', 'The official Michael Emma t-shirt line is made with premium materials. Ribbed crew neck collar. Multiple colorways. 100% cotton. Machine wash cold, tumble dry low. Imported. Size & fit: Regular fit. Item pictured is size Large.', 'assets/images/products/shirts/shirt-domguzman-1015.png', 1, 100, 50, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SHIRT-NUMB-1016', 'Michael Emma Wing T-Shirt', 'The official Michael Emma t-shirt line is made with premium materials. Ribbed crew neck collar. Multiple colorways. 100% cotton. Machine wash cold, tumble dry low. Imported. Size & fit: Regular fit. Item pictured is size Large.', 'assets/images/products/shirts/shirt-domguzman-1016.png', 1, 100, 50, 1, NOW());

-- -----------------------------------------------------
-- Hoodies
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HOODIE-1000', 'Michael Emma Rose Hoodie', 'The Michael Emma hoodies are 100% cotton. This is a unisex item. The Michael Emma Store recommends that men buy their regular size, and women buy a size smaller.', 'assets/images/products/hoodies/hoodie-domguzman-1000.png', 1, 100, 119.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HOODIE-1001', 'Michael Emma Kanye Hoodie', 'The Michael Emma hoodies are 100% cotton. This is a unisex item. The Michael Emma Store recommends that men buy their regular size, and women buy a size smaller.', 'assets/images/products/hoodies/hoodie-domguzman-1001.png', 1, 100, 119.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HOODIE-1002', 'Michael Emma Wing Hoodie', 'The Michael Emma hoodies are 100% cotton. This is a unisex item. The Michael Emma Store recommends that men buy their regular size, and women buy a size smaller.', 'assets/images/products/hoodies/hoodie-domguzman-1002.png', 1, 100, 119.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HOODIE-1003', 'Michael Emma Rose Hoodie', 'The Michael Emma hoodies are 100% cotton. This is a unisex item. The Michael Emma Store recommends that men buy their regular size, and women buy a size smaller.', 'assets/images/products/hoodies/hoodie-domguzman-1003.png', 1, 100, 119.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HOODIE-1004', 'Michael Emma Kanye Hoodie', 'The Michael Emma hoodies are 100% cotton. This is a unisex item. The Michael Emma Store recommends that men buy their regular size, and women buy a size smaller.', 'assets/images/products/hoodies/hoodie-domguzman-1004.png', 1, 100, 119.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HOODIE-1005', 'Michael Emma Wing Hoodie', 'The Michael Emma hoodies are 100% cotton. This is a unisex item. The Michael Emma Store recommends that men buy their regular size, and women buy a size smaller.', 'assets/images/products/hoodies/hoodie-domguzman-1005.png', 1, 100, 119.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HOODIE-1006', 'Michael Emma Rose Hoodie', 'The Michael Emma hoodies are 100% cotton. This is a unisex item. The Michael Emma Store recommends that men buy their regular size, and women buy a size smaller.', 'assets/images/products/hoodies/hoodie-domguzman-1006.png', 1, 100, 119.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HOODIE-1007', 'Michael Emma Kanye Hoodie', 'The Michael Emma hoodies are 100% cotton. This is a unisex item. The Michael Emma Store recommends that men buy their regular size, and women buy a size smaller.', 'assets/images/products/hoodies/hoodie-domguzman-1007.png', 1, 100, 119.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HOODIE-1008', 'Michael Emma Wing Hoodie', 'The Michael Emma hoodies are 100% cotton. This is a unisex item. The Michael Emma Store recommends that men buy their regular size, and women buy a size smaller.', 'assets/images/products/hoodies/hoodie-domguzman-1008.png', 1, 100, 119.99, 2, NOW());

-- -----------------------------------------------------
-- Hats
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HAT-1000', 'Michael Emma Wing Hat', 'Show them who the top skater is with the official Michael Emma Hat. As one of our best sellers, this hat will be sure to turn some heads.', 'assets/images/products/hats/hat-domguzman-1000.png', 1, 100, 35.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HAT-1001', 'Michael Emma Rose Hat', 'Show them who the top skater is with the official Michael Emma Hat. As one of our best sellers, this hat will be sure to turn some heads.', 'assets/images/products/hats/hat-domguzman-1001.png', 1, 100, 35.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HAT-1002', 'Michael Emma Infinity Hat', 'Show them who the top skater is with the official Michael Emma Hat. As one of our best sellers, this hat will be sure to turn some heads.', 'assets/images/products/hats/hat-domguzman-1002.png', 1, 100, 35.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HAT-1003', 'Michael Emma Wing Hat', 'Show them who the top skater is with the official Michael Emma Hat. As one of our best sellers, this hat will be sure to turn some heads.', 'assets/images/products/hats/hat-domguzman-1003.png', 1, 100, 35.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HAT-1004', 'Michael Emma Rose Hat', 'Show them who the top skater is with the official Michael Emma Hat. As one of our best sellers, this hat will be sure to turn some heads.', 'assets/images/products/hats/hat-domguzman-1004.png', 1, 100, 35.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HAT-1005', 'Michael Emma Infinity Hat', 'Show them who the top skater is with the official Michael Emma Hat. As one of our best sellers, this hat will be sure to turn some heads.', 'assets/images/products/hats/hat-domguzman-1005.png', 1, 100, 35.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HAT-1006', 'Michael Emma Wing Hat', 'Show them who the top skater is with the official Michael Emma Hat. As one of our best sellers, this hat will be sure to turn some heads.', 'assets/images/products/hats/hat-domguzman-1006.png', 1, 100, 35.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HAT-1007', 'Michael Emma Rose Hat', 'Show them who the top skater is with the official Michael Emma Hat. As one of our best sellers, this hat will be sure to turn some heads.', 'assets/images/products/hats/hat-domguzman-1007.png', 1, 100, 35.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('HAT-1008', 'Michael Emma Infinity Hat', 'Show them who the top skater is with the official Michael Emma Hat. As one of our best sellers, this hat will be sure to turn some heads.', 'assets/images/products/hats/hat-domguzman-1008.png', 1, 100, 35.99, 3, NOW());

-- -----------------------------------------------------
-- Beverages
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BEVERAGE-1000', 'Michael''s Iced Tea - Mango', 'Michael’s Iced Tea is a refreshing beverage that combines the crispness of high-quality tea with a hint of natural sweetness. This is the perfect companion for enthusiasts frequenting local surf and skate shops.', 'assets/images/products/beverages/beverage-domguzman-1000.png', 1, 100, 2.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BEVERAGE-1001', 'Michael''s Iced Tea - Peach', 'Michael’s Iced Tea is a refreshing beverage that combines the crispness of high-quality tea with a hint of natural sweetness. This is the perfect companion for enthusiasts frequenting local surf and skate shops.', 'assets/images/products/beverages/beverage-domguzman-1001.png', 1, 100, 2.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BEVERAGE-1002', 'Michael''s Iced Tea - Lemon', 'Michael’s Iced Tea is a refreshing beverage that combines the crispness of high-quality tea with a hint of natural sweetness. This is the perfect companion for enthusiasts frequenting local surf and skate shops.', 'assets/images/products/beverages/beverage-domguzman-1002.png', 1, 100, 2.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BEVERAGE-1003', 'Michael''s Iced Tea - Raspberry', 'Michael’s Iced Tea is a refreshing beverage that combines the crispness of high-quality tea with a hint of natural sweetness. This is the perfect companion for enthusiasts frequenting local surf and skate shops.', 'assets/images/products/beverages/beverage-domguzman-1003.png', 1, 100, 2.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BEVERAGE-1004', 'Michael''s Iced Tea - Mystery', 'Michael’s Iced Tea is a refreshing beverage that combines the crispness of high-quality tea with a hint of natural sweetness. This is the perfect companion for enthusiasts frequenting local surf and skate shops.', 'assets/images/products/beverages/beverage-domguzman-1004.png', 1, 100, 2.99, 4, NOW());
