# 02 - Variables PL/SQL

## Objetivo

Comprender cómo Oracle almacena, tipa y administra variables dentro de un bloque PL/SQL.

Las variables son uno de los conceptos más importantes del lenguaje y aparecen en Procedures, Functions, Packages, Triggers y Jobs.

---

# Tipos Básicos

## NUMBER

```plsql
DECLARE
   v_edad NUMBER;
BEGIN
   NULL;
END;
/
```

---

## VARCHAR2

```plsql
DECLARE
   v_nombre VARCHAR2(100);
BEGIN
   NULL;
END;
/
```

---

## DATE

```plsql
DECLARE
   v_fecha DATE;
BEGIN
   NULL;
END;
/
```

---

## TIMESTAMP

```plsql
DECLARE
   v_fecha_hora TIMESTAMP;
BEGIN
   NULL;
END;
/
```

---

## BOOLEAN

```plsql
DECLARE
   v_existe BOOLEAN;
BEGIN
   NULL;
END;
/
```

---

# Inicialización

```plsql
DECLARE
   v_nombre VARCHAR2(100) := 'Luis';
BEGIN
   NULL;
END;
/
```

---

# CONSTANT

```plsql
DECLARE
   c_empresa CONSTANT VARCHAR2(50) := 'SURA';
BEGIN
   NULL;
END;
/
```

Una constante no puede modificarse durante la ejecución.

---

# %TYPE

Ejemplo:

```plsql
DECLARE
   v_policy_id POLICY.POLICY_ID%TYPE;
BEGIN
   NULL;
END;
/
```

Ventaja:

Si cambia el tipo de dato de la columna, la variable se adapta automáticamente.

---

# %ROWTYPE

Ejemplo:

```plsql
DECLARE
   r_policy POLICY%ROWTYPE;
BEGIN
   NULL;
END;
/
```

Permite trabajar con una fila completa.

---

# Scope

Las variables sólo existen dentro del bloque donde fueron declaradas.

---

# Lifetime

La variable nace al iniciar el bloque y desaparece cuando finaliza.

---

# Buenas Prácticas

- Utilizar nombres descriptivos.
- Preferir %TYPE cuando exista una columna de referencia.
- Evitar tamaños hardcodeados.
- Mantener scope reducido.

---

# Checklist Senior

Debo poder responder:

- ¿Qué diferencia existe entre NUMBER y VARCHAR2?
- ¿Qué diferencia existe entre DATE y TIMESTAMP?
- ¿Qué es una CONSTANT?
- ¿Qué es %TYPE?
- ¿Qué es %ROWTYPE?
- ¿Qué es el Scope?
- ¿Qué es el Lifetime?
- ¿Cuándo conviene usar %TYPE?
