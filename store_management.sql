CREATE DATABASE store_management COLLATE 'utf8mb4_unicode_ci';

 CREATE TABLE governorates (
                           id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
                           name VARCHAR(255) NOT NULL,
                           address VARCHAR(255) NOT NULL,
                           PRIMARY KEY(id)
                           );

   CREATE TABLE stores (
                           id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
                           name VARCHAR(255) NOT NULL,
                           address VARCHAR(255) NOT NULL,
                           gover_id INTEGER UNSIGNED NOT NULL,
                           PRIMARY KEY(id),
                           FOREIGN KEY(gover_id) REFERENCES governorates(id) ON UPDATE CASCADE ON DELETE CASCADE
                           );

 CREATE TABLE suppliers  (
                           id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
                           name VARCHAR(255) NOT NULL,
                           phone VARCHAR(255) NOT NULL,
                           email VARCHAR(255) NOT NULL UNIQUE,
                           brif_data TEXT,
                           PRIMARY KEY(id)
                           );

  CREATE TABLE products  (
                           id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
                           name VARCHAR(255) NOT NULL,
                           code_no VARCHAR(255) NOT NULL,
                           description TEXT,
                           price float,
                           supp_id INTEGER UNSIGNED NOT NULL,
                           PRIMARY KEY(id),
                            FOREIGN KEY(supp_id) REFERENCES suppliers(id) ON UPDATE CASCADE ON DELETE CASCADE
                           );

 CREATE TABLE product_store_details  (
                           id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
                           store_id INTEGER UNSIGNED NOT NULL,
                           product_id INTEGER UNSIGNED NOT NULL,
                           PRIMARY KEY(id),
                           FOREIGN KEY(store_id) REFERENCES stores(id) ON UPDATE CASCADE ON DELETE CASCADE,
                           FOREIGN KEY(product_id) REFERENCES products(id) ON UPDATE CASCADE ON DELETE CASCADE

                           );