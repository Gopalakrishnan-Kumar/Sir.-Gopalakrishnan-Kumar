DROP TABLE IF EXISTS count_demos;
CREATE TABLE count_demos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    val INT
    );

INSERT INTO count_demos(val) 
VALUES (-1),(1),(1),(2),(NULL),(3),(4),(6),(NULL),(8),(9),(10);

SELECT * FROM count_demos;

SELECT COUNT(*) FROM count_demos;

SELECT COUNT(*) 
FROM count_demos
WHERE val = 3;

SELECT COUNT(val) 
FROM count_demos;

SELECT COUNT(DISTINCT val) 
FROM count_demos;




