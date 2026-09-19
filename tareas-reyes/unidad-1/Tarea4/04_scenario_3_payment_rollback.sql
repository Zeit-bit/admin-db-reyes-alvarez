-- Scenario 3: Invalid Payment

-- Use database
USE `e-commerce`;

-- Reset test data
DELETE FROM payment WHERE id_payment = 103;
DELETE FROM purchase_detail WHERE id_purchase = 103;
DELETE FROM purchase WHERE id_purchase = 103;

UPDATE product SET stock = 8 WHERE id_product = 4;
UPDATE product SET stock = 5 WHERE id_product = 2;

-- Start transaction
START TRANSACTION;

-- Create purchase
INSERT INTO purchase (id_purchase)
VALUES (103);

-- Add products to purchase
INSERT INTO purchase_detail (
    id_purchase_detail,
    id_purchase,
    id_product,
    quantity
)
VALUES
(1004, 103, 4, 2),
(1005, 103, 2, 1);

-- Reduce product stock
UPDATE product
SET stock = stock - 2
WHERE id_product = 4;

UPDATE product
SET stock = stock - 1
WHERE id_product = 2;

-- Calculate correct purchase total
SET @purchase_total = (
    SELECT SUM(p.price * pd.quantity)
    FROM purchase_detail pd
    JOIN product p
        ON p.id_product = pd.id_product
    WHERE pd.id_purchase = 103
);

-- Check data before payment error
SELECT * FROM purchase WHERE id_purchase = 103;
SELECT * FROM purchase_detail WHERE id_purchase = 103;
SELECT * FROM product WHERE id_product IN (2, 4);
SELECT @purchase_total AS correct_purchase_total;

-- Try to create invalid payment
INSERT INTO payment (
    id_payment,
    id_purchase,
    cost,
    status
)
VALUES (
    103,
    103,
    0.00,
    'failed'
);

-- Rollback after the CHECK error
ROLLBACK;

-- Check rollback
SELECT * FROM purchase WHERE id_purchase = 103;
SELECT * FROM purchase_detail WHERE id_purchase = 103;
SELECT * FROM payment WHERE id_purchase = 103;
SELECT * FROM product WHERE id_product IN (2, 4);
