SET SERVEROUTPUT ON;

-- =====================================================
-- Practica 01 - Bloques Anonimos PL/SQL
-- =====================================================

-- Ejercicio 1: imprimir un mensaje
BEGIN
   DBMS_OUTPUT.PUT_LINE('Hola PL/SQL');
END;
/

-- Ejercicio 2: declarar una variable
DECLARE
   v_nombre VARCHAR2(50) := 'Luis';
BEGIN
   DBMS_OUTPUT.PUT_LINE('Hola ' || v_nombre);
END;
/

-- Ejercicio 3: declarar dos variables
DECLARE
   v_nombre   VARCHAR2(50) := 'Luis';
   v_apellido VARCHAR2(50) := 'Ferrioli';
BEGIN
   DBMS_OUTPUT.PUT_LINE('Nombre completo: ' || v_nombre || ' ' || v_apellido);
END;
/

-- Ejercicio 4: mostrar fecha actual
BEGIN
   DBMS_OUTPUT.PUT_LINE('Fecha actual: ' || TO_CHAR(SYSDATE, 'DD/MM/YYYY HH24:MI:SS'));
END;
/
