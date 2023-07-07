-- 1. afficher toutes les regions
SELECT region.name
FROM region;

-- 2. afficher toutes les régions avec leurs département et numeros

SELECT 
region.name,
GROUP CONCAT (department.name SEPARATOR ', ')
GROUP CONCAT (department.code SEPARATOR ',')
FROM department
JOIN region ON department.region_id = region.id
GROUP BY region.id