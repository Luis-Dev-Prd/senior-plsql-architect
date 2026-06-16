# 14 - FORALL

## Objetivo

Aprender a realizar operaciones masivas utilizando FORALL.

FORALL es una de las herramientas más importantes para optimización PL/SQL.

---

# Problema

Insertar o actualizar registros fila por fila genera muchos cambios de contexto.

---

# Solución

FORALL permite ejecutar operaciones DML masivas.

---

# Sintaxis

```plsql
FORALL i IN 1 .. v_datos.COUNT

   INSERT INTO tabla (...)
   VALUES (...);
```

---

# Operaciones Soportadas

- INSERT
- UPDATE
- DELETE

---

# Ventajas

- Menos cambios de contexto.
- Mejor performance.
- Escalabilidad.

---

# Riesgos

- Errores masivos.
- Consumo de memoria.
- Dificultad para debugging.

---

# Buenas Prácticas

- Utilizar junto con BULK COLLECT.
- Medir performance.
- Utilizar SAVE EXCEPTIONS cuando corresponda.

---

# Checklist Senior

- ¿Qué es FORALL?
- ¿Qué problema resuelve?
- ¿Qué diferencia existe con FOR LOOP?
- ¿Qué es SAVE EXCEPTIONS?
- ¿Cuándo NO utilizar FORALL?
