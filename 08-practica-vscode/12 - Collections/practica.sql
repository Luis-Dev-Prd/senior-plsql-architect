-- =====================================================
-- MODULO
-- 12 - COLLECTIONS
--
-- OBJETIVO
-- Practicar estructuras de datos en memoria.
--
-- AUTOR
-- Luis Ferrioli
-- =====================================================

SET SERVEROUTPUT ON;

-- ==========================================
-- Ejercicio 1 - Associative Array
-- ==========================================

DECLARE

   TYPE t_nombres IS TABLE OF VARCHAR2(100)
      INDEX BY PLS_INTEGER;

   v_nombres t_nombres;

BEGIN

   v_nombres(1) := 'Luis';
   v_nombres(2) := 'Juan';
   v_nombres(3) := 'Pedro';

   FOR i IN v_nombres.FIRST .. v_nombres.LAST LOOP

      DBMS_OUTPUT.PUT_LINE(
         v_nombres(i)
      );

   END LOOP;

END;
/

-- ==========================================
-- Ejercicio 2 - Numeros
-- ==========================================

DECLARE

   TYPE t_numeros IS TABLE OF NUMBER
      INDEX BY PLS_INTEGER;

   v_numeros t_numeros;

BEGIN

   FOR i IN 1..10 LOOP
      v_numeros(i) := i;
   END LOOP;

   FOR i IN v_numeros.FIRST .. v_numeros.LAST LOOP

      DBMS_OUTPUT.PUT_LINE(
         'Numero: ' || v_numeros(i)
      );

   END LOOP;

END;
/

-- ==========================================
-- Ejercicio 3 - COUNT
-- ==========================================

DECLARE

   TYPE t_nombres IS TABLE OF VARCHAR2(100)
      INDEX BY PLS_INTEGER;

   v_nombres t_nombres;

BEGIN

   v_nombres(1) := 'Luis';
   v_nombres(2) := 'Juan';
   v_nombres(3) := 'Pedro';

   DBMS_OUTPUT.PUT_LINE(
      'Cantidad: ' || v_nombres.COUNT
   );

END;
/

-- ==========================================
-- Ejercicio 4 - DELETE
-- ==========================================

DECLARE

   TYPE t_nombres IS TABLE OF VARCHAR2(100)
      INDEX BY PLS_INTEGER;

   v_nombres t_nombres;

BEGIN

   v_nombres(1) := 'Luis';
   v_nombres(2) := 'Juan';
   v_nombres(3) := 'Pedro';

   v_nombres.DELETE(2);

   DBMS_OUTPUT.PUT_LINE(
      'Cantidad: ' || v_nombres.COUNT
   );

END;
/
