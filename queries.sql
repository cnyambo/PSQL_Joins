--Join the two tables so that every column and record appears, regardless of if there is not an owner_id
SELECT * FROM owners O LEFT JOIN vehicles V ON O.id = V.owner_id;

--Count the number of cars for each owner. Display the owners first_name, last_name and count of vehicles.

SELECT first_name, last_name, COUNT(*) total FROM owners O JOIN vehicles V ON O.id = V.owner_id
GROUP BY O.id ORDER BY first_name;

--Count the number of cars for each owner and display the average price for each of the cars as integers. 
--Display the owners first_name, last_name, average price and count of vehicles. 
--The first_name should be ordered in descending order.
-- Only display results with more than one vehicle and an average price greater than 10000.

SELECT first_name, last_name, ROUND(AVG(price)) AS price, COUNT(*) AS total  FROM owners O JOIN vehicles V ON O.id = V.owner_id
GROUP BY O.id HAVING COUNT(*) > 1 AND  ROUND(AVG(price)) > 10000 ORDER BY first_name DESC;
