-- psql -h aws-0-eu-central-2.pooler.supabase.com -U postgres.vceberzqpcutgbhcwvaq -p 6543 -d postgres -f ./create_shop_db.sql

-- chcp 65001

DROP DATABASE IF EXISTS wineshop WITH (FORCE);

CREATE DATABASE wineshop;

\c wineshop

DROP TABLE IF EXISTS wineshop, type, grape, region, country CASCADE;

CREATE TABLE IF NOT EXISTS wineshop (
    brand           VARCHAR(50),
    type            VARCHAR(20),
    price           REAL,
    number          INT,
    grape_variety   VARCHAR(50),
    vintage         INT,
    region          VARCHAR(20),
    alcohol_content REAL,
    bottle_size     VARCHAR(20),
    rating          REAL,
    country         VARCHAR(30)
);

\COPY wineshop FROM './wineshop.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS type (
		type_id	    SERIAL PRIMARY KEY,
        type        VARCHAR(20) UNIQUE
);

INSERT INTO type(type)
SELECT DISTINCT type FROM wineshop;

CREATE TABLE IF NOT EXISTS grape (
		grape_id	    SERIAL PRIMARY KEY,
        grape_variety   VARCHAR(20) UNIQUE
);

INSERT INTO grape(grape_variety)
SELECT DISTINCT grape_variety FROM wineshop;

CREATE TABLE IF NOT EXISTS region (
		region_id	 SERIAL PRIMARY KEY,
        region       VARCHAR(20) UNIQUE
);

INSERT INTO region(region)
SELECT DISTINCT region FROM wineshop;

CREATE TABLE IF NOT EXISTS country (
		country_id	 SERIAL PRIMARY KEY,
        country      VARCHAR(20) UNIQUE
);

INSERT INTO country(country)
SELECT DISTINCT country FROM wineshop;

ALTER TABLE wineshop ADD COLUMN wineshop_id SERIAL PRIMARY KEY;

ALTER TABLE wineshop ADD COLUMN fk_type_id INT REFERENCES type(type_id);

UPDATE wineshop w
SET fk_type_id = type_id
FROM type t WHERE t.type = w.type;

ALTER TABLE wineshop ADD COLUMN fk_grape_id INT REFERENCES grape(grape_id);

UPDATE wineshop w
SET fk_grape_id = grape_id
FROM grape g WHERE g.grape_variety = w.grape_variety;

ALTER TABLE wineshop ADD COLUMN fk_region_id INT REFERENCES region(region_id);

UPDATE wineshop w
SET fk_region_id = region_id
FROM region r WHERE r.region = w.region;

ALTER TABLE wineshop ADD COLUMN fk_country_id INT REFERENCES country(country_id);

UPDATE wineshop w
SET fk_country_id = country_id
FROM country c WHERE c.country = w.country;

ALTER TABLE wineshop DROP COLUMN grape_variety, DROP COLUMN region, DROP COLUMN country, DROP COLUMN type;

SELECT brand, type, price, number, g.grape_variety, vintage, r.region, country FROM wineshop w
JOIN type t ON t.type_id = w.fk_type_id
JOIN grape g ON g.grape_id = w.fk_grape_id
JOIN region r ON w.fk_region_id = r.region_id
JOIN country c ON w.fk_country_id = c.country_id
LIMIT 10;

CREATE VIEW brand AS SELECT brand, type, price, number, g.grape_variety, vintage, r.region, country FROM wineshop w
JOIN type t ON t.type_id = w.fk_type_id
JOIN grape g ON g.grape_id = w.fk_grape_id
JOIN region r ON w.fk_region_id = r.region_id
JOIN country c ON w.fk_country_id = c.country_id;

