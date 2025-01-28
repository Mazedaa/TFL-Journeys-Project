-- Select All -- 
SELECT * FROM tfl.table;

-- First 10 data --
SELECT * 
FROM tfl.table
LIMIT 10;

-- Total Journeys Per Mode of Transport --
SELECT 'Bus Journeys' AS Mode_of_Transport, SUM(Bus_Journeys) AS Total_Journeys
FROM tfl.table
UNION ALL
SELECT 'Underground Journeys', SUM(Underground_Journeys)
FROM tfl.table
UNION ALL
SELECT 'DLR Journeys', SUM(DLR_Journeys)
FROM tfl.table
UNION ALL
SELECT 'Tram Journeys', SUM(Tram_Journeys)
FROM tfl.table
UNION ALL
SELECT 'Overground Journeys', SUM(Overground_Journeys)
FROM tfl.table
UNION ALL
SELECT 'London Cable Car Journeys', SUM(London_Cable_Car_Journeys)
FROM tfl.table
UNION ALL
SELECT 'TfL Rail Journeys', SUM(TfL_Rail_Journeys)
FROM tfl.table;

-- Average Journeys Per Period --
SELECT
    AVG(Bus_Journeys) AS Avg_Bus_Journeys,
    AVG(Underground_Journeys) AS Avg_Underground_Journeys,
    AVG(DLR_Journeys) AS Avg_DLR_Journeys,
    AVG(Tram_Journeys) AS Avg_Tram_Journeys,
    AVG(Overground_Journeys) AS Avg_Overground_Journeys,
    AVG(London_Cable_Car_Journeys) AS Avg_Cable_Car_Journeys,
    AVG(TfL_Rail_Journeys) AS Avg_TfL_Rail_Journeys
FROM tfl.table;

-- Total Journeys by Financial Year --
SELECT
    Period_and_Financial_year AS Financial_year,
    SUM(Bus_Journeys) AS Total_Bus_Journeys,
    SUM(Underground_Journeys) AS Total_Underground_Journeys,
    SUM(DLR_Journeys) AS Total_DLR_Journeys,
    SUM(Tram_Journeys) AS Total_Tram_Journeys,
    SUM(Overground_Journeys) AS Total_Overground_Journeys,
    SUM(London_Cable_Car_Journeys) AS Total_Cable_Car_Journeys,
    SUM(TfL_Rail_Journeys) AS Total_TfL_Rail_Journeys
FROM tfl.table
GROUP BY Financial_year
ORDER BY Financial_year;

-- Total and Average Journeys by Financial Year -- 
SELECT
    Period_and_Financial_year AS Financial_year,
    SUM(Bus_Journeys) AS Total_Bus_Journeys,
    SUM(Underground_Journeys) AS Total_Underground_Journeys,
    SUM(DLR_Journeys) AS Total_DLR_Journeys,
    SUM(Tram_Journeys) AS Total_Tram_Journeys,
    SUM(Overground_Journeys) AS Total_Overground_Journeys,
    SUM(London_Cable_Car_Journeys) AS Total_Cable_Car_Journeys,
    SUM(TfL_Rail_Journeys) AS Total_TfL_Rail_Journeys,
    AVG(Bus_Journeys) AS Avg_Bus_Journeys,
    AVG(Underground_Journeys) AS Avg_Underground_Journeys,
    AVG(DLR_Journeys) AS Avg_DLR_Journeys,
    AVG(Tram_Journeys) AS Avg_Tram_Journeys,
    AVG(Overground_Journeys) AS Avg_Overground_Journeys,
    AVG(London_Cable_Car_Journeys) AS Avg_Cable_Car_Journeys,
    AVG(TfL_Rail_Journeys) AS Avg_TfL_Rail_Journeys
FROM tfl.table
GROUP BY Financial_year
ORDER BY Financial_year;

-- Period with the Most Journeys (for each mode) --
SELECT 
    'Bus Journeys (m)' AS Mode_of_Transport, 
    Reporting_Period, 
    Bus_Journeys AS Max_Journeys
FROM tfl.table
WHERE Bus_Journeys = (SELECT MAX(Bus_Journeys) FROM tfl.table)

UNION ALL

SELECT 
    'Underground Journeys (m)', 
    Reporting_Period, 
    Underground_Journeys AS Max_Journeys
FROM tfl.table
WHERE Underground_Journeys = (SELECT MAX(Underground_Journeys) FROM tfl.table)

UNION ALL

SELECT 
    'DLR Journeys (m)', 
    Reporting_Period, 
    DLR_Journeys AS Max_Journeys
FROM tfl.table
WHERE DLR_Journeys = (SELECT MAX(DLR_Journeys) FROM tfl.table)

UNION ALL

SELECT 
    'Tram Journeys (m)', 
    Reporting_Period, 
    Tram_Journeys AS Max_Journeys
FROM tfl.table
WHERE Tram_Journeys = (SELECT MAX(Tram_Journeys) FROM tfl.table)

UNION ALL

SELECT 
    'Overground Journeys (m)', 
    Reporting_Period, 
    Overground_Journeys AS Max_Journeys
FROM tfl.table
WHERE Overground_Journeys = (SELECT MAX(Overground_Journeys) FROM tfl.table)

UNION ALL

SELECT 
    'London Cable Car Journeys (m)', 
    Reporting_Period, 
    London_Cable_Car_Journeys AS Max_Journeys
FROM tfl.table
WHERE London_Cable_Car_Journeys = (SELECT MAX(London_Cable_Car_Journeys) FROM tfl.table)

UNION ALL

SELECT 
    'TfL Rail Journeys (m)', 
    Reporting_Period, 
    TfL_Rail_Journeys AS Max_Journeys
FROM tfl.table
WHERE TfL_Rail_Journeys = (SELECT MAX(TfL_Rail_Journeys) FROM tfl.table);

-- Percentage Share of Each Mode of Transport --
SELECT
    'Bus Journeys (m)' AS Mode_of_Transport, 
    SUM(Bus_Journeys) * 100.0 / (SUM(Bus_Journeys) + SUM(Underground_Journeys) + SUM(DLR_Journeys) + SUM(Tram_Journeys) + SUM(Overground_Journeys) + SUM(London_Cable_Car_Journeys) + SUM(TfL_Rail_Journeys)) AS Percentage
FROM tfl.table
UNION ALL
SELECT 'Underground Journeys (m)', 
    SUM(Underground_Journeys) * 100.0 / (SUM(Bus_Journeys) + SUM(Underground_Journeys) + SUM(DLR_Journeys) + SUM(Tram_Journeys) + SUM(Overground_Journeys) + SUM(London_Cable_Car_Journeys) + SUM(TfL_Rail_Journeys))
FROM tfl.table
UNION ALL
SELECT 'DLR Journeys (m)', 
    SUM(DLR_Journeys) * 100.0 / (SUM(Bus_Journeys) + SUM(Underground_Journeys) + SUM(DLR_Journeys) + SUM(Tram_Journeys) + SUM(Overground_Journeys) + SUM(London_Cable_Car_Journeys) + SUM(TfL_Rail_Journeys))
FROM tfl.table
UNION ALL
SELECT 'Tram Journeys (m)', 
    SUM(Tram_Journeys) * 100.0 / (SUM(Bus_Journeys) + SUM(Underground_Journeys) + SUM(DLR_Journeys) + SUM(Tram_Journeys) + SUM(Overground_Journeys) + SUM(London_Cable_Car_Journeys) + SUM(TfL_Rail_Journeys))
FROM tfl.table
UNION ALL
SELECT 'Overground Journeys (m)', 
    SUM(Overground_Journeys) * 100.0 / (SUM(Bus_Journeys) + SUM(Underground_Journeys) + SUM(DLR_Journeys) + SUM(Tram_Journeys) + SUM(Overground_Journeys) + SUM(London_Cable_Car_Journeys) + SUM(TfL_Rail_Journeys))
FROM tfl.table
UNION ALL
SELECT 'London Cable Car Journeys (m)', 
    SUM(London_Cable_Car_Journeys) * 100.0 / (SUM(Bus_Journeys) + SUM(Underground_Journeys) + SUM(DLR_Journeys) + SUM(Tram_Journeys) + SUM(Overground_Journeys) + SUM(London_Cable_Car_Journeys) + SUM(TfL_Rail_Journeys))
FROM tfl.table
UNION ALL
SELECT 'TfL Rail Journeys (m)', 
    SUM(TfL_Rail_Journeys) * 100.0 / (SUM(Bus_Journeys) + SUM(Underground_Journeys) + SUM(DLR_Journeys) + SUM(Tram_Journeys) + SUM(Overground_Journeys) + SUM(London_Cable_Car_Journeys) + SUM(TfL_Rail_Journeys))
FROM tfl.table;

-- Monthly Trend of Total Journeys --
SELECT
    Reporting_Period,
    SUM(Bus_Journeys + Underground_Journeys + DLR_Journeys + Tram_Journeys + Overground_Journeys + London_Cable_Car_Journeys + TfL_Rail_Journeys) AS Total_Journeys
FROM tfl.table
GROUP BY Reporting_Period
ORDER BY Reporting_Period;

-- Yearly Trends for a Specific Mode of Transport - Bus --
SELECT 
    Period_and_Financial_year AS Financial_year,
    SUM(Bus_Journeys) AS Total_Bus_Journeys
FROM tfl.table
GROUP BY Financial_year
ORDER BY Financial_year;

-- Comparative Growth Trends for All Modes of Transport
SELECT 
    Period_and_Financial_year AS Financial_year,
    SUM(Bus_Journeys) AS Total_Bus_Journeys,
    SUM(Underground_Journeys) AS Total_Underground_Journeys,
    SUM(DLR_Journeys) AS Total_DLR_Journeys,
    SUM(Tram_Journeys) AS Total_Tram_Journeys,
    SUM(Overground_Journeys) AS Total_Overground_Journeys,
    SUM(London_Cable_Car_Journeys) AS Total_Cable_Car_Journeys,
    SUM(TfL_Rail_Journeys) AS Total_TfL_Rail_Journeys
FROM tfl.table
GROUP BY Financial_year
ORDER BY Financial_year;

-- Peak and Low Periods for Total Journeys --
SELECT 
    Reporting_Period, 
    SUM(Bus_Journeys + Underground_Journeys + DLR_Journeys + Tram_Journeys + Overground_Journeys + London_Cable_Car_Journeys + TfL_Rail_Journeys) AS Total_Journeys
FROM tfl.table
GROUP BY Reporting_Period
ORDER BY Total_Journeys DESC;

-- Month-over-Month Growth Rate --
SELECT 
    Reporting_Period,
    SUM(Bus_Journeys + Underground_Journeys + DLR_Journeys + Tram_Journeys + Overground_Journeys + London_Cable_Car_Journeys + TfL_Rail_Journeys) AS Total_Journeys,
    LAG(SUM(Bus_Journeys + Underground_Journeys + DLR_Journeys + Tram_Journeys + Overground_Journeys + London_Cable_Car_Journeys + TfL_Rail_Journeys)) 
        OVER (ORDER BY Reporting_Period) AS Previous_Journeys,
    (SUM(Bus_Journeys + Underground_Journeys + DLR_Journeys + Tram_Journeys + Overground_Journeys + London_Cable_Car_Journeys + TfL_Rail_Journeys) - 
     LAG(SUM(Bus_Journeys + Underground_Journeys + DLR_Journeys + Tram_Journeys + Overground_Journeys + London_Cable_Car_Journeys + TfL_Rail_Journeys)) 
        OVER (ORDER BY Reporting_Period)) / 
    LAG(SUM(Bus_Journeys + Underground_Journeys + DLR_Journeys + Tram_Journeys + Overground_Journeys + London_Cable_Car_Journeys + TfL_Rail_Journeys)) 
        OVER (ORDER BY Reporting_Period) * 100 AS Growth_Percentage
FROM  tfl.table
GROUP BY Reporting_Period
ORDER BY Reporting_Period;

-- Transport Mode Breakdown by Percentage (for a Specific Financial Year) --
WITH Total_Journeys AS (
    SELECT 
        SUM(Bus_Journeys + Underground_Journeys + DLR_Journeys + Tram_Journeys + Overground_Journeys + London_Cable_Car_Journeys + TfL_Rail_Journeys) AS Total
    FROM tfl.table
    WHERE Period_and_Financial_year LIKE '%_23/24'
)
SELECT 
    'Bus Journeys' AS Mode_of_Transport, 
    SUM(Bus_Journeys) * 100.0 / (SELECT Total FROM Total_Journeys) AS Percentage_Contribution
FROM tfl.table
WHERE Period_and_Financial_year LIKE '%_23/24'
UNION ALL
SELECT 
    'Underground Journeys', 
    SUM(Underground_Journeys) * 100.0 / (SELECT Total FROM Total_Journeys)
FROM tfl.table
WHERE Period_and_Financial_year LIKE '%_23/24'
UNION ALL
SELECT 
    'DLR Journeys', 
    SUM(DLR_Journeys) * 100.0 / (SELECT Total FROM Total_Journeys)
FROM tfl.table
WHERE Period_and_Financial_year LIKE '%_23/24'
UNION ALL
SELECT 
    'Tram Journeys', 
    SUM(Tram_Journeys) * 100.0 / (SELECT Total FROM Total_Journeys)
FROM tfl.table
WHERE Period_and_Financial_year LIKE '%_23/24'
UNION ALL
SELECT 
    'Overground Journeys', 
    SUM(Overground_Journeys) * 100.0 / (SELECT Total FROM Total_Journeys)
FROM tfl.table
WHERE Period_and_Financial_year LIKE '%_23/24'
UNION ALL
SELECT 
    'London Cable Car Journeys', 
    SUM(London_Cable_Car_Journeys) * 100.0 / (SELECT Total FROM Total_Journeys)
FROM tfl.table
WHERE Period_and_Financial_year LIKE '%_23/24'
UNION ALL
SELECT 
    'TfL Rail Journeys', 
    SUM(TfL_Rail_Journeys) * 100.0 / (SELECT Total FROM Total_Journeys)
FROM tfl.table
WHERE Period_and_Financial_year LIKE '%_23/24';


