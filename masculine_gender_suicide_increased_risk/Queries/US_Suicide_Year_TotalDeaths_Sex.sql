USE[WSuicideAndDrug];

SELECT [Year], [Country], [Cause], SUM([Deaths]) AS TotalDeaths, SUM([Age_and_Sex_Population]) AS TotalPopulation
FROM [dbo].[ww_deaths_suicide_or_drugabuse]
GROUP BY [Year], [Country], [Cause]
ORDER BY [Country], [Year]
;

Select *
From [dbo].[ww_deaths_suicide_or_drugabuse]
;
--SELECT Country, Cause, Year, SUM([Deaths]) AS TotalDeaths
--FROM [dbo].[ww_deaths_suicide_or_drugabuse]
--WHERE Country = 'United States of America'
	--AND Cause = 'Intentional self-harm'
--GROUP BY Year;
SELECT Country, Cause, Year, SUM(Deaths) AS TotalDeaths
FROM ww_deaths_suicide_or_drugabuse
WHERE Country = 'United States of America'
    AND Cause = 'Intentional self-harm'
GROUP BY Country, Cause, Year;

SELECT Country, Cause, Year, SUM(Deaths) AS TotalDeaths, [Age_and_Sex_Population]
FROM ww_deaths_suicide_or_drugabuse
WHERE Country = 'United States of America'
    AND Cause = 'Intentional self-harm'
GROUP BY Country, Cause, Year, [Age_and_Sex_Population]
;
SELECT Country, Cause, Year, SUM(Deaths) AS TotalDeaths, [Sex]
FROM ww_deaths_suicide_or_drugabuse
WHERE Country = 'United States of America'
    AND Cause = 'Intentional self-harm'
GROUP BY Country, Cause, Year,[Sex];