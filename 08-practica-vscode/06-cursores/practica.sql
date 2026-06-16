-- =====================================================
-- MODULO
-- 06 - CURSORES
--
-- OBJETIVO
-- Practicar cursores implicitos y explicitos.
--
-- AUTOR
-- Luis Ferrioli
-- =====================================================

SET SERVEROUTPUT ON;

-- ==========================================
-- Ejercicio 1 - Cursor FOR LOOP
-- ==========================================

BEGIN
   FOR r IN (
      SELECT LEVEL numero
      FROM dual
      CONNECT BY LEVEL <= 10
   )
   LOOP
      DBMS_OUTPUT.PUT_LINE('Numero: ' || r.numero);
   END LOOP;
END;
/

-- ==========================================
-- Ejercicio 2 - USER_TABLES
-- ==========================================

BEGIN
   FOR r IN (
      SELECT table_name
      FROM user_tables
      ORDER BY table_name
   )
   LOOP
      DBMS_OUTPUT.PUT_LINE(r.table_name);
   END LOOP;
END;
/

-- ==========================================
-- Ejercicio 3 - Cursor explicito
-- ==========================================

DECLARE

   CURSOR c_tablas IS
      SELECT table_name
      FROM user_tables
      ORDER BY table_name;

   v_table_name user_tables.table_name%TYPE;

BEGIN

   OPEN c_tablas;

   LOOP

      FETCH c_tablas
      INTO v_table_name;

      EXIT WHEN c_tablas%NOTFOUND;

      DBMS_OUTPUT.PUT_LINE(v_table_name);

   END LOOP;

   CLOSE c_tablas;

END;
/
