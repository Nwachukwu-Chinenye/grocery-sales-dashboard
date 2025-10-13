-- Grocery_data

CREATE DATABASE gro;
USE gro;
SELECT USER();

-- ===========================
--      KPI’s Requirements
-- ===========================

SELECT * FROM grocery_cleaned;

CREATE VIEW KPI AS
SELECT 
    ROUND(SUM(`Total Sales`), 2) AS `Total_sales`,
    ROUND(AVG(`Total Sales`), 2) AS `Total average sales`,
    COUNT(DISTINCT `Item Identifier`) AS `Number of items`,
    ROUND(AVG(`Rating`), 2) AS `Average of rating`
FROM grocery_cleaned;

SELECT * FROM KPI;


-- ================================================
-- 1. Total Sales by Fat Content (Granular Requirement)
-- ================================================

CREATE VIEW `Fat Content KPI` AS
SELECT 
    `Item Fat Content` AS `Fat Content`,
    ROUND(SUM(`Total Sales`), 2) AS `Total Sales`,
    ROUND(AVG(`Total Sales`), 2) AS `Average sales`,
    COUNT(DISTINCT `Item Identifier`) AS `Number of Items`,
    ROUND(AVG(`Rating`), 2) AS `Average rating`
FROM grocery_cleaned
GROUP BY `Fat Content`
ORDER BY `Total Sales` DESC;

SELECT * FROM `Fat Content KPI`;


-- ================================================
-- 2. Total Sales by Item Type
-- ================================================

CREATE VIEW `Item Type KPI` AS
SELECT 
    `Item Type`, 
    ROUND(SUM(`Total Sales`), 2) AS `Total sales`,
    ROUND(AVG(`Total Sales`), 2) AS `Average Sales`,
    COUNT(DISTINCT `Item Identifier`) AS `Number of Items`,
    ROUND(AVG(`Rating`), 2) AS `Average Rating`
FROM grocery_cleaned
GROUP BY `Item Type`
ORDER BY `Total Sales` DESC;

SELECT * FROM `Item Type KPI`;


-- ================================================
-- 3. Fat Content by Outlet for Total Sales
-- ================================================

CREATE VIEW `Outlet Identifier KPI` AS
SELECT 
    `Outlet Identifier`,
    `Item Fat Content`,
    ROUND(SUM(`Total Sales`), 2) AS `Total sales`,
    ROUND(AVG(`Total Sales`), 2) AS `Average Sales`,
    COUNT(DISTINCT `Item Identifier`) AS `Number of Items`,
    ROUND(AVG(`Rating`), 2) AS `Average Rating`
FROM grocery_cleaned
GROUP BY `Outlet Identifier`, `Item Fat Content`
ORDER BY `Outlet Identifier`, `Total sales` DESC;

SELECT * FROM `Outlet Identifier KPI`;


-- ================================================
-- 4. Total Sales by Outlet Establishment Year
-- ================================================

CREATE VIEW `Outlet Establishment Year KPI` AS
SELECT 
    `Outlet Establishment Year`, 
    ROUND(SUM(`Total Sales`), 2) AS `Total sales`,
    ROUND(AVG(`Total Sales`), 2) AS `Average Sales`,
    COUNT(DISTINCT `Item Identifier`) AS `Number of Item`,
    ROUND(AVG(`Rating`), 2) AS `Average Rating`
FROM grocery_cleaned
GROUP BY `Outlet Establishment Year`
ORDER BY `Outlet Establishment Year`;

SELECT * FROM `Outlet Establishment Year KPI`;


-- ================================================
-- 5. Total Sales by Outlet Type
-- ================================================

CREATE VIEW `Outlet Type KPI` AS
SELECT 
    `Outlet Type`,
    ROUND(SUM(`Total Sales`), 2) AS `Total sales`,
    ROUND(AVG(`Total Sales`), 2) AS `Average Sales`,
    COUNT(DISTINCT `Item Identifier`) AS `Number of Item`,
    ROUND(AVG(`Rating`), 2) AS `Average Rating`
FROM grocery_cleaned
GROUP BY `Outlet Type`
ORDER BY `Total sales` DESC;

SELECT * FROM `Outlet Type KPI`;


-- ================================================
-- 6. Total Sales by Outlet Location Type
-- ================================================

CREATE VIEW `Outlet Location Type KPI` AS
SELECT 
    `Outlet Location Type`,
    ROUND(SUM(`Total sales`), 2) AS `Total sales`
FROM grocery_cleaned 
GROUP BY `Outlet Location Type`
ORDER BY `Total sales` DESC;

SELECT * FROM `Outlet Location Type KPI`;
