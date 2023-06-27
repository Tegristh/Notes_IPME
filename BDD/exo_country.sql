select country.label, COUNT(user.id) AS 'total_user'
FROM country
LEFT JOIN user ON user.country_id = country.id
GROUP BY country.id;

