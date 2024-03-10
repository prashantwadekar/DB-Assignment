CREATE TABLE product (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  desc TEXT,
  SKU VARCHAR(255) NOT NULL UNIQUE,
 category_id INT REFERENCES product_category(id),
 inventory_id INT REFERENCES product_inventory(id),
  price DECIMAL,
 discount_id INT REFERENCES discount(id),
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP,
);

CREATE TABLE product_inventory (
  id INT AUTO_INCREMENT PRIMARY KEY,
  quantity INT,
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP
);

CREATE TABLE discount (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  desc TEXT,
  discount_percent DECIMAL,
  active BOOLEAN,
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP
);

CREATE TABLE product_category (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  desc TEXT,
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP
);

