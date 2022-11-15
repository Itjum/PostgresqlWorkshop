SELECT DISTINCT quest.title as title FROM character_quests
INNER JOIN quest ON quest.id = character_quests.quest_id
INNER JOIN character ON character.id = character_quests.character_id
WHERE complete = 1 AND character.name = 'Kuro'
ORDER BY title;
