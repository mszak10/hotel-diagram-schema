-- DROP SCHEMA IF EXISTS hotels;
CREATE SCHEMA IF NOT EXISTS hotels;

-- DROP TABLE IF EXISTS hotels.rezerwacja
CREATE TABLE IF NOT EXISTS hotels.rezerwacja
(
  id         	SERIAL PRIMARY KEY,
  pracownik_id 	INT FOREIGN KEY NOT NULL,
  status_rezerwacji_id INT FOREIGN KEY NOT NULL,
  gosc_id		INT FOREIGN KEY NOT NULL,
  pokoj_id		INT FOREIGN KEY NOT NULL,
  data_od		TIMESTAMP NOT NULL,
  data_do		TIMESTAMP NOT NULL
);

-- DROP TABLE IF EXISTS hotels.gosc
CREATE TABLE IF NOT EXISTS hotels.gosc
(
  id        	SERIAL PRIMARY KEY,
  imie       	text(31)  NOT NULL,
  nazwisko      text(31)  NOT NULL,
  adres     	text(255)  NOT NULL,
  detale 		text(255)
);

-- DROP TABLE IF EXISTS hotels.status_rezerwacji
CREATE TABLE IF NOT EXISTS hotels.status_rezerwacji
(
  id        	SERIAL PRIMARY KEY,
  tytul   		text(15)NOT NULL,
  detale  		text(255)
);

-- DROP TABLE IF EXISTS hotels.pracownik_rezerwacje
CREATE TABLE IF NOT EXISTS hotels.pracownik_rezerwacje
(
  id            SERIAL PRIMARY KEY,
  pracownik_id	INT FOREIGN KEY NOT NULL,
  ilosc_gosci	INT NOT NULL,
  data_rezerwacji TIMESTAMP NOT NULL
);

-- DROP TABLE IF EXISTS hotels.pracownik
CREATE TABLE IF NOT EXISTS hotels.pracownik
(
  id        	SERIAL PRIMARY KEY,
  imie       	text(31)  NOT NULL,
  nazwisko      text(31)  NOT NULL,
  detale		text(255)
);

-- DROP TABLE IF EXISTS hotels.pokoj
CREATE TABLE IF NOT EXISTS hotels.pokoj
(
  id     	    SERIAL PRIMARY KEY,
  hotel_id		INT FOREIGN KEY NOT NULL,
  typ_pokoju_id	INT FOREIGN KEY NOT NULL,
  pokoj_pietro	text(15) NOT NULL,
  pokoj_numer	INT NOT NULL,
  palenie		bool NOT NULL
);

-- DROP TABLE IF EXISTS hotels.typ_pokoju
CREATE TABLE IF NOT EXISTS hotels.typ_pokoju
(
  id         	text(15) PRIMARY KEY,
  ile_osob		INT NOT NULL,
  standard_pokoju	text(31) NOT NULL,
  typ_pokoju	text(255) NOT NULL
);

-- DROP TABLE IF EXISTS hotels.hotel
CREATE TABLE IF NOT EXISTS hotels.hotel
(
  id         	SERIAL PRIMARY KEY,
  kraj_id       text(3) FOREIGN KEY NOT NULL,
  nazwa       	text(31) NOT NULL,
  email       	text(31),
  adres       	text(31) NOT NULL,
  URL       	text(31)
);

-- DROP TABLE IF EXISTS hotels.kraj
CREATE TABLE IF NOT EXISTS hotels.kraj
(
  id         	text(3) PRIMARY KEY,
  nazwa       	text(63) NOT NULL,
  waluta       	text(63)
);