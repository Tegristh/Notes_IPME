# 1
SELECT people.id, people.first_name, people.last_name, phones.number
from people
LEFT JOIN phones on phones.person_id = people.id;

# 2
SELECT people.id, people.first_name, people.last_name, COUNT(phones.id) AS `Phone_Total`
from people
LEFT JOIN phones on phones.person_id = people.id
GROUP BY people.id;

# 3
SELECT people.id, people.first_name, people.last_name, COUNT(phones.id) AS `Phone_Total`
from people
LEFT JOIN phones on phones.person_id = people.id
GROUP BY people.id
HAVING Phone_Total > 1;

# 4
SELECT people.id, people.first_name, people.last_name, addresses.zip_code, addresses.street
FROM people
LEFT JOIN addresses ON addresses.person_id = people.id
WHERE addresses.zip_code != "NULL";

# 5
SELECT people.id, people.first_name, people.last_name, addresses.zip_code, addresses.street
FROM people
LEFT JOIN addresses ON addresses.person_id = people.id
WHERE ((addresses.zip_code != "NULL") AND (addresses.street != "NULL"));

# 6
SELECT people.id, people.first_name, people.last_name, addresses.zip_code, addresses.street
FROM addresses
LEFT JOIN people ON people.id = addresses.person_id
WHERE addresses.zip_code is NULL;

# 7
SELECT 
people.id,
people.first_name,
people.last_name,
COUNT(addresses.id) AS `Total_Adresses`,
COUNT(emails.id) AS `Total_Emails`,
COUNT(phones.id) AS `Total_Phones`
from people
LEFT JOIN addresses on people.id = addresses.person_id
LEFT JOIN emails on people.id = emails.person_id
LEFT JOIN phones on people.id = phones.person_id
GROUP BY people.id;

# 8
SELECT 
people.id,
people.first_name,
people.last_name,
COUNT(addresses.id) AS `Total_Adresses`,
COUNT(emails.id) AS `Total_Emails`,
COUNT(phones.id) AS `Total_Phones`
from people
LEFT JOIN addresses on people.id = addresses.person_id
LEFT JOIN emails on people.id = emails.person_id
LEFT JOIN phones on people.id = phones.person_id
GROUP BY people.id
HAVING (
    (Total_Adresses >= 1) AND
    (Total_Emails >= 1) AND
    (Total_Phones >= 1)
);

# 9

SELECT 
people.id,
people.first_name,
people.last_name, 
( COUNT(addresses.id) + COUNT(emails.id) + COUNT(phones.id) ) AS `Total_elements`
from people
LEFT JOIN addresses on people.id = addresses.person_id
LEFT JOIN emails on people.id = emails.person_id
LEFT JOIN phones on people.id = phones.person_id
GROUP BY people.id
HAVING (
    (COUNT(addresses.id) >= 1) AND
    (COUNT(emails.id) >= 1) AND
    (COUNT(phones.id) >= 1)
);

# 10
SELECT 
people.id, 
people.first_name, 
people.last_name,
people.gender,
GROUP_CONCAT(emails.email SEPARATOR ', ') AS "e_mails"
FROM people
LEFT JOIN emails on people.id = emails.person_id
GROUP BY people.id
HAVING people.gender IS NOT NULL;

