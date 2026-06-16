-- =====================================================
-- DICCIONARIO ORACLE
-- Busqueda de piezas, objetos, tablas, vistas, columnas,
-- indices y codigo fuente PL/SQL.
-- =====================================================

-- 01 - Objetos del schema actual
SELECT object_name,
       object_type,
       status,
       created,
       last_ddl_time
FROM user_objects
ORDER BY object_type, object_name;

-- 02 - Buscar objetos por nombre
SELECT object_name,
       object_type,
       status,
       last_ddl_time
FROM user_objects
WHERE UPPER(object_name) LIKE UPPER('%HU12309%')
ORDER BY object_type, object_name;

-- 03 - Buscar objetos en otros schemas
SELECT owner,
       object_name,
       object_type,
       status,
       last_ddl_time
FROM all_objects
WHERE owner IN ('LUIS_DEV', 'CUST_COBRANZA', 'INSIS_GEN_V10')
AND UPPER(object_name) LIKE UPPER('%HU12309%')
ORDER BY owner, object_type, object_name;

-- 04 - Tablas del schema actual
SELECT table_name,
       num_rows,
       last_analyzed
FROM user_tables
ORDER BY table_name;

-- 05 - Columnas del schema actual
SELECT table_name,
       column_name,
       data_type,
       data_length,
       nullable,
       column_id
FROM user_tab_columns
WHERE UPPER(column_name) LIKE UPPER('%POLICY%')
ORDER BY table_name, column_id;

-- 06 - Columnas en otros schemas
SELECT owner,
       table_name,
       column_name,
       data_type,
       data_length,
       nullable,
       column_id
FROM all_tab_columns
WHERE owner IN ('LUIS_DEV', 'CUST_COBRANZA', 'INSIS_GEN_V10')
AND UPPER(column_name) LIKE UPPER('%POLICY%')
ORDER BY owner, table_name, column_id;

-- 07 - Vistas del schema actual
SELECT view_name
FROM user_views
WHERE UPPER(view_name) LIKE UPPER('%HU12309%')
ORDER BY view_name;

-- 08 - Vistas en otros schemas
SELECT owner,
       view_name
FROM all_views
WHERE owner IN ('LUIS_DEV', 'CUST_COBRANZA', 'INSIS_GEN_V10')
AND UPPER(view_name) LIKE UPPER('%HU12309%')
ORDER BY owner, view_name;

-- 09 - Codigo fuente PL/SQL del schema actual
SELECT name,
       type,
       line,
       text
FROM user_source
WHERE UPPER(text) LIKE UPPER('%HU12309%')
ORDER BY name, type, line;

-- 10 - Codigo fuente PL/SQL en otros schemas
SELECT owner,
       name,
       type,
       line,
       text
FROM all_source
WHERE owner IN ('LUIS_DEV', 'CUST_COBRANZA', 'INSIS_GEN_V10')
AND UPPER(text) LIKE UPPER('%HU12309%')
ORDER BY owner, name, type, line;

-- 11 - Indices de una tabla del schema actual
SELECT i.index_name,
       i.table_name,
       i.uniqueness,
       c.column_name,
       c.column_position
FROM user_indexes i
JOIN user_ind_columns c
  ON c.index_name = i.index_name
 AND c.table_name = i.table_name
WHERE i.table_name = UPPER('COBRANZA_MDM_RECIBOS')
ORDER BY i.index_name, c.column_position;

-- 12 - Indices en otros schemas
SELECT i.owner,
       i.index_name,
       i.table_name,
       i.uniqueness,
       c.column_name,
       c.column_position
FROM all_indexes i
JOIN all_ind_columns c
  ON c.index_owner = i.owner
 AND c.index_name  = i.index_name
 AND c.table_name  = i.table_name
WHERE i.owner IN ('LUIS_DEV', 'CUST_COBRANZA', 'INSIS_GEN_V10')
AND i.table_name = UPPER('COBRANZA_MDM_RECIBOS')
ORDER BY i.owner, i.index_name, c.column_position;

-- 13 - Objetos invalidos
SELECT object_name,
       object_type,
       status
FROM user_objects
WHERE status <> 'VALID'
ORDER BY object_type, object_name;

-- 14 - Objetos invalidos en otros schemas
SELECT owner,
       object_name,
       object_type,
       status
FROM all_objects
WHERE owner IN ('LUIS_DEV', 'CUST_COBRANZA', 'INSIS_GEN_V10')
AND status <> 'VALID'
ORDER BY owner, object_type, object_name;
