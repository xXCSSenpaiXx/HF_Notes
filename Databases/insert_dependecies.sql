SELECT * FROM region WHERE region = 'Bordeaux'; 

INSERT INTO region(region) VALUES ('Bordeaux');

-- select the Database and witch rows are in the table
INSERT INTO wineshop (
brand, price, number, vintage, alcohol_content, bottle_size, rating,
fk_type_id, fk_grape_id, fk_region_id, fk_country_id
) 
-- select the IDs from the other tables to insert the foreign keys
VALUES (
'Imaginary Cellars Cabernet', 79.99, 24, 2019, 14.5, '750ml', 4.6,
(SELECT type_id FROM type WHERE type = 'Red'),
(SELECT grape_id FROM grape WHERE grape_variety = 'Cabernet Sauvignon'),
(SELECT region_id FROM region WHERE region = 'Napa Valley'),
(SELECT country_id FROM country WHERE country = 'USA')
);