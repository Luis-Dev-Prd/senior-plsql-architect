-- =====================================================
-- MODULO
-- 05 - SELECT INTO
--
-- OBJETIVO
-- Practicar consultas SQL dentro de bloques PL/SQL.
--
-- AUTOR
-- Luis Ferrioli
-- =====================================================

SET SERVEROUTPUT ON;

-- Ejercicio 1: obtener SYSDATE desde DUAL
DECLARE
   v_fecha DATE;
BEGIN
   SELECT SYSDATE
   INTO v_fecha
   FROM DUAL;

   DBMS_OUTPUT.PUT_LINE('Fecha actual: ' || TO_CHAR(v_fecha, 'DD/MM/YYYY HH24:MI:SS'));
END;
/

-- Ejercicio 2: obtener nombre de la base
DECLARE
   v_db_name VARCHAR2(100);
BEGIN
   SELECT NAME
   INTO v_db_name
   FROM V$DATABASE;

   DBMS_OUTPUT.PUT_LINE('Base de datos: ' || v_db_name);
END;
/

-- Ejercicio 3: cantidad de tablas del schema
DECLARE
   v_cantidad NUMBER;
BEGIN
   SELECT COUNT(*)
   INTO v_cantidad
   FROM USER_TABLES;

   DBMS_OUTPUT.PUT_LINE('Cantidad de tablas: ' || v_cantidad);
END;
/

-- Ejercicio 4: cantidad de objetos del schema
DECLARE
   v_cantidad NUMBER;
BEGIN
   SELECT COUNT(*)
   INTO v_cantidad
   FROM USER_OBJECTS;

   DBMS_OUTPUT.PUT_LINE('Cantidad de objetos: ' || v_cantidad);
END;
/

-- Ejercicio 5: SELECT INTO con tabla real
-- Ajustar la tabla y columnas según tu schema.
DECLARE
   v_policy_id NUMBER;
   v_policy_no NUMBER;
BEGIN
   SELECT policy_id,
          policy_no
   INTO v_policy_id,
        v_policy_no
   FROM policy
   WHERE policy_id = 100000004457;

   DBMS_OUTPUT.PUT_LINE('Policy ID: ' || v_policy_id);
   DBMS_OUTPUT.PUT_LINE('Policy NO: ' || v_policy_no);
EXCEPTION
   WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('No existe la policy indicada.');
   WHEN TOO_MANY_ROWS THEN
      DBMS_OUTPUT.PUT_LINE('La consulta devolvio mas de una fila.');
END;
/

-- Ejercicio 6: provocar NO_DATA_FOUND
DECLARE
   v_policy_id NUMBER;
BEGIN
   SELECT policy_id
   INTO v_policy_id
   FROM policy
   WHERE policy_id = -1;

   DBMS_OUTPUT.PUT_LINE('Policy ID: ' || v_policy_id);
EXCEPTION
   WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('NO_DATA_FOUND controlado correctamente.');
END;
/

-- Ejercicio 7: provocar TOO_MANY_ROWS
DECLARE
   v_policy_id NUMBER;
BEGIN
   SELECT policy_id
   INTO v_policy_id
   FROM policy
   WHERE ROWNUM <= 2;

   DBMS_OUTPUT.PUT_LINE('Policy ID: ' || v_policy_id);
EXCEPTION
   WHEN TOO_MANY_ROWS THEN
      DBMS_OUTPUT.PUT_LINE('TOO_MANY_ROWS controlado correctamente.');
END;
/

-- Ejercicio 8: validar existencia antes del SELECT INTO
DECLARE
   v_count     NUMBER;
   v_policy_id NUMBER;
BEGIN
   SELECT COUNT(*)
   INTO v_count
   FROM policy
   WHERE policy_id = 100000004457;

   IF v_count = 1 THEN
      SELECT policy_id
      INTO v_policy_id
      FROM policy
      WHERE policy_id = 100000004457;

      DBMS_OUTPUT.PUT_LINE('Policy encontrada: ' || v_policy_id);
   ELSE
      DBMS_OUTPUT.PUT_LINE('Policy no encontrada o duplicada. Count: ' || v_count);
   END IF;
END;
/
