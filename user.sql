create database microoo;
use microoo;

CREATE TABLE userss (
    id INT,
    email VARCHAR(50)
);

INSERT INTO userss VALUES
(1, 'ragul@email.com'),
(2, 'vijay@email.com'),
(3, 'vijay@email.com'), 
(4, 'bothb@email.com'),
(5, 'bvfjbn@email.com'), 
(6, 'jggj@email.com'),  
(7, 'kjfr@email.com');

SELECT email, COUNT(*) as duplicate_count
FROM userss
GROUP BY email
HAVING COUNT(*) > 1;

DELETE u1
FROM userss u1
INNER JOIN userss u2 
ON u1.email = u2.email AND u1.id < u2.id;

SELECT * FROM users ORDER BY id;
