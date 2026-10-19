CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    price INTEGER NOT NULL,
    in_stock BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT now()
);

CREATE ROLE app_user WITH LOGIN PASSWORD 'app_pass_1';
GRANT ALL PRIVILEGES ON products TO app_user;
GRANT USAGE, SELECT ON SEQUENCE products_id_seq TO app_user;

