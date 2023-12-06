-- Create a table for 'Intentional self-harm'
SELECT *
INTO IntentionalSelfHarmTable
FROM [dbo].[ww_deaths_suicide_or_drugabuse]
WHERE Cause = 'Intentional self-harm';

-- Create a table for 'Disorders due psychoactive abuse'
SELECT *
INTO DisordersPsychoactiveAbuseTable
FROM [dbo].[ww_deaths_suicide_or_drugabuse]
WHERE Cause = 'Disorders due psychoactive abuse';
