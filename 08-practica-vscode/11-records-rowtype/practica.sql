-- =====================================================
-- MODULO
-- 11 - RECORDS Y %ROWTYPE
--
-- OBJETIVO
-- Practicar RECORD y %ROWTYPE.
--
-- AUTOR
-- Luis Ferrioli
-- =====================================================

SET SERVEROUTPUT ON;

-- ==========================================
-- Ejercicio 1 - RECORD simple
-- ==========================================

DECLARE

   TYPE t_persona IS RECORD (
      nombre   VARCHAR2(100),
      apellido VARCHAR2(100),
      edad     NUMBER
   );

   r_persona t_persona;

BEGIN

   r_persona.nombre   := 'Luis';
   r_persona.apellido := 'Ferrioli';
   r_persona.edad     := 35;

   DBMS_OUTPUT.PUT_LINE(
      r_persona.nombre || ' ' ||
      r_persona.apellido || ' - ' ||
      r_persona.edad
   );

END;
/

-- ==========================================
-- Ejercicio 2 - RECORD producto
-- ==========================================

DECLARE

   TYPE t_producto IS RECORD (
      codigo      NUMBER,
      descripcion VARCHAR2(100),
      precio      NUMBER
   );

   r_producto t_producto;

BEGIN

   r_producto.codigo      := 1;
   r_producto.descripcion := 'Notebook';
   r_producto.precio      := 1500;

   DBMS_OUTPUT.PUT_LINE(
      r_producto.descripcion || ' - $' ||
      r_producto.precio
   );

END;
/

-- ==========================================
-- Ejercicio 3 - USER_TABLES%ROWTYPE
-- ==========================================

DECLARE

   r_tabla USER_TABLES%ROWTYPE;

BEGIN

   SELECT *
   INTO r_tabla
   FROM USER_TABLES
   WHERE ROWNUM = 1;

   DBMS_OUTPUT.PUT_LINE(
      'Tabla: ' || r_tabla.table_name
   );

END;
/

-- ==========================================
-- Ejercicio 4 - USER_OBJECTS%ROWTYPE
-- ==========================================

DECLARE

   r_objeto USER_OBJECTS%ROWTYPE;

BEGIN

   SELECT *
   INTO r_objeto
   FROM USER_OBJECTS
   WHERE ROWNUM = 1;

   DBMS_OUTPUT.PUT_LINE(
      'Objeto: ' || r_objeto.object_name
   );

   DBMS_OUTPUT.PUT_LINE(
      'Tipo: ' || r_objeto.object_type
   );

END;
/

-- ==========================================
-- Ejercicio 5 - Tabla real del proyecto
-- ==========================================

DECLARE

   r_policy POLICY%ROWTYPE;

BEGIN

   SELECT *
   INTO r_policy
   FROM POLICY
   WHERE POLICY_ID = 100000004457;

   DBMS_OUTPUT.PUT_LINE(
      'Policy ID: ' || r_policy.policy_id
   );

   DBMS_OUTPUT.PUT_LINE(
      'Policy No: ' || r_policy.policy_no
   );

EXCEPTION

   WHEN NO_DATA_FOUND THEN

      DBMS_OUTPUT.PUT_LINE(
         'Policy no encontrada'
      );

END;
/
