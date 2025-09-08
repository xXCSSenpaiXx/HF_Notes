SELECT * FROM wineshop

-- Create a procedure

CREATE OR REPLACE PROCEDURE add_wine_sp(
    region_name VARCHAR,
    wine_brand VARCHAR,
    wine_price REAL
)
LANGUAGE plpgsql
AS
$$
BEGIN
    -- Start transaction block
    BEGIN
            -- Insert region
        INSERT INTO region (region) VALUES (region_name)
            ON CONFLICT (region) DO NOTHING;

        -- Insert wine with foreign keys
        INSERT INTO wineshop (
            brand, price, number, vintage,
            fk_type_id, fk_region_id, fk_country_id, fk_grape_id
        )
        VALUES (
                   wine_brand,
                   80,
                   5,
                   1985,
                   (SELECT type_id FROM type WHERE type = 'Red Wine'),
                   (SELECT region_id FROM region WHERE region = region_name),
                   (SELECT country_id FROM country WHERE country = 'France'),
                   (SELECT grape_id FROM grape WHERE grape_variety = 'Cabernet Sauvignon')
               );

        -- Create a EXCEPTION block to catch errors
        EXCEPTION
                WHEN OTHERS THEN
                    -- Rollback happens automatically in procedures if an error is raised
                    RAISE NOTICE 'Error occurred: %', SQLERRM;
                    RAISE;
    END;
END;
$$;




-- Call the procedure
CALL add_wine_sp('Bordeaux', 'St. Test', 60.00);
