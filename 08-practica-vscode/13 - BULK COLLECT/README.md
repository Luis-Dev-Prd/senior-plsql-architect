# 13 - BULK COLLECT

## Objetivo

Aprender a cargar múltiples registros en memoria utilizando BULK COLLECT.

BULK COLLECT es una de las técnicas más importantes de optimización PL/SQL.

---

# Problema

Procesar registros fila por fila genera múltiples cambios de contexto entre SQL y PL/SQL.

---

# Solución

Utilizar BULK COLLECT para cargar conjuntos completos de datos.

---

# Ejemplo

```plsql
SELECT table_name
BULK COLLECT INTO v_tablas
FROM user_tables;
```

---

# Ventajas

- Menos cambios de contexto.
- Mejor performance.
- Menor tiempo de ejecución.

---

# Riesgos

- Consumo elevado de memoria.
- Cargas masivas demasiado grandes.

---

# Buenas Prácticas

- Utilizar LIMIT cuando corresponda.
- Controlar volumen de datos.
- Medir performance.

---

# Checklist Senior

- ¿Qué es BULK COLLECT?
- ¿Qué problema resuelve?
- ¿Qué riesgos tiene?
- ¿Cuándo utilizar LIMIT?
- ¿Qué diferencia existe con un cursor tradicional?
