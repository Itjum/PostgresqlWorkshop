CREATE FUNCTION space_travel(origin INT, destination INT, quantity BIGINT)
    RETURNS BOOLEAN AS
$$
BEGIN
    IF quantity <= 0 OR (SELECT population FROM planet WHERE origin = id) <= quantity THEN
        RETURN FALSE;
    ELSIF (SELECT id_system FROM planet WHERE origin = id) != (SELECT id_system FROM planet WHERE id = destination)
        THEN RETURN FALSE;
    END IF;
    UPDATE planet
    SET population = population - quantity
    WHERE origin = id;
    UPDATE planet
    SET population = population + quantity
    WHERE destination = id;
    RETURN TRUE;
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION list_satellite_inf_750(syst INT)
    RETURNS TABLE (satellite VARCHAR, planet VARCHAR, radius INT) AS
$$
BEGIN
    RETURN QUERY
    SELECT satellite.name as satellite, planet.name as planet, satellite.radius as radius FROM planet
    INNER JOIN satellite ON planet.id = satellite.id_planet
    WHERE satellite.radius <= 750 AND syst = id_system
    ORDER BY planet, radius DESC, satellite;
END;
$$ LANGUAGE plpgsql;
