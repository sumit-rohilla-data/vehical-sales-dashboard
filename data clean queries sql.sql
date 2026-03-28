CREATE TABLE vehicle_sales(
    year INT,
    make VARCHAR(50),
    model VARCHAR(50),
    trim VARCHAR(50),
    body VARCHAR(50),
    transmission VARCHAR(50),
    vin VARCHAR(50),
    state VARCHAR(10),
    condition INT,
    odometer INT,
    color VARCHAR(50),
    interior VARCHAR(50),
    seller VARCHAR(100),
    mmr NUMERIC,
    sellingprice NUMERIC,
    saledate DATE
);

-- Data Cleaning
SELECT 
    COALESCE(odometer, 0) AS odometer,
    COALESCE(color, 'NA') AS color
FROM vehicle_sales;

-- Top Models
SELECT model, SUM(sellingprice)
FROM vehicle_sales
GROUP BY model
ORDER BY SUM(sellingprice) DESC;