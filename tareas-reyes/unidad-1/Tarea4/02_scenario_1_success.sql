-- Scenario 1: Successful transaction

-- Use database
USE `e-commerce`;

-- Reset test data
DELETE FROM payment WHERE id_payment = 101;
DELETE FROM purchase_detail WHERE id_purchase = 101;
DELETE FROM purchase WHERE id_purchase = 101;

UPDATE product SET stock = 10 WHERE id_product = 1;
UPDATE product SET stock = 5 WHERE id_product = 2;

-- Start transaction
START TRANSACTION;

-- Create purchase
INSERT INTO purchase (id_purchase)
VALUES (101);

-- Add products to purchase
INSERT INTO purchase_detail (
    id_purchase_detail,
    id_purchase,
    id_product,
    quantity
)
VALUES
(1001, 101, 1, 2),
(1002, 101, 2, 1);

-- Reduce product stock
UPDATE product
SET stock = stock - 2
WHERE id_product = 1;

UPDATE product
SET stock = stock - 1
WHERE id_product = 2;

-- Calculate purchase total
SET @purchase_total = (
    SELECT SUM(p.price * pd.quantity)
    FROM purchase_detail pd
    JOIN product p
        ON p.id_product = pd.id_product
    WHERE pd.id_purchase = 101
);

-- Create completed payment
INSERT INTO payment (
    id_payment,
    id_purchase,
    cost,
    status
)
VALUES (
    101,
    101,
    @purchase_total,
    'completed'
);

-- Save transaction
COMMIT;

-- Check result
SELECT * FROM purchase WHERE id_purchase = 101;
SELECT * FROM purchase_detail WHERE id_purchase = 101;
SELECT * FROM payment WHERE id_purchase = 101;
SELECT * FROM product WHERE id_product IN (1, 2);

-- Show calculated total
SELECT @purchase_total AS purchase_total;
