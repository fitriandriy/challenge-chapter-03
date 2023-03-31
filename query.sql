-- Components supplied by indofood
SELECT * FROM components
	JOIN component_supplier_detile
		ON component_supplier_detile.component_id = components.id
	JOIN suppliers
		ON suppliers.id = component_supplier_detile.supplier_id
WHERE suppliers.company_name = 'Indofood';

-- Join all table to see product's name, components in it, and the supplier of the components
SELECT products.name, components.name, suppliers.company_name as supplier FROM products
	JOIN component_product_detile
		ON products.id = component_product_detile.product_id
	JOIN components 
		ON components.id = component_product_detile.component_id
	JOIN component_supplier_detile
		ON component_supplier_detile.component_id = components.id
	JOIN suppliers
		ON suppliers.id = component_supplier_detile.supplier_id
ORDER BY products.id;
