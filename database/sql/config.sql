CREATE ROLE IF NOT EXISTS 'reader';
GRANT SELECT, SHOW VIEW ON *.* TO 'reader';

CREATE USER IF NOT EXISTS 'user'@'localhost' IDENTIFIED BY 'k564cuzn';
GRANT 'reader' TO 'user'@'localhost';
