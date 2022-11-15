SELECT creature_template.name as name FROM creature
INNER JOIN creature_template ON creature.gid = creature_template.id
WHERE creature.id = 6;
