SELECT title, creature_template.name AS name FROM quest
INNER JOIN creature ON quest.creature_start = creature.id
INNER JOIN creature_template ON creature_template.id = creature.gid
ORDER BY title, name;
