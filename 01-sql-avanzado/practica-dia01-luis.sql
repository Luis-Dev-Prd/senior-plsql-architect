-- Ejercicio 1
SELECT *
FROM dual;

select * 
from dual;

-- Ejercicio 2
SELECT dummy
FROM dual;

select dummy
from dual;

-- Ejercicio 3
SELECT object_name,
       object_type
FROM user_objects;

select object_name,
       object_type  
from user_objects;

-- Ejercicio 4
SELECT object_name,
       object_type
FROM user_objects
WHERE object_type = 'TABLE';

select object_name,
       object_type  
from user_objects
where object_type = 'TABLE';


-- Ejercicio 5
SELECT object_name,
       object_type
FROM user_objects
WHERE object_type = 'TABLE'
ORDER BY object_name;

select object_name,
       object_type
from user_objects
where object_type = 'TABLE'
order by object_name;


