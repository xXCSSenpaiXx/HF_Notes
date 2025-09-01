-- psql command to connect to the database
\c wineshop_db;

-- Drop the table if it already exists
DROP TABLE IF EXISTS wines;


-- Create the table with appropriate columns
CREATE TABLE IF NOT EXISTS wines (
   brand TEXT,
   type TEXT,
   price NUMERIC(10, 2),
   number INTEGER,
   grape_variety TEXT,
   vintage INTEGER,
   region TEXT,
   alcohol_content NUMERIC(5, 2),
   bottle_size TEXT,
   rating NUMERIC(3, 2),
   country TEXT
);

-- psql command to import data from the CSV file into the table
\COPY wines FROM './Data/wineshop.csv' DELIMITER ',' CSV HEADER;
