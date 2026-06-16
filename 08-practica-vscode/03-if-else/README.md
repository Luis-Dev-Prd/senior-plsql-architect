# 03 - IF ELSE

## Objetivo

Aprender a controlar el flujo de ejecución en PL/SQL.

---

# Sintaxis

## IF

```plsql
IF condicion THEN
   ...
END IF;
```

## IF ELSE

```plsql
IF condicion THEN
   ...
ELSE
   ...
END IF;
```

## IF ELSIF

```plsql
IF condicion1 THEN
   ...
ELSIF condicion2 THEN
   ...
ELSE
   ...
END IF;
```

---

# Casos de uso

- Validaciones
- Reglas de negocio
- Procesamiento condicional
- Control de estados

---

# Buenas Prácticas

- Evitar IF anidados innecesarios.
- Mantener condiciones legibles.
- Utilizar nombres descriptivos.

---

# Checklist Senior

- Diferencia entre IF y CASE.
- Cuándo usar ELSIF.
- Cómo reducir complejidad ciclomática.
