SELECT 
    [Year],
    SUM(CASE WHEN [Year] = 2017 THEN [Deaths] END) * 1.0 / SUM(CASE WHEN [Year] = 2017 THEN [Age_and_Sex_Population] END) AS MortalityRate_2017,
    SUM(CASE WHEN [Year] = 2018 THEN [Deaths] END) * 1.0 / SUM(CASE WHEN [Year] = 2018 THEN [Age_and_Sex_Population] END) AS MortalityRate_2018,
    SUM(CASE WHEN [Year] = 2019 THEN [Deaths] END) * 1.0 / SUM(CASE WHEN [Year] = 2019 THEN [Age_and_Sex_Population] END) AS MortalityRate_2019,
    SUM(CASE WHEN [Year] = 2020 THEN [Deaths] END) * 1.0 / SUM(CASE WHEN [Year] = 2020 THEN [Age_and_Sex_Population] END) AS MortalityRate_2020
FROM [dbo].[ww_deaths_suicide_or_drugabuse]
WHERE [ISO_Code] = 'USA'
    AND [Sex] = 'All'
    AND [Cause] = 'Intentional self-harm'
    AND [Year] IN (2017, 2018, 2019, 2020)
GROUP BY [Year]
ORDER BY [Year];

SELECT [Year], 'Mortality Rate' AS Metric, 
    SUM(CASE WHEN [Year] = 2017 THEN [Deaths] END) * 1.0 / SUM(CASE WHEN [Year] = 2017 THEN [Age_and_Sex_Population] END) AS MortalityRate
FROM [dbo].[ww_deaths_suicide_or_drugabuse]
WHERE [ISO_Code] = 'USA'
    AND [Sex] = 'All'
    AND [Cause] = 'Intentional self-harm'
    AND [Year] IN (2017, 2018, 2019, 2020)
GROUP BY [Year]
UNION ALL
SELECT [Year], 'Mortality Rate' AS Metric, 
    SUM(CASE WHEN [Year] = 2018 THEN [Deaths] END) * 1.0 / SUM(CASE WHEN [Year] = 2018 THEN [Age_and_Sex_Population] END) AS MortalityRate
FROM [dbo].[ww_deaths_suicide_or_drugabuse]
WHERE [ISO_Code] = 'USA'
    AND [Sex] = 'All'
    AND [Cause] = 'Intentional self-harm'
    AND [Year] IN (2017, 2018, 2019, 2020)
GROUP BY [Year]
UNION ALL
SELECT [Year], 'Mortality Rate' AS Metric, 
    SUM(CASE WHEN [Year] = 2019 THEN [Deaths] END) * 1.0 / SUM(CASE WHEN [Year] = 2019 THEN [Age_and_Sex_Population] END) AS MortalityRate
FROM [dbo].[ww_deaths_suicide_or_drugabuse]
WHERE [ISO_Code] = 'USA'
    AND [Sex] = 'All'
    AND [Cause] = 'Intentional self-harm'
    AND [Year] IN (2017, 2018, 2019, 2020)
GROUP BY [Year]
UNION ALL
SELECT [Year], 'Mortality Rate' AS Metric, 
    SUM(CASE WHEN [Year] = 2020 THEN [Deaths] END) * 1.0 / SUM(CASE WHEN [Year] = 2020 THEN [Age_and_Sex_Population] END) AS MortalityRate
FROM [dbo].[ww_deaths_suicide_or_drugabuse]
WHERE [ISO_Code] = 'USA'
    AND [Sex] = 'All'
    AND [Cause] = 'Intentional self-harm'
    AND [Year] IN (2017, 2018, 2019, 2020)
GROUP BY [Year]
ORDER BY [Year];

SELECT [Year], 
    SUM(CASE WHEN [Year] = 2017 THEN [Deaths] END) * 1.0 / SUM(CASE WHEN [Year] = 2017 THEN [Age_and_Sex_Population] END) AS [USA MortalityRate Suicide]
FROM [dbo].[ww_deaths_suicide_or_drugabuse]
WHERE [ISO_Code] = 'USA'
    AND [Sex] = 'All'
    AND [Cause] = 'Intentional self-harm'
    AND [Year] IN (2017, 2018, 2019, 2020)
GROUP BY [Year]
UNION ALL
SELECT [Year], 
    SUM(CASE WHEN [Year] = 2018 THEN [Deaths] END) * 1.0 / SUM(CASE WHEN [Year] = 2018 THEN [Age_and_Sex_Population] END) AS MortalityRate
FROM [dbo].[ww_deaths_suicide_or_drugabuse]
WHERE [ISO_Code] = 'USA'
    AND [Sex] = 'All'
    AND [Cause] = 'Intentional self-harm'
    AND [Year] IN (2017, 2018, 2019, 2020)
GROUP BY [Year]
UNION ALL
SELECT [Year], 
    SUM(CASE WHEN [Year] = 2019 THEN [Deaths] END) * 1.0 / SUM(CASE WHEN [Year] = 2019 THEN [Age_and_Sex_Population] END) AS MortalityRate
FROM [dbo].[ww_deaths_suicide_or_drugabuse]
WHERE [ISO_Code] = 'USA'
    AND [Sex] = 'All'
    AND [Cause] = 'Intentional self-harm'
    AND [Year] IN (2017, 2018, 2019, 2020)
GROUP BY [Year]
UNION ALL
SELECT [Year], 
    SUM(CASE WHEN [Year] = 2020 THEN [Deaths] END) * 1.0 / SUM(CASE WHEN [Year] = 2020 THEN [Age_and_Sex_Population] END) AS MortalityRate
FROM [dbo].[ww_deaths_suicide_or_drugabuse]
WHERE [ISO_Code] = 'USA'
    AND [Sex] = 'All'
    AND [Cause] = 'Intentional self-harm'
    AND [Year] IN (2017, 2018, 2019, 2020)
GROUP BY [Year]
ORDER BY [Year];
[dbo].[IntentionalSelfHarmTable]



SELECT [Year], 
    SUM(CASE WHEN [Year] = 2017 THEN [Deaths] END) * 1.0 / SUM(CASE WHEN [Year] = 2017 THEN [Age_and_Sex_Population] END) AS MortalityRate
FROM [dbo].[IntentionalSelfHarmTable]
WHERE [ISO_Code] = 'USA'
    AND [Sex] = 'All'
    AND [Cause] = 'Intentional self-harm'
    AND [Year] IN (2017, 2018, 2019, 2020)
GROUP BY [Year]
UNION ALL
SELECT [Year], 
    SUM(CASE WHEN [Year] = 2018 THEN [Deaths] END) * 1.0 / SUM(CASE WHEN [Year] = 2018 THEN [Age_and_Sex_Population] END) AS MortalityRate
FROM [dbo].[IntentionalSelfHarmTable]
WHERE [ISO_Code] = 'USA'
    AND [Sex] = 'All'
    AND [Cause] = 'Intentional self-harm'
    AND [Year] IN (2017, 2018, 2019, 2020)
GROUP BY [Year]
UNION ALL
SELECT [Year], 
    SUM(CASE WHEN [Year] = 2019 THEN [Deaths] END) * 1.0 / SUM(CASE WHEN [Year] = 2019 THEN [Age_and_Sex_Population] END) AS MortalityRate
FROM [dbo].[IntentionalSelfHarmTable]
WHERE [ISO_Code] = 'USA'
    AND [Sex] = 'All'
    AND [Cause] = 'Intentional self-harm'
    AND [Year] IN (2017, 2018, 2019, 2020)
GROUP BY [Year]
UNION ALL
SELECT [Year], 
    SUM(CASE WHEN [Year] = 2020 THEN [Deaths] END) * 1.0 / SUM(CASE WHEN [Year] = 2020 THEN [Age_and_Sex_Population] END) AS MortalityRate
FROM [dbo].[IntentionalSelfHarmTable]
WHERE [ISO_Code] = 'USA'
    AND [Sex] = 'All'
    AND [Cause] = 'Intentional self-harm'
    AND [Year] IN (2017, 2018, 2019, 2020)
GROUP BY [Year]
ORDER BY [Year];



SELECT [Year], MortalityRate
FROM (
    SELECT [Year], 
        SUM(CASE WHEN [Year] = 2017 THEN [Deaths] END) * 1.0 / NULLIF(SUM(CASE WHEN [Year] = 2017 THEN [Age_and_Sex_Population] END), 0) AS MortalityRate
    FROM [dbo].[IntentionalSelfHarmTable]
    WHERE [ISO_Code] = 'USA'
        AND [Sex] = 'All'
        AND [Cause] = 'Intentional self-harm'
        AND [Year] IN (2017, 2018, 2019, 2020)
    GROUP BY [Year]
    UNION ALL
    SELECT [Year], 
        SUM(CASE WHEN [Year] = 2018 THEN [Deaths] END) * 1.0 / NULLIF(SUM(CASE WHEN [Year] = 2018 THEN [Age_and_Sex_Population] END), 0) AS MortalityRate
    FROM [dbo].[IntentionalSelfHarmTable]
    WHERE [ISO_Code] = 'USA'
        AND [Sex] = 'All'
        AND [Cause] = 'Intentional self-harm'
        AND [Year] IN (2017, 2018, 2019, 2020)
    GROUP BY [Year]
    UNION ALL
    SELECT [Year], 
        SUM(CASE WHEN [Year] = 2019 THEN [Deaths] END) * 1.0 / NULLIF(SUM(CASE WHEN [Year] = 2019 THEN [Age_and_Sex_Population] END), 0) AS MortalityRate
    FROM [dbo].[IntentionalSelfHarmTable]
    WHERE [ISO_Code] = 'USA'
        AND [Sex] = 'All'
        AND [Cause] = 'Intentional self-harm'
        AND [Year] IN (2017, 2018, 2019, 2020)
    GROUP BY [Year]
    UNION ALL
    SELECT [Year], 
        SUM(CASE WHEN [Year] = 2020 THEN [Deaths] END) * 1.0 / NULLIF(SUM(CASE WHEN [Year] = 2020 THEN [Age_and_Sex_Population] END), 0) AS MortalityRate
    FROM [dbo].[IntentionalSelfHarmTable]
    WHERE [ISO_Code] = 'USA'
        AND [Sex] = 'All'
        AND [Cause] = 'Intentional self-harm'
        AND [Year] IN (2017, 2018, 2019, 2020)
    GROUP BY [Year]
) AS MortalityData
WHERE MortalityRate IS NOT NULL
ORDER BY [Year];
