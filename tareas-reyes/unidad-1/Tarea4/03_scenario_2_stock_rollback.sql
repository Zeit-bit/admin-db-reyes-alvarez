-- Scenario 2: Stock violation

-- Use database
USE `e-commerce`;

-- Reset test data
DELETE FROM payment WHERE id_payment = 102;
DELETE FROM purchase_detail WHERE id_purchase = 102;
DELETE FROM purchase WHERE id_purchase = 102;

UPDATE product SET stock = 2 WHERE id_product = 3;

-- Start transaction
START TRANSACTION;

-- Create purchase
INSERT INTO purchase (id_purchase)
VALUES (102);

-- Add product to purchase
INSERT INTO purchase_detail (
    id_purchase_detail,
    id_purchase,
    id_product,
    quantity
)
VALUES (
    1003,
    102,
    3,
    5
);

-- Check purchase before error
SELECT * FROM purchase WHERE id_purchase = 102;
SELECT * FROM purchase_detail WHERE id_purchase = 102;

-- Try to reduce stock below zero
UPDATE product
SET stock = stock - 5
WHERE id_product = 3;

-- Rollback after the CHECK error
ROLLBACK;

-- Check rollback
SELECT * FROM purchase WHERE id_purchase = 102;
SELECT * FROM purchase_detail WHERE id_purchase = 102;
SELECT * FROM product WHERE id_product = 3;
