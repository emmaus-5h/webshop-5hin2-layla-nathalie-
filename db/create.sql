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

--n1:1 realtei, toevoegen aan product tabel
CREATE TABLE eigenschappen (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  grootte VARCHAR(15),
  kleur VARCHAR(15),
  gewicht varchar(15),
  functie TEXT,
  products_id INTEGER
);

-- link naar plaatje wordt in index.html gemaakt op basis van id
  -- CREATE TABLE plaatjes (
  --id INTEGER PRIMARY KEY AUTOINCREMENT,
  --plaatje VARBINARY,
  -- products_id INTEGER
--);

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

-- ik mis nog een n:m relatie



--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('roze quarts' , 'Een roze quarts noem je ook wel Hyaline quarts. Deze steen behoord tot de minerale groep. De kleur is roze en heeft een transparante gloed. De steen staat voor liefde en bescherming.' , '0073010' , 12);
insert into products (name, description, code, price) values ('fluoriet ', 'Fluoriet zorgt voor een positievere gedachtegang. Het reinigd en stabiliseerd je geest. Het zorgt voor een betere concentratie. Het beschermd je van negatieve gedachten en negative invloeden.' , '007303' , 12);
insert into products (name, description, code, price) values ('Obsidaan ', 'Obsidaan is een donker kleurige steen, die een je een persoonlijke groei geeft. Het verleden wordt achter je gelaten en je leert naar de toekomst kijken. Waarheid en oorzaken komen naar boven. Je leert nieuwe dingen van je zelf ontdekken.' , '007306' , 12);
insert into products (name, description, code, price) values ('Petersiet', 'Petersiet is een donker kleurige steen die bruin of rood kan zijn. Petersiet helpt met negatieve gedragspatronen en helpt met oude conflicten. Petersiet is een steen waarmee je goed kunt manivesteren. Het helpt met positieve gebeurtenissen in de teokomst.' , '007309' , 12);
insert into products (name, description, code, price) values ('Ocean jaspis', 'de ocean jaspis is een groene kridtal die een motiverende werking geeft. dit kristal geeft je een hondert procent inzet.' , '007307' , 12);
insert into products (name, description, code, price) values ('Okeniet' , 'okeniet is een witte/gele bolvormige krisal. deze kristal zorgt ervoor dat ze waarheid omhoog komt en de steen beschermd je ook tegen de gevolgen.' , '007308' , 12);
insert into products (name, description, code, price) values ('Amethist' , 'Amethist is een paars kleurige edelsteen. deze steen heeft een  beschermende en zuivere werking.' , '007301' , 12);
insert into products (name, description, code, price) values ('Citrien' , 'citrien is een zonnige steen. deze steen heeft een werking van zelfvertrouwen en zelfrespect' , '007302' , 12);
insert into products (name, description, code, price) values ('Heliodoor' , 'heliodoor is een rood/ groen kleurige steen die een beschermend, aardend en balans brengt. je kan bij irritatie de steen gebruiken om tot rust te komen.je krijgt zelfbeheersing en controle over jezelf en de situatie' , '007304' , 12);
insert into products (name, description, code, price) values ('Hematiet' , 'hematiet is een speciale kristal die een metaalglans heeft. de werking van de steen is helend. het zorgt voor een betere doorbloeding en vorming van rode bloedcellen. het is goed te gebruiken tijdens menstruatie. het zorgt voor een betere imuunsysyteem,' , '007305' , 12);
insert into products (name, description, code, price) values ('Adamiet' , 'beschrijving' , '007311' , 12); 
insert into products (name, description, code, price) values ('Agaat ' , 'beschrijving' , '007312' , 12); 


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
insert into eigenschappen (grootte, kleur, gewicht, functie, products_id) values ('4 cm', 'kleur', 'gewicht', 'werking', 11);
insert into eigenschappen (grootte, kleur, gewicht, functie, products_id) values ('4 cm', 'kleur', 'gewicht', 'werking', 12);

insert into klant ( name, adres) values ('Henry Johnsen', 'paardenbloemstraat 144');
insert into klant ( name, adres) values ('Mary Bloempot', 'bloemstraat 18');
insert into klant ( name, adres) values ('Maxine Bei', 'grasstraat 56');

insert into bestelling (klant_id, totaalprijs) values ('1', '10,00');
insert into bestelling (klant_id, totaalprijs) values ('2', '18,50');
insert into bestelling (klant_id, totaalprijs) values ('3', '23,00');