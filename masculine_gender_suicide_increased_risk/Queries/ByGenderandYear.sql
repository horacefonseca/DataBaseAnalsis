SELECT [Year], SUM(CASE WHEN [Sex] = 'Female' THEN [Deaths] ELSE 0 END) AS FemaleDeaths,
    SUM(CASE WHEN [Sex] = 'Male' THEN [Deaths] ELSE 0 END) AS MaleDeaths,
    SUM(CASE WHEN [Sex] = 'Female' THEN [Deaths] ELSE 0 END) - SUM(CASE WHEN [Sex] = 'Male' THEN [Deaths] ELSE 0 END) AS DeathDifference
FROM [dbo].[IntentionalSelfHarmTable]
WHERE [ISO_Code] = 'USA'
    AND [Cause] = 'Intentional self-harm'
    AND [Year] IN (2017, 2018, 2019, 2020)
GROUP BY [Year]
ORDER BY [Year];


SELECT [Year], SUM(CASE WHEN [Sex] = 'Female' THEN [Deaths] ELSE 0 END) AS FemaleDeaths,
    SUM(CASE WHEN [Sex] = 'Male' THEN [Deaths] ELSE 0 END) AS MaleDeaths
FROM [dbo].[IntentionalSelfHarmTable]
WHERE [ISO_Code] = 'USA'
    AND [Cause] = 'Intentional self-harm'
    AND [Year] IN (2017, 2018, 2019, 2020)
GROUP BY [Year]
ORDER BY [Year];
