# 01 - Bloques Anónimos PL/SQL

## Objetivo

Aprender la estructura fundamental de PL/SQL.

Todo código PL/SQL se construye a partir de estos conceptos.

---

# Estructura General

```plsql
DECLARE
   -- Variables
BEGIN
   -- Lógica
EXCEPTION
   -- Manejo de errores
END;
/
```

---

# Componentes

## DECLARE

Se utiliza para declarar:

- Variables
- Constantes
- Cursores
- Tipos
- Collections

Ejemplo:

```plsql
DECLARE
   v_nombre VARCHAR2(50);
```

---

## BEGIN

Contiene la lógica ejecutable.

Ejemplo:

```plsql
BEGIN
   DBMS_OUTPUT.PUT_LINE('Hola Mundo');
END;
/
```

---

## EXCEPTION

Permite capturar errores.

Ejemplo:

```plsql
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE(SQLERRM);
```

---

# Ejemplo Completo

```plsql
DECLARE
   v_nombre VARCHAR2(50) := 'Luis';
BEGIN
   DBMS_OUTPUT.PUT_LINE('Hola ' || v_nombre);
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
```

---

# Conceptos Importantes

## Scope

Las variables declaradas dentro del bloque sólo existen dentro del bloque.

## Lifetime

La variable se destruye al finalizar la ejecución.

## Asignación

PL/SQL utiliza:

```plsql
:=
```

Ejemplo:

```plsql
v_nombre := 'Luis';
```

No utiliza:

```plsql
=
```

para asignar valores.

---

# Errores Comunes

## Error 1

Olvidar el "/"

```plsql
END;
/
```

## Error 2

Usar "=" para asignar.

Incorrecto:

```plsql
v_nombre = 'Luis';
```

Correcto:

```plsql
v_nombre := 'Luis';
```

## Error 3

No habilitar DBMS_OUTPUT.

---

# Ejercicios

## Ejercicio 1

Imprimir tu nombre.

## Ejercicio 2

Declarar dos variables y mostrar ambas.

## Ejercicio 3

Mostrar la fecha actual utilizando:

```plsql
SYSDATE
```

---

# Checklist Senior

Debo poder responder:

- ¿Qué es un bloque anónimo?
- ¿Qué es DECLARE?
- ¿Qué es BEGIN?
- ¿Qué es EXCEPTION?
- ¿Qué significa := ?
- ¿Cuál es el scope de una variable?
- ¿Cuál es el lifetime de una variable?
- ¿Cuándo usaría una Procedure en lugar de un bloque anónimo?
