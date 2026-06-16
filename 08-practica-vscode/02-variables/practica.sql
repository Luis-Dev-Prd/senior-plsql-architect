-- =====================================================
-- MODULO
-- 02 - VARIABLES PL/SQL
--
-- OBJETIVO
-- Practicar tipos de datos, inicialización, constantes,
-- %TYPE y %ROWTYPE.
--
-- AUTOR
-- Luis Ferrioli
-- =====================================================

SET SERVEROUTPUT ON;

-- Ejercicio 1: NUMBER
DECLARE
   v_edad NUMBER := 35;
BEGIN
   DBMS_OUTPUT.PUT_LINE('Edad: ' || v_edad);
END;
/

-- Ejercicio 2: VARCHAR2
DECLARE
   v_nombre VARCHAR2(100) := 'Luis';
BEGIN
   DBMS_OUTPUT.PUT_LINE('Nombre: ' || v_nombre);
END;
/

-- Ejercicio 3: DATE
DECLARE
   v_fecha DATE := SYSDATE;
BEGIN
   DBMS_OUTPUT.PUT_LINE('Fecha: ' || TO_CHAR(v_fecha, 'DD/MM/YYYY'));
END;
/

-- Ejercicio 4: TIMESTAMP
DECLARE
   v_fecha_hora TIMESTAMP := SYSTIMESTAMP;
BEGIN
   DBMS_OUTPUT.PUT_LINE('Timestamp: ' || TO_CHAR(v_fecha_hora, 'DD/MM/YYYY HH24:MI:SS'));
END;
/

-- Ejercicio 5: CONSTANT
DECLARE
   c_empresa CONSTANT VARCHAR2(50) := 'SURA';
BEGIN
   DBMS_OUTPUT.PUT_LINE('Empresa: ' || c_empresa);
END;
/

-- Ejercicio 6: %TYPE
-- Reemplazar POLICY por una tabla real disponible en tu schema.
DECLARE
   v_policy_id POLICY.POLICY_ID%TYPE;
BEGIN
   v_policy_id := 100000004457;
   DBMS_OUTPUT.PUT_LINE('Policy ID: ' || v_policy_id);
END;
/
