-- =====================================================
-- MODULO
-- 10 - EXCEPTIONS
-- =====================================================

SET SERVEROUTPUT ON;

-- ==========================================
-- Ejercicio 1
-- ==========================================

DECLARE
   v_policy_id NUMBER;
BEGIN

   SELECT policy_id
   INTO v_policy_id
   FROM policy
   WHERE policy_id = -1;

EXCEPTION

   WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('NO_DATA_FOUND');

END;
/

-- ==========================================
-- Ejercicio 2
-- ==========================================

DECLARE
   v_policy_id NUMBER;
BEGIN

   SELECT policy_id
   INTO v_policy_id
   FROM policy
   WHERE ROWNUM <= 2;

EXCEPTION

   WHEN TOO_MANY_ROWS THEN
      DBMS_OUTPUT.PUT_LINE('TOO_MANY_ROWS');

END;
/

-- ==========================================
-- Ejercicio 3
-- ==========================================

DECLARE
   v_result NUMBER;
BEGIN

   v_result := 10 / 0;

EXCEPTION

   WHEN ZERO_DIVIDE THEN
      DBMS_OUTPUT.PUT_LINE('ZERO_DIVIDE');

END;
/

-- ==========================================
-- Ejercicio 4
-- ==========================================

DECLARE
   v_result NUMBER;
BEGIN

   v_result := 10 / 0;

EXCEPTION

   WHEN OTHERS THEN

      DBMS_OUTPUT.PUT_LINE(
         'SQLCODE: ' || SQLCODE
      );

      DBMS_OUTPUT.PUT_LINE(
         'SQLERRM: ' || SQLERRM
      );

END;
/

-- ==========================================
-- Ejercicio 5
-- ==========================================

DECLARE

   ex_error_personalizado EXCEPTION;

BEGIN

   RAISE ex_error_personalizado;

EXCEPTION

   WHEN ex_error_personalizado THEN

      DBMS_OUTPUT.PUT_LINE(
         'ERROR PERSONALIZADO'
      );

END;
/
