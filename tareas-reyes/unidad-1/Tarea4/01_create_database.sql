-- Create database
DROP DATABASE IF EXISTS `e-commerce`;
CREATE DATABASE `e-commerce`;
USE `e-commerce`;

-- Create product table
CREATE TABLE product (
    id_product INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,

    CONSTRAINT pk_product PRIMARY KEY (id_product),
    CONSTRAINT chk_product_price CHECK (price > 0),
    CONSTRAINT chk_product_stock CHECK (stock >= 0)
);

-- Create purchase table
CREATE TABLE purchase (
    id_purchase INT NOT NULL,

    CONSTRAINT pk_purchase PRIMARY KEY (id_purchase)
);

-- Create purchase detail table
CREATE TABLE purchase_detail (
    id_purchase_detail INT NOT NULL,
    id_purchase INT NOT NULL,
    id_product INT NOT NULL,
    quantity INT NOT NULL,

    CONSTRAINT pk_purchase_detail PRIMARY KEY (id_purchase_detail),
    CONSTRAINT chk_purchase_detail_quantity CHECK (quantity > 0),

    CONSTRAINT fk_purchase_detail_purchase
        FOREIGN KEY (id_purchase)
        REFERENCES purchase(id_purchase),

    CONSTRAINT fk_purchase_detail_product
        FOREIGN KEY (id_product)
        REFERENCES product(id_product)
);

-- Create payment table
CREATE TABLE payment (
    id_payment INT NOT NULL,
    id_purchase INT NOT NULL,
    cost DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) NOT NULL,

    CONSTRAINT pk_payment PRIMARY KEY (id_payment),
    CONSTRAINT uq_payment_purchase UNIQUE (id_purchase),
    CONSTRAINT chk_payment_cost CHECK (cost > 0),
    CONSTRAINT chk_payment_status CHECK (status IN ('pending', 'completed', 'failed')),

    CONSTRAINT fk_payment_purchase
        FOREIGN KEY (id_purchase)
        REFERENCES purchase(id_purchase)
);

-- Insert test products
INSERT INTO product (id_product, name, price, stock) VALUES
(1, 'Mechanical Keyboard', 800.00, 10),
(2, 'Wireless Mouse', 400.00, 5),
(3, 'Monitor', 2500.00, 2),
(4, 'USB-C Hub', 650.00, 8);

-- Show initial products
SELECT * FROM product;
