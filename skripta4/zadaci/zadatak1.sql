SELECT CITY, COUNT(CITY) AS BR_ZAP
FROM EMPLOYEE_TBL
GROUP BY CITY;

SELECT CITY, COUNT(CITY) AS BR_ZAP
FROM EMPLOYEE_TBL
WHERE FIRST_NAME NOT LIKE 'T%'
GROUP BY CITY;