# 04 - Loops PL/SQL

## Objetivo

Aprender estructuras repetitivas en PL/SQL.

---

# Tipos de Loops

## LOOP básico

```plsql
LOOP
   EXIT WHEN condicion;
END LOOP;

WHILE condicion LOOP
   ...
END LOOP;

FOR i IN 1..10 LOOP
   ...
END LOOP;
