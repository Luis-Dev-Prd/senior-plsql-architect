-- =====================================================
-- MODULO
-- 07 - FUNCTIONS
-- =====================================================

SET SERVEROUTPUT ON;

-- ==========================================
-- Ejercicio 1
-- ==========================================

CREATE OR REPLACE FUNCTION fn_saludo
RETURN VARCHAR2
AS
BEGIN
   RETURN 'Hola Luis';
END;
/

BEGIN
   DBMS_OUTPUT.PUT_LINE(fn_saludo);
END;
/

-- ==========================================
-- Ejercicio 2
-- ==========================================

CREATE OR REPLACE FUNCTION fn_saludo_nombre(
   p_nombre IN VARCHAR2
)
RETURN VARCHAR2
AS
BEGIN
   RETURN 'Hola ' || p_nombre;
END;
/

BEGIN
   DBMS_OUTPUT.PUT_LINE(fn_saludo_nombre('Luis'));
END;
/

-- ==========================================
-- Ejercicio 3
-- ==========================================

CREATE OR REPLACE FUNCTION fn_sumar(
   p_num1 IN NUMBER,
   p_num2 IN NUMBER
)
RETURN NUMBER
AS
BEGIN
   RETURN p_num1 + p_num2;
END;
/

BEGIN
   DBMS_OUTPUT.PUT_LINE('Resultado: ' || fn_sumar(10,20));
END;
/

-- ==========================================
-- Ejercicio 4
-- ==========================================

CREATE OR REPLACE FUNCTION fn_obtener_anio(
   p_fecha IN DATE
)
RETURN NUMBER
AS
BEGIN
   RETURN EXTRACT(YEAR FROM p_fecha);
END;
/

BEGIN
   DBMS_OUTPUT.PUT_LINE(
      fn_obtener_anio(SYSDATE)
   );
END;
/

-- ==========================================
-- Ejercicio 5
-- ==========================================

CREATE OR REPLACE FUNCTION fn_es_par(
   p_numero IN NUMBER
)
RETURN VARCHAR2
AS
BEGIN
   IF MOD(p_numero,2)=0 THEN
      RETURN 'PAR';
   ELSE
      RETURN 'IMPAR';
   END IF;
END;
/

BEGIN
   DBMS_OUTPUT.PUT_LINE(fn_es_par(10));
   DBMS_OUTPUT.PUT_LINE(fn_es_par(11));
END;
/
