-- =====================================================
-- MODULO
-- 13 - BULK COLLECT
--
-- OBJETIVO
-- Practicar carga masiva de datos en memoria.
--
-- AUTOR
-- Luis Ferrioli
-- =====================================================

SET SERVEROUTPUT ON;

-- ==========================================
-- Ejercicio 1 - USER_TABLES
-- ==========================================

DECLARE

   TYPE t_tablas IS TABLE OF USER_TABLES.TABLE_NAME%TYPE;

   v_tablas t_tablas;

BEGIN

   SELECT table_name
   BULK COLLECT INTO v_tablas
   FROM user_tables
   ORDER BY table_name;

   FOR i IN 1 .. v_tablas.COUNT LOOP

      DBMS_OUTPUT.PUT_LINE(
         v_tablas(i)
      );

   END LOOP;

END;
/

-- ==========================================
-- Ejercicio 2 - COUNT
-- ==========================================

DECLARE

   TYPE t_tablas IS TABLE OF USER_TABLES.TABLE_NAME%TYPE;

   v_tablas t_tablas;

BEGIN

   SELECT table_name
   BULK COLLECT INTO v_tablas
   FROM user_tables;

   DBMS_OUTPUT.PUT_LINE(
      'Cantidad: ' || v_tablas.COUNT
   );

END;
/

-- ==========================================
-- Ejercicio 3 - USER_OBJECTS
-- ==========================================

DECLARE

   TYPE t_objetos IS TABLE OF USER_OBJECTS.OBJECT_NAME%TYPE;

   v_objetos t_objetos;

BEGIN

   SELECT object_name
   BULK COLLECT INTO v_objetos
   FROM user_objects;

   DBMS_OUTPUT.PUT_LINE(
      'Objetos: ' || v_objetos.COUNT
   );

END;
/

-- ==========================================
-- Ejercicio 4 - Tabla real
-- ==========================================

DECLARE

   TYPE t_policy IS TABLE OF POLICY.POLICY_ID%TYPE;

   v_policies t_policy;

BEGIN

   SELECT policy_id
   BULK COLLECT INTO v_policies
   FROM policy
   WHERE ROWNUM <= 10;

   FOR i IN 1 .. v_policies.COUNT LOOP

      DBMS_OUTPUT.PUT_LINE(
         'Policy: ' || v_policies(i)
      );

   END LOOP;

END;
/
