SELECT title, character.name as name FROM quest
INNER JOIN character_quests ON character_quests.quest_id = quest.id
INNER JOIN character ON character.id = character_quests.character_id
WHERE complete = 0
ORDER BY title, name;
