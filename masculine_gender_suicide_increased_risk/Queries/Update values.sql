UPDATE [dbo].[ww_deaths_suicide_or_drugabuse]
SET Age_Range = REPLACE(Age_Range, '14-Oct', '14-15')
WHERE Age_Range = '14-Oct';

UPDATE [dbo].[ww_deaths_suicide_or_drugabuse]
SET Age_Range = REPLACE(Age_Range, '9-May', '5-9')
WHERE Age_Range = '9-May';

UPDATE [dbo].[ww_deaths_suicide_or_drugabuse]
SET Age_Range = REPLACE(Age_Range, '14-10', '10-14')
WHERE Age_Range = '14-10';