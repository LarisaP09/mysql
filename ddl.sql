CREATE TABLE `user`(
    `name_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `phone` VARCHAR(255) NOT NULL
);
CREATE TABLE `message`(
    `name_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `product_id` BIGINT NOT NULL,
    `user_message` VARCHAR(255) NOT NULL
);
CREATE TABLE `products`(
    `product_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `category` VARCHAR(255) NOT NULL,
    `product_name` VARCHAR(255) NOT NULL,
    `color` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `message` ADD CONSTRAINT `message_product_id_foreign` FOREIGN KEY(`product_id`) REFERENCES `products`(`product_id`);
ALTER TABLE
    `message` ADD CONSTRAINT `message_name_id_foreign` FOREIGN KEY(`name_id`) REFERENCES `user`(`name_id`);