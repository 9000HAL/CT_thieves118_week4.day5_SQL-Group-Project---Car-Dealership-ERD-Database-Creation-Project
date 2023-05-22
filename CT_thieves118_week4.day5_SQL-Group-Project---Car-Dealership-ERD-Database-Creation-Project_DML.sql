--Create SQL database
CREATE DATABASE GabeDealershipHW;



--INSERT into customers table
INSERT INTO customers (full_name, email)
VALUES ('Gabriel Santos', 'gsanchezscs@gmail.com'),
        ('Gabe Sanchez', 'gsslol@yahoo.com');


--INSERT into salesperson table
INSERT INTO salesperson (salesperson_name) --error here?
VALUES ('Rhianna Dicent'),
        ('Kevin Baker');


-- INSERT data into the service_ticket table --error here?
VALUES ('Rhianna Dicent'),
INSERT INTO service_ticket (customer_id, invoice_id, mechanic_id, service_id, customer_car_id)
VALUES (1, 1, 1, 1, 1),
        (2, 2, 2, 2, 2);


-- Insert data into the car table --error here?
VALUES ('Rhianna Dicent'),
INSERT INTO car (car_info, year, make, model)
VALUES ('123456', 2023, 'Tesla', 'Roadster'),
       ('ABCDEF', 2018, 'Tesla', 'Cybertruck');


-- Insert data into the invoice table
INSERT INTO invoice (customer_id, salesperson_id, amount_paid, car_id)
VALUES (5, 5, '10000', 5),
       (6, 6, '15000', 6);


-- Insert data into the mechanic table
INSERT INTO mechanic (service_ticket_id, mechanic_name)
VALUES (5, 'Rhianna Dicent'),
       (6, 'Kevin Baker');

    






