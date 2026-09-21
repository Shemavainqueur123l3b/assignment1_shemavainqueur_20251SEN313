-- Sunrise Supermarket Sample Data
-- Student: Shema Vainqueur
-- Student ID: 20251SEN313

-- Customers
INSERT ALL INTO customers VALUES (1,'Jean Claude','[jean.claude@gmail.com](mailto:jean.claude@gmail.com)','Kigali') INTO customers VALUES (2,'Aline Mukamana','[aline.mukamana@gmail.com](mailto:aline.mukamana@gmail.com)','Musanze') INTO customers VALUES (3,'Eric Niyonzima','[eric.niyonzima@gmail.com](mailto:eric.niyonzima@gmail.com)','Huye') INTO customers VALUES (4,'Grace Uwase','[grace.uwase@gmail.com](mailto:grace.uwase@gmail.com)','Rubavu') INTO customers VALUES (5,'Patrick Habimana','[patrick.habimana@gmail.com](mailto:patrick.habimana@gmail.com)','Kigali') INTO customers VALUES (6,'Moses Bizimana','[moses.bizimana@gmail.com](mailto:moses.bizimana@gmail.com)','Kayonza') SELECT 1 FROM dual;

-- Products
INSERT ALL INTO products VALUES (1,'Rice 5kg','Food',6500) INTO products VALUES (2,'Sugar 1kg','Food',1500) INTO products VALUES (3,'Bread','Food',1200) INTO products VALUES (4,'Milk 1L','Beverages',1800) INTO products VALUES (5,'Mineral Water 1.5L','Beverages',1000) INTO products VALUES (6,'Laundry Detergent 1kg','Cleaning',3500) INTO products VALUES (7,'Dishwashing Liquid 500ml','Cleaning',2500) INTO products VALUES (8,'Shampoo 400ml','Personal Care',4500) SELECT 1 FROM dual;

-- Orders
INSERT ALL INTO orders VALUES (1,1,DATE '2026-09-01') INTO orders VALUES (2,2,DATE '2026-09-02') INTO orders VALUES (3,3,DATE '2026-09-03') INTO orders VALUES (4,4,DATE '2026-09-04') INTO orders VALUES (5,5,DATE '2026-09-05') INTO orders VALUES (6,1,DATE '2026-09-07') INTO orders VALUES (7,2,DATE '2026-09-08') INTO orders VALUES (8,3,DATE '2026-09-10') INTO orders VALUES (9,4,DATE '2026-09-11') INTO orders VALUES (10,5,DATE '2026-09-12') INTO orders VALUES (11,1,DATE '2026-09-15') INTO orders VALUES (12,2,DATE '2026-09-16') INTO orders VALUES (13,3,DATE '2026-09-18') INTO orders VALUES (14,4,DATE '2026-09-19') INTO orders VALUES (15,5,DATE '2026-09-20') SELECT 1 FROM dual;

-- Order Items
INSERT ALL INTO order_items VALUES (1,1,1,2) INTO order_items VALUES (2,1,2,1) INTO order_items VALUES (3,2,3,3) INTO order_items VALUES (4,2,4,2) INTO order_items VALUES (5,3,5,4) INTO order_items VALUES (6,3,6,1) INTO order_items VALUES (7,4,7,2) INTO order_items VALUES (8,4,8,1) INTO order_items VALUES (9,5,1,1) INTO order_items VALUES (10,5,4,3) INTO order_items VALUES (11,6,2,2) INTO order_items VALUES (12,6,6,1) INTO order_items VALUES (13,7,3,2) INTO order_items VALUES (14,7,5,3) INTO order_items VALUES (15,8,1,3) INTO order_items VALUES (16,8,8,1) INTO order_items VALUES (17,9,6,2) INTO order_items VALUES (18,9,7,2) INTO order_items VALUES (19,10,4,2) INTO order_items VALUES (20,10,2,4) INTO order_items VALUES (21,11,1,2) INTO order_items VALUES (22,11,3,2) INTO order_items VALUES (23,12,5,5) INTO order_items VALUES (24,12,6,1) INTO order_items VALUES (25,13,7,2) INTO order_items VALUES (26,13,8,2) INTO order_items VALUES (27,14,2,3) INTO order_items VALUES (28,14,4,2) INTO order_items VALUES (29,15,1,1) INTO order_items VALUES (30,15,6,2) SELECT 1 FROM dual;

COMMIT;
