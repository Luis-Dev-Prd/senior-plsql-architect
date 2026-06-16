-- =====================================================
-- MODULO
-- 09 - PACKAGES
-- =====================================================

SET SERVEROUTPUT ON;

-- ==========================================
-- PACKAGE SPECIFICATION
-- ==========================================

CREATE OR REPLACE PACKAGE pkg_demo AS

   c_empresa CONSTANT VARCHAR2(50) := 'SURA';

   PROCEDURE sp_saludo;

   FUNCTION fn_saludo
      RETURN VARCHAR2;

END pkg_demo;
/

-- ==========================================
-- PACKAGE BODY
-- ==========================================

CREATE OR REPLACE PACKAGE BODY pkg_demo AS

   PROCEDURE sp_saludo
   IS
   BEGIN
      DBMS_OUTPUT.PUT_LINE('Hola desde Package');
   END sp_saludo;

   FUNCTION fn_saludo
      RETURN VARCHAR2
   IS
   BEGIN
      RETURN 'Hola desde Function';
   END fn_saludo;

END pkg_demo;
/

-- ==========================================
-- PRUEBAS
-- ==========================================

BEGIN

   pkg_demo.sp_saludo;

   DBMS_OUTPUT.PUT_LINE(
      pkg_demo.fn_saludo
   );

   DBMS_OUTPUT.PUT_LINE(
      pkg_demo.c_empresa
   );

END;
/
