CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(75),
    phone VARCHAR(25),
    cust_address VARCHAR(75)
);

CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(100),
    release_year INTEGER,
    rating VARCHAR(25)
);

-- Forgot to set movie_name to NOT NULL

ALTER TABLE movie
ALTER COLUMN movie_name SET NOT NULL;

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    price NUMERIC(8,2) NOT NULL,
    movie_id INTEGER,
    customer_id INTEGER,
    date_of_purchase DATE,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE concessions(
    concession_store_id SERIAL PRIMARY KEY,
    concession_type VARCHAR(50),
    concession_name VARCHAR(100) NOT NULL
);

CREATE TABLE concession_transaction(
    transaction_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    concession_store_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (concession_store_id) REFERENCES concessions(concession_store_id)
);

ALTER TABLE concession_transaction
ADD amount NUMERIC(8,2);

ALTER TABLE movie
DROP COLUMN release_year;

ALTER TABLE movie
ADD runtime TIME;
