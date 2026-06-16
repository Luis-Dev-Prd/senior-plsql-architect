-- =====================================================
-- MODULO
-- 08 - PROCEDURES
-- =====================================================

SET SERVEROUTPUT ON;

-- ==========================================
-- Ejercicio 1
-- ==========================================

CREATE OR REPLACE PROCEDURE sp_saludo
AS
BEGIN
   DBMS_OUTPUT.PUT_LINE('Hola Luis');
END;
/

BEGIN
   sp_saludo;
END;
/

-- ==========================================
-- Ejercicio 2
-- ==========================================

CREATE OR REPLACE PROCEDURE sp_saludo_nombre(
   p_nombre IN VARCHAR2
)
AS
BEGIN
   DBMS_OUTPUT.PUT_LINE('Hola ' || p_nombre);
END;
/

BEGIN
   sp_saludo_nombre('Luis');
END;
/

-- ==========================================
-- Ejercicio 3
-- ==========================================

CREATE OR REPLACE PROCEDURE sp_mostrar_numero(
   p_numero IN NUMBER
)
AS
BEGIN
   DBMS_OUTPUT.PUT_LINE('Numero recibido: ' || p_numero);
END;
/

BEGIN
   sp_mostrar_numero(100);
END;
/

-- ==========================================
-- Ejercicio 4
-- ==========================================

CREATE OR REPLACE PROCEDURE sp_resultado(
   p_result OUT VARCHAR2
)
AS
BEGIN
   p_result := 'Proceso OK';
END;
/

DECLARE
   v_result VARCHAR2(100);
BEGIN
   sp_resultado(v_result);
   DBMS_OUTPUT.PUT_LINE(v_result);
END;
/
