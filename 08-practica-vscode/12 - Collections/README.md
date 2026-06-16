# 12 - Collections

## Objetivo

Aprender a almacenar múltiples valores en memoria utilizando estructuras de datos PL/SQL.

Las Collections son fundamentales para Bulk Collect y FORALL.

---

# ¿Qué es una Collection?

Una Collection es una estructura que permite almacenar múltiples elementos en memoria.

---

# Tipos de Collections

## Associative Array

```plsql
TYPE t_nombres IS TABLE OF VARCHAR2(100)
INDEX BY PLS_INTEGER;
```

---

## Nested Table

```plsql
TYPE t_nombres IS TABLE OF VARCHAR2(100);
```

---

## VARRAY

```plsql
TYPE t_nombres IS VARRAY(10)
OF VARCHAR2(100);
```

---

# Casos de Uso

- Carga masiva de datos.
- Procesamiento en memoria.
- Intercambio de información entre procedimientos.

---

# Riesgos

- Consumo excesivo de memoria.
- Collections demasiado grandes.

---

# Buenas Prácticas

- Limitar volumen.
- Liberar memoria cuando corresponda.
- Utilizar Bulk Collect cuando aplique.

---

# Checklist Senior

- ¿Qué es una Collection?
- ¿Qué diferencia existe entre Associative Array y Nested Table?
- ¿Qué es un VARRAY?
- ¿Cuándo utilizar Collections?
