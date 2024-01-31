-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://github.com/pgadmin-org/pgadmin4/issues/new/choose if you find any bugs, including reproduction steps.
BEGIN;

SET SEARCH_PATH =lab1;

CREATE TABLE public.cars(
	id serial PRIMARY KEY,
    VIN varchar(17),
    manufacturer varchar(50),
    model varchar(50),
    year int,
    color varchar(50)
);


CREATE TABLE public.invoices(
	id serial PRIMARY KEY,
    invoicenumber int,
    date date,
    customer serial,
    salesperson serial,
    cars serial
);
    


CREATE TABLE public.salesperson(
    id serial PRIMARY KEY,
    staffid int,
    name varchar(50),
    store varchar(50)
);



CREATE TABLE public.customers(
	id serial PRIMARY KEY,
    name varchar(50),
    phonenumber int,
    email varchar(50),
    address varchar(50),
    city varchar(50),
	statepro varchar(50),
	country varchar (50),
	zipcode int
);





DROP TABLE IF EXISTS cars;

CREATE TABLE IF NOT EXISTS public.cars
(
    id serial, 
    "VIN" character varying(17),
    manufacturer character varying(50),
    model character varying(50),
    year smallint,
    color character varying(50),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE IF NOT EXISTS public.invoices
(
    id serial,
    invoicenumber integer,
    date date,
    customer serial,
    salesperson serial,
    cars serial,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS salesperson;

CREATE TABLE IF NOT EXISTS public.salesperson
(
    id serial,
    staffid integer,
    name character varying(50),
    store character varying(50),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE IF NOT EXISTS public.customers
(
    id serial,
    "name " character varying(50),
    phonenumber integer,
    email character varying(50),
    address character varying(50),
    city character varying(50),
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.invoices
    ADD CONSTRAINT carsconnection FOREIGN KEY (cars)
    REFERENCES public.cars (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.invoices
    ADD CONSTRAINT customersconnection FOREIGN KEY (customer)
    REFERENCES public.customers (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.invoices
    ADD CONSTRAINT salespersonconnection FOREIGN KEY (salesperson)
    REFERENCES public.salesperson (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;