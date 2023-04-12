DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS carts;
DROP TABLE IF EXISTS items;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30),
)

CREATE TABLE carts (
    id SERIAL PRIMARY KEY,
    cart_contents VARCHAR(255) fk_items FOREIGN KEY(items_id),
    user_id INT, CONSTRAINT fk_users FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE
)

CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    title VARCHAR(50),
    price VARCHAR(50)
)