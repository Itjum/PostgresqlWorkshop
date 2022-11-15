UPDATE character
SET level = CASE
    WHEN name = 'Tilon' THEN 15
    WHEN name = 'Kuro' THEN level + 1
    ELSE
        level
    END;

UPDATE character
SET max_health = CASE
    WHEN blessed = 1 THEN (level + 1) * 10
    ELSE
        level * 10
    END;
