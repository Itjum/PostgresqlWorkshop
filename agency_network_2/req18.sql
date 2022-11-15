SELECT surname, employee.name, email FROM employee
INNER JOIN agency ON employee.agency_code = agency.code
WHERE ratings > 6
ORDER BY surname, name, email;
