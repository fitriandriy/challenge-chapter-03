-- CREATE
INSERT INTO
	products (name, quantity)
VALUES
  ('Oreo', 10),
	('Waffer Tango', 20),
	('Pie Chocolate', 30),
	('Beng-beng', 20),
	('Malkis Coklat', 10),
  ('Samsung A04', 5);

INSERT INTO 
  suppliers (company_name, contact_name	, contact, address)																						
VALUES
	('Fantasy Group', 'Jin Do-Jun', '+8834567876777', 'Denmark USA'),
	('Indofood', 'Fitri', '+6285232128432', 'Banyuwangi'),
	('Cablepen', 'Jeno', '+6285432456765', 'Surabaya');

INSERT INTO
	components (name, description)
VALUES
	('Chocolate', 'Dark chocolate from Manado'),
	('Flour', 'High protein');

INSERT INTO
	component_product_detile (product_id, component_id)
VALUES
	(1, 1),
	(1, 2),
	(2, 1);

INSERT INTO
	component_supplier_detile (supplier_id, component_id)
VALUES
	(3, 1),
	(3, 2),
  (2, 1);


-- UPDATE
UPDATE products
SET name = 'Pie Susu'
WHERE id = 5;

-- DELETE
DELETE FROM products
WHERE id = 6;

-- READ
SELECT * FROM products;
SELECT * FROM component_product_detile;
SELECT * FROM components;
SELECT * FROM component_supplier_detile;
SELECT * FROM suppliers;
