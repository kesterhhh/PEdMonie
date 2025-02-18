-- PEDMONIE Database Selected
USE PEDMONIE;

-- 1. Data Cleaning (Essential)
-- Trim whitespace
UPDATE CompetitorAnalysis
SET Company_Name = TRIM(Company_Name);

UPDATE TargetAudience
SET Company_Name = TRIM(Company_Name);

-- Standardize text case (Optional)
UPDATE CompetitorAnalysis
SET Company_Name = UPPER(Company_Name);

UPDATE TargetAudience
SET Company_Name = UPPER(Company_Name);

GO

-- 2. Competitor Analysis Queries
-- Total Competitors
SELECT COUNT(*) AS TotalCompetitors FROM CompetitorAnalysis;

-- Unique Selling Points
SELECT DISTINCT Unique_Selling_Points_USPs FROM CompetitorAnalysis;

-- Problems Solved
SELECT DISTINCT Problems_Solved FROM CompetitorAnalysis;

-- Opportunities for Differentiation
SELECT DISTINCT Opportunities_for_Differentiation FROM CompetitorAnalysis;

GO

-- 3. Target Audience Analysis Queries
-- Count of Target Audience by Niche
SELECT Niche, COUNT(*) AS AudienceCount
FROM TargetAudience
GROUP BY Niche
ORDER BY AudienceCount DESC;

-- Common Business Pain Points
SELECT Pain_Points, COUNT(*) AS PainPointCount
FROM TargetAudience
GROUP BY Pain_Points
ORDER BY PainPointCount DESC;
