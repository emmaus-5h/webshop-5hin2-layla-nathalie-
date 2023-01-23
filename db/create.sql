--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);


CREATE TABLE eigenschappen (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  grootte VARCHAR(15),
  kleur VARCHAR(255),
  functie TEXT,
  products_id
);
--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('roze quarts steen , `de roze quarts is een troebele steen met een roze achtige kleur. de steen staat voor liefde en bescherming.' , '007301' , 12);
insert into products (name, description, code, price) values ('fluoriet , floriet is een edelsteen met een beschermende werking. met deze steen krijg je een betere zelfvertrouwen en brengt structuur in je leven.' '007302' , 12);
insert into products (name, description, code, price) values ('obsidaan , obsidaan is een donker kleurige steen. vaak is deze kleur zwart of paars. deze steen heeft een werking van persoonlijke groei. door deze steen komt de waarheid naar boven.' , '007303' , 12);
insert into products (name, description, code, price) values ();
insert into products (name, description, code, price) values ();
insert into products (name, description, code, price) values ();



insert into eigenschappen (grootte, kleur, functie) values ('3 cm, roze', 'liefde en bescherming', 1);