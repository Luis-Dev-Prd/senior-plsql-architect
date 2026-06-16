# Ejercicios - SELECT INTO

## Ejercicio 01

Obtener la fecha actual utilizando:

```plsql
SELECT SYSDATE
INTO v_fecha
FROM DUAL;
```

Mostrar el resultado.

---

## Ejercicio 02

Obtener el nombre de la base de datos utilizando:

```plsql
SELECT NAME
INTO v_db_name
FROM V$DATABASE;
```

Mostrar el resultado.

---

## Ejercicio 03

Consultar la cantidad de tablas de tu schema.

Utilizar:

```plsql
COUNT(*)
```

Guardar el resultado en una variable.

---

## Ejercicio 04

Consultar la cantidad de objetos del schema.

Mostrar:

```text
Cantidad de objetos: XXXX
```

---

## Ejercicio 05

Utilizar una tabla real.

Ejemplo:

```plsql
POLICY
```

o cualquier tabla disponible.

Obtener:

- POLICY_ID
- POLICY_NO

mediante SELECT INTO.

---

## Ejercicio 06

Provocar intencionalmente:

```text
NO_DATA_FOUND
```

y capturarlo en EXCEPTION.

---

## Ejercicio 07

Provocar intencionalmente:

```text
TOO_MANY_ROWS
```

y capturarlo en EXCEPTION.

---

## Ejercicio 08

Utilizar:

```plsql
SELECT COUNT(*)
```

para validar si existe información antes de ejecutar un SELECT INTO.

---

# Checklist Senior

Debo poder responder:

- ¿Cuándo usar SELECT INTO?
- ¿Qué excepción genera 0 filas?
- ¿Qué excepción genera más de una fila?
- ¿Qué ventajas tiene frente a un cursor?
- ¿Qué riesgos de performance existen?
- ¿Cómo validarías que la consulta devuelve una sola fila?
