SELECT DISTINCT creature_template.name as name FROM creature_template
WHERE NOT EXISTS (SELECT FROM creature WHERE creature.gid = creature_template.id)
ORDER BY name;
