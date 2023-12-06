SELECT [Age_Range], 
    SUM(CASE WHEN [Sex] = 'Female' THEN [Deaths] ELSE 0 END) AS FemaleDeaths,
    SUM(CASE WHEN [Sex] = 'Male' THEN [Deaths] ELSE 0 END) AS MaleDeaths
FROM [dbo].[IntentionalSelfHarmTable]
WHERE [ISO_Code] = 'USA'
    AND [Cause] = 'Intentional self-harm'
    AND [Year] = 2018
GROUP BY [Age_Range]
ORDER BY [Age_Range];


SELECT [Age_Range], 
    SUM(CASE WHEN [Sex] = 'Female' THEN [Deaths] ELSE 0 END) AS FemaleDeaths,
    SUM(CASE WHEN [Sex] = 'Male' THEN [Deaths] ELSE 0 END) AS MaleDeaths
FROM [dbo].[IntentionalSelfHarmTable]
WHERE [ISO_Code] = 'USA'
    AND [Cause] = 'Intentional self-harm'
    AND [Year] = 2018
    AND [Age_Range] NOT IN ('0', '1', '2', '3', '4','All', 'Unknown')
GROUP BY [Age_Range]
ORDER BY [Age_Range];

