SET SERVEROUTPUT ON;

-- ==========================================
-- MODULO 03 - IF ELSE
-- ==========================================

-- Ejercicio 1

DECLARE
   v_edad NUMBER := 35;
BEGIN
   IF v_edad >= 18 THEN
      DBMS_OUTPUT.PUT_LINE('Mayor de edad');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Menor de edad');
   END IF;
END;
/

-- Ejercicio 2

DECLARE
   v_nota NUMBER := 8;
BEGIN
   IF v_nota >= 7 THEN
      DBMS_OUTPUT.PUT_LINE('Aprobado');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Desaprobado');
   END IF;
END;
/
