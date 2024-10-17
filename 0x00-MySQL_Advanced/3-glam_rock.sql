-- Column names must be: band_name and lifespan
-- SQL script to list all Glam rock bands, ranked by their longevity.
-- If the band has not split, calculate lifespan up to 2022
-- If the band has split, calculate lifespan until the split year
-- Filter for bands where the main style is 'Glam rock'
-- Rank by lifespan in descending order

SELECT band_name,
CASE
	WHEN split IS NULL THEN (2022 - formed)
	ELSE (split - formed)
END AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC
