SELECT title FROM quest
WHERE (level_min >= 8 AND level_min <= 10) AND (gold > 100 OR creature_start = creature_end)
ORDER BY title;
