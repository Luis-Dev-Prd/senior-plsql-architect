-- ==========================================
-- SQL AVANZADO
-- DIA 01
--
-- SELECT
-- WHERE
-- ORDER BY
-- ==========================================

-- Ejercicio 1

SELECT *
FROM dual;

-- Ejercicio 2

SELECT
       dummy
FROM dual;

-- Ejercicio 3

SELECT
       object_name
FROM user_objects
WHERE object_type = 'TABLE';

-- Ejercicio 4

SELECT
       object_name
FROM user_objects
WHERE object_id BETWEEN 1 AND 1000;

-- Ejercicio 5

SELECT
       object_name,
       object_type
FROM user_objects
WHERE object_type = 'TABLE'
AND status = 'VALID';

-- Ejercicio 6

SELECT
       object_name
FROM user_objects
ORDER BY object_name;

-- Ejercicio 7

SELECT
       object_name
FROM user_objects
ORDER BY object_name DESC;

-- Ejercicio 8

SELECT
       object_name,
       object_type
FROM user_objects
WHERE object_type = 'TABLE'
ORDER BY object_name;
