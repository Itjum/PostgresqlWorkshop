SELECT DISTINCT creature_template.name as name FROM creature_template
INNER JOIN creature ON creature_template.id = creature.gid
INNER JOIN quest ON creature.id = quest.creature_start
WHERE creature_start = creature_end
ORDER BY name;
