CREATE TABLE "components" (
  "id" BIGSERIAL,
  "name" VARCHAR(50) NOT NULL,
  "description" VARCHAR(200) NOT NULL,
  PRIMARY KEY ("id")
);

CREATE TABLE "products" (
  "id" BIGSERIAL,
  "name" VARCHAR(50) NOT NULL,
  "quantity" INT NOT NULL,
  PRIMARY KEY ("id")
);

CREATE TABLE "component_product_detile" (
  "product_id" INT,
  "component_id" INT,
  PRIMARY KEY ("product_id", "component_id"),
  CONSTRAINT "FK_component_product_detile.component_id"
    FOREIGN KEY ("component_id")
      REFERENCES "components"("id"),
  CONSTRAINT "FK_component_product_detile.product_id"
    FOREIGN KEY ("product_id")
      REFERENCES "products"("id")
);

CREATE TABLE "suppliers" (
  "id" BIGSERIAL,
  "company_name" VARCHAR(50) NOT NULL,
  "contact_name" VARCHAR(50) NOT NULL,
  "contact" CHAR(20) NOT NULL,
  "address" VARCHAR(100) NOT NULL,
  PRIMARY KEY ("id")
);

CREATE TABLE "component_supplier_detile" (
  "supplier_id" INT,
  "component_id" INT,
  PRIMARY KEY ("supplier_id", "component_id"),
  CONSTRAINT "FK_component_supplier_detile.component_id"
    FOREIGN KEY ("component_id")
      REFERENCES "components"("id"),
  CONSTRAINT "FK_component_supplier_detile.supplier_id"
    FOREIGN KEY ("supplier_id")
      REFERENCES "suppliers"("id")
);
