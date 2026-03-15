-- List all Glam rock bands ranked by their lifespan (in years)

SELECT band_name, (split - formed) AS lifespan
FROM metal_bands
WHERE main_style = 'Glam rock'
ORDER BY lifespan DESC;
