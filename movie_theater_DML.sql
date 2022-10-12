INSERT INTO customer(
    first_name,
    last_name,
    email,
    phone,
    cust_address
)
VALUES (
    'Diante',
    'Dowdell',
    'DD@email.com',
    '(818) 265-4456',
    '1500 Hawthorne Ave'
),
(
    'Shay',
    'Cook',
    'SC@email.com',
    '(452) 325-4458',
    '143 Goon Street'
),
(
    'Nacho',
    'VanGuard',
    NULL,
    NULL,
    '1756 Furry Street'
),
(
    'Finnegan',
    'Stark',
    NULL,
    NULL,
    '2014 Forest Hills Drive'
);

INSERT INTO movie(
    movie_name,
    runtime,
    rating
)
VALUES (
    'Bulletrain',
    '02:06:00',
    'R'
),
(
    'My Neighbor Totoro',
    '01:26:00',
    'PG'
),
(
    'X',
    '01:45:00',
    'R'
),
(
    'Nope',
    '02:15:00',
    'R'
);

INSERT INTO ticket(
    price,
    movie_id,
    customer_id,
    date_of_purchase
)
VALUES (
    10.69,
    4,
    3,
    '2022-10-06'
),
(
    13.69,
    1,
    1,
    '2022-10-08'
),
(
    13.69,
    1,
    2,
    '2022-10-08'
),
(
    9.69,
    2,
    4,
    '2022-10-02'
);

INSERT INTO concessions(
    concession_type,
    concession_name
)
VALUES (
    'Food',
    'Patty''s Hot Dogs'
),
(
    'Alcoholic Beverages',
    'Buzzed Tiger Bar'
),
(
    'Food',
    'Pizzeria Lola'
),
(
    'Candy',
    'SweetTooth'
);

INSERT INTO concession_transaction(
    customer_id,
    concession_store_id,
    amount
)
VALUES (
    1,
    1,
    24.56
),
(
    2,
    4,
    35.66
),
(
    3,
    1,
    19.65
),
(
    4,
    3,
    26.45
),
(
    1,
    2,
    26.45
);