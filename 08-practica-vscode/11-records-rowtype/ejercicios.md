# Ejercicios - Records y %ROWTYPE

## Ejercicio 01

Crear un RECORD llamado:

t_persona

Campos:

- nombre
- apellido
- edad

Asignar valores y mostrarlos.

---

## Ejercicio 02

Crear un RECORD llamado:

t_producto

Campos:

- codigo
- descripcion
- precio

Mostrar todos los valores.

---

## Ejercicio 03

Utilizar %ROWTYPE sobre una tabla real.

Ejemplo:

```plsql
policy%ROWTYPE
```

o cualquier tabla disponible.

---

## Ejercicio 04

Consultar una fila utilizando:

```plsql
SELECT *
INTO registro
```

y mostrar algunos campos.

---

## Ejercicio 05

Comparar:

Variables individuales

vs

%ROWTYPE

Analizar ventajas y desventajas.

---

## Ejercicio 06

Utilizar USER_TABLES%ROWTYPE.

Consultar una tabla y mostrar:

- TABLE_NAME

---

# Checklist Senior

Debo poder responder:

- ¿Qué es un RECORD?
- ¿Qué es %ROWTYPE?
- ¿Qué diferencia existe entre ambos?
- ¿Qué ventajas tiene %ROWTYPE?
- ¿Qué riesgos tiene SELECT *?
- ¿Cuándo conviene usar variables individuales?
