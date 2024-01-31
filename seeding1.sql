INSERT INTO cars(id, "VIN", manufacturer, model, year, color)
VALUES (1,'3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
       (2,'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
       (3,'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
       (4,'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
       (5,'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
       (6,'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers(id, "name ", phonenumber, email, address, city)
VALUES (10001, 'Pablo Picasso', 34636, '-', 'Paseo de la Chopera 14', 'Madrid'),
		(20001, 'Abraham Lincoln', 13059, '-', '120 SW 8th St', 'Miami'),
		(30001, 'Napoléon Bonaparte', 33179,'-', '40 Rue du Colisée', 'Paris');	   
	
INSERT INTO salesperson(id, staffid, name, store)
VALUES (1, 00001, 'Petey', 'Cruiser, Madrid'),
		(2, 00002, 'Anna Sthesia', 'Barcelona'),
		(3, 00003, 'Paul Molive', 'Berlin'),
		(4, 00004, 'Gail Forcewind', 'Paris'),
		(5, 00005, 'Paige Turner', 'Mimia'),
		(6, 00006, 'Bob Frapples', 'Mexico City'),
		(7, 00007, 'Walter Melon', 'Amsterdam'),
		(8, 00008, 'Shonda Leer', 'São Paulo');	
		
INSERT INTO invoices(invoicenumber, date, customer, salesperson, cars)
VALUES (852399038, '2018-08-22', 10001, 1, 3),
		(731166526, '2018-12-31', 20001, 3, 5),
		(271135104, '2019-01-22', 30001, 2, 6);
		
	