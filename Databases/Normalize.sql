\c wineshop_db;

-- 1. Second Normal Form
-- Add a primary key to the wines table
ALTER TABLE wines ADD COLUMN wines_id SERIAL PRIMARY KEY;


-- 2. Second Normal Form
-- Create a table for brands
CREATE TABLE IF NOT EXISTS brands (
    brand_id SERIAL PRIMARY KEY,
    brand_name TEXT UNIQUE
);

-- Populate the brands table with distinct brands from the wines table
INSERT INTO brands (brand_name)
SELECT DISTINCT brand FROM wines;

-- Forgein Key in wines table hinzufügen
ALTER TABLE wines ADD COLUMN fk_brand_id INT REFERENCES brands(brand_id);

-- Update the wines table to set the foreign key based on the brand name
UPDATE wines
SET fk_brand_id = (SELECT brand_id FROM brands WHERE brands.brand_name = wines.brand);

-- Remove the old brand column from the wines table
ALTER TABLE wines DROP COLUMN brand;

-- Test the changes
SELECT * FROM wines
JOIN brands ON wines.fk_brand_id = brands.brand_id;