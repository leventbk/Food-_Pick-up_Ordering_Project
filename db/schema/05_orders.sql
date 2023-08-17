DROP TABLE IF EXISTS orders CASCADE;

-- Create table for orders

CREATE TABLE orders (
  id SERIAL PRIMARY KEY NOT NULL,
  customer_id INTEGER REFERENCES customers(id),
  business_id INTEGER REFERENCES businesses(id),
  date DATE,
  total NUMERIC (10, 2),
  status VARCHAR(255),
  tax NUMERIC (10, 2)
);