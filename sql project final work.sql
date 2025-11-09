create database stockanalysis_db;

use stockanalysis_db;

CREATE TABLE stock_market (
    Date DATE,
    Open FLOAT,
    High FLOAT,
    Low FLOAT,
    Close FLOAT,
    Volume INT
);

select * from stock_market;

DESCRIBE stock_market;

SELECT COUNT(*) AS TotalRows FROM stock_market;

SELECT 
    MIN(Open) AS MinOpen, MAX(Open) AS MaxOpen, AVG(Open) AS AvgOpen,
    MIN(Close) AS MinClose, MAX(Close) AS MaxClose, AVG(Close) AS AvgClose,
    MIN(Volume) AS MinVolume, MAX(Volume) AS MaxVolume, AVG(Volume) AS AvgVolume
FROM stock_market;

SELECT Date, (High - Low) AS PriceRange FROM stock_market;

SELECT Date, Volume FROM stock_market WHERE Volume > 100000;

SELECT * FROM stock_market ORDER BY Date DESC LIMIT 5;

SELECT Date, Volume FROM stock_market WHERE Close = (SELECT MAX(Close) FROM stock_market);

show databases;

show tables;