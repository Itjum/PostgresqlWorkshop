SELECT concat(substring(acronym, '[A-Z]+'), lpad(substring(acronym, '[0-9]+'), 2, '0')) AS acronym
FROM destination
ORDER BY acronym;
