--DROP created table from previous HW
--DROP TABLE customers;


--CREATE customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    full_name VARCHAR,
    email VARCHAR
    --FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id),

);


--CREATE salesperson
CREATE TABLE salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    salesperson_name VARCHAR

);

--CREATE service_ticket table
CREATE TABLE service_ticket (
    service_ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customer(customer_id),
    invoice_id INTEGER,
    mechanic_id INTEGER,
    service_id INTEGER,
    customer_car_id INTEGER,
    FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id),
    FOREIGN KEY (mechanic_id) REFERENCES invoice(mechanic_id),
    FOREIGN KEY (service_id) REFERENCES invoice(service_id),
    FOREIGN KEY (customer_car_id) REFERENCES invoice(customer_car_id)

);


--CREATE the car table
CREATE TABLE car (
    car_id SERIAL PRIMARY KEY,
    car_info VARCHAR,
    year INTEGER,
    make INTEGER,
    model INTEGER

);


--CREATE the INVOICE table
CREATE TABLE invoice (
    invoice_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customer(customer_id),
    salesperson_id INTEGER REFERENCES salesperson(salesperson_id),
    amount_paid VARCHAR,
    car_id INTEGER REFERENCES car(car_id)

);


--CREATE the MECHANIC table
CREATE TABLE mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    service_ticket_id INTEGER REFERENCES service_ticket(service_ticket_id),
    mechanic_name VARCHAR

);


--CREATE the customer_car table
CREATE TABLE customer_car (
    customer_car_id SERIAL PRIMARY KEY,
    car_vin VARCHAR,
    year INTEGER,
    make VARCHAR,
    MODEL VARCHAR

);













