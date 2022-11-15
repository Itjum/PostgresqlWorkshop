CREATE VIEW view_nearest_planet_to_sun AS
SELECT planet.name as planet FROM planet
INNER JOIN planetary_system ON planetary_system.id = planet.id_system
WHERE planetary_system.star ILIKE 'sun'
GROUP BY planet
ORDER BY min(period)
LIMIT 3;

CREATE VIEW view_nb_satellite_per_planet AS
SELECT planet.name as planet, count(CASE WHEN satellite.radius < 500 THEN NULL
	ELSE
		id_planet
	END) as "number of satellites" 
FROM planet
FULL JOIN satellite ON planet.id = satellite.id_planet
GROUP BY planet
ORDER BY "number of satellites", planet;

CREATE VIEW view_average_period AS
SELECT planetary_system.name as system, 
	CASE WHEN planetary_system.id NOT IN (SELECT id_system FROM planet) THEN 0
		ELSE ROUND(AVG(period), 2) 
	END AS average_period 
FROM planetary_system
FULL JOIN planet ON planet.id_system = planetary_system.id
GROUP BY planetary_system.id, planet.id_system
ORDER BY average_period, system;

CREATE VIEW view_biggest_entities AS
SELECT 'satellite' as type, planetary_system.name as system, satellite.name as name, satellite.radius as radius FROM satellite
UNION SELECT 'planet' as type, planetary_system.name as system, planet.name as name, planet.radius as radius FROM planet
FULL JOIN planetary_system ON planetary_system.id = planet.id_system
FULL JOIN satellite ON satellite.id_planet = planet.id
WHERE planet.radius IS NOT NULL AND satellite.radius IS NOT NULL
ORDER BY radius DESC, name
LIMIT 10;
