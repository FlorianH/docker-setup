DROP TABLE IF EXISTS cities;

CREATE TABLE cities (
    id SERIAL PRIMARY KEY,
    city VARCHAR(255) NOT NULL,
    country VARCHAR(255),
    population INTEGER
); 

INSERT INTO cities (city, country, population) VALUES ('Berlin', 'Germany', 123313);
INSERT INTO cities (city, country, population) VALUES ('Hamburg', 'Germany', 893729183);
INSERT INTO cities (city, country, population) VALUES ('Cologne', 'Germany', 21312);
INSERT INTO cities (city) VALUES ('Singapore');



