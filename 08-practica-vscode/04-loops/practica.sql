-- =====================================================
-- MODULO
-- 04 - LOOPS PL/SQL
--
-- OBJETIVO
-- Practicar estructuras repetitivas en PL/SQL.
--
-- AUTOR
-- Luis Ferrioli
-- =====================================================

SET SERVEROUTPUT ON;

-- Ejercicio 1: FOR LOOP del 1 al 10
BEGIN
   FOR i IN 1..10 LOOP
      DBMS_OUTPUT.PUT_LINE('Numero: ' || i);
   END LOOP;
END;
/

-- Ejercicio 2: FOR LOOP del 10 al 1
BEGIN
   FOR i IN REVERSE 1..10 LOOP
      DBMS_OUTPUT.PUT_LINE('Numero: ' || i);
   END LOOP;
END;
/

-- Ejercicio 3: numeros pares del 1 al 20
BEGIN
   FOR i IN 1..20 LOOP
      IF MOD(i, 2) = 0 THEN
         DBMS_OUTPUT.PUT_LINE('Par: ' || i);
      END IF;
   END LOOP;
END;
/

-- Ejercicio 4: WHILE LOOP
DECLARE
   v_contador NUMBER := 1;
BEGIN
   WHILE v_contador <= 10 LOOP
      DBMS_OUTPUT.PUT_LINE('Contador: ' || v_contador);
      v_contador := v_contador + 1;
   END LOOP;
END;
/

-- Ejercicio 5: LOOP + EXIT WHEN
DECLARE
   v_contador NUMBER := 1;
BEGIN
   LOOP
      DBMS_OUTPUT.PUT_LINE('Contador: ' || v_contador);

      v_contador := v_contador + 1;

      EXIT WHEN v_contador > 10;
   END LOOP;
END;
/

-- Ejercicio 6: tabla de multiplicar del 5
BEGIN
   FOR i IN 1..10 LOOP
      DBMS_OUTPUT.PUT_LINE('5 x ' || i || ' = ' || (5 * i));
   END LOOP;
END;
/
