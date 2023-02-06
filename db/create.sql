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
  kleur VARCHAR(15),
  gewicht varchar(15),
  functie TEXT,
  products_id INTEGER
);

CREATE TABLE plaatjes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  plaatje VARBINARY(MAX),
  products_id INTEGER
);

CREATE TABLE bestelling (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  klant_id INTEGER,
  totaalprijs numeric(10,2)
);

CREATE TABLE bestellingitems (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  bestelling_id INTEGER,
  products_id INTEGER,
  aantal INTEGER
);

CREATE TABLE klant (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(50),
  adres varchar(50)
);
--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('roze quarts' , 'de roze quarts is een troebele steen met een roze achtige kleur. de steen staat voor liefde en bescherming.' , '0073010' , 12);
insert into products (name, description, code, price) values ('fluoriet ', 'floriet is een edelsteen met een beschermende werking. met deze steen krijg je een betere zelfvertrouwen en brengt structuur in je leven.' , '007303' , 12);
insert into products (name, description, code, price) values ('obsidaan ', 'obsidaan is een donker kleurige steen. vaak is deze kleur zwart of paars. deze steen heeft een werking van persoonlijke groei. door deze steen komt de waarheid naar boven.' , '007306' , 12);
insert into products (name, description, code, price) values ('petersiet', 'petersiet is een donker kleurige steen die een manivesterende werking meebrengt.' , '007308' , 12);
insert into products (name, description, code, price) values ('ocean jaspis', 'de ocean jaspis is een groene kridtal die een motiverende werking geeft. dit kristal geeft je een hondert procent inzet.' , '007307' , 12);
insert into products (name, description, code, price) values ('okeniet' , 'okeniet is een witte/gele bolvormige krisal. deze kristal zorgt ervoor dat ze waarheid omhoog komt en de steen beschermd je ook tegen de gevolgen.' , '007309' , 12);
insert into products (name, description, code, price) values ('Amethist' , 'Amethist is een paars kleurige edelsteen. deze steen heeft een  beschermende en zuivere werking.' , '007301' , 12);
insert into products (name, description, code, price) values ('citrien' , 'citrien is een zonnige steen. deze steen heeft een werking van zelfvertrouwen en zelfrespect' , '007302' , 12);
insert into products (name, description, code, price) values('heliodoor' , 'heliodoor is een rood/ groen kleurige steen die een beschermend, aardend en balans brengt. je kan bij irritatie de steen gebruiken om tot rust te komen.je krijgt zelfbeheersing en controle over jezelf en de situatie' , '007305' , 12);
insert into products (name, description, code, price) values('hematiet' , 'hematiet is een speciale kristal die een metaalglans heeft. de werking van de steen is helend. het zorgt voor een betere doorbloeding en vorming van rode bloedcellen. het is goed te gebruiken tijdens menstruatie. het zorgt voor een betere imuunsysyteem,' , '007304' , 12);



insert into eigenschappen (grootte, kleur, gewicht, functie, products_id) values ('3 cm', 'roze', '20 gram', 'liefde en bescherming', 1);
insert into eigenschappen (grootte, kleur, gewicht, functie, products_id) values ('4 cm', 'groen/roze', '25 gram', 'bescherming en zelfvertrouwen', 2);
insert into eigenschappen (grootte, kleur, gewicht, functie, products_id) values ('3,5 cm', 'zwart/paars', '22.5 gram', 'persoonlijke groei', 3);
insert into eigenschappen (grootte, kleur, gewicht, functie, products_id) values ('6 cm', 'bruin/rood', '20 gram', 'manivesteren', 4);
insert into eigenschappen (grootte, kleur, gewicht, functie, products_id) values ('5 cm', 'groen', '21 gram', 'motiveren', 5);
insert into eigenschappen (grootte, kleur, gewicht, functie, products_id) values ('5.5 cm', 'wit/geel', '23 gram', 'waarheid en beschreming', 6);
insert into eigenschappen (grootte, kleur, gewicht, functie, products_id) values ('4.5 cm', 'paars', '24.5 gram', 'zuivering en bescherming', 7);
insert into eigenschappen (grootte, kleur, gewicht, functie, products_id) values ('3 cm', 'geel', '28 gram', 'zelfvertrouwen en zelfrespect', 8);
insert into eigenschappen (grootte, kleur, gewicht, functie, products_id) values ('3 cm', 'rood/groen', '20 gram', 'bescherming en balans', 9);
insert into eigenschappen (grootte, kleur, gewicht, functie, products_id) values ('4 cm', 'grijs', '22 gram', 'betere immuunsysteem', 10);