-- =====================================================
-- MODULO
-- 14 - FORALL
--
-- OBJETIVO
-- Practicar operaciones masivas.
--
-- AUTOR
-- Luis Ferrioli
-- =====================================================

SET SERVEROUTPUT ON;

-- ==========================================
-- PREPARACION
-- ==========================================

CREATE TABLE demo_forall (
   id NUMBER
);
/

-- ==========================================
-- Ejercicio 1 - INSERT MASIVO
-- ==========================================

DECLARE

   TYPE t_ids IS TABLE OF NUMBER;

   v_ids t_ids := t_ids();

BEGIN

   v_ids.EXTEND(5);

   v_ids(1) := 10;
   v_ids(2) := 20;
   v_ids(3) := 30;
   v_ids(4) := 40;
   v_ids(5) := 50;

   FORALL i IN 1 .. v_ids.COUNT

      INSERT INTO demo_forall(id)
      VALUES(v_ids(i));

   COMMIT;

   DBMS_OUTPUT.PUT_LINE(
      'Insertados: ' || v_ids.COUNT
   );

END;
/

-- ==========================================
-- Ejercicio 2 - UPDATE MASIVO
-- ==========================================

DECLARE

   TYPE t_ids IS TABLE OF NUMBER;

   v_ids t_ids := t_ids(10,20);

BEGIN

   FORALL i IN 1 .. v_ids.COUNT

      UPDATE demo_forall
         SET id = id + 100
       WHERE id = v_ids(i);

   COMMIT;

END;
/

-- ==========================================
-- Ejercicio 3 - DELETE MASIVO
-- ==========================================

DECLARE

   TYPE t_ids IS TABLE OF NUMBER;

   v_ids t_ids := t_ids(130,140);

BEGIN

   FORALL i IN 1 .. v_ids.COUNT

      DELETE demo_forall
       WHERE id = v_ids(i);

   COMMIT;

END;
/

-- ==========================================
-- VALIDACION
-- ==========================================

SELECT *
FROM demo_forall
ORDER BY id;
