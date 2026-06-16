# 11 - Records y %ROWTYPE

## Objetivo

Aprender a trabajar con registros completos utilizando RECORD y %ROWTYPE.

---

# RECORD

Permite agrupar múltiples campos.

Ejemplo:

```plsql
TYPE t_persona IS RECORD (
   nombre   VARCHAR2(100),
   edad     NUMBER
);
```

---

# %ROWTYPE

Permite representar una fila completa de una tabla.

Ejemplo:

```plsql
DECLARE
   r_policy policy%ROWTYPE;
BEGIN
   ...
END;
/
```

---

# Ventajas

- Menos código.
- Menor mantenimiento.
- Adaptación automática a cambios del modelo.

---

# Riesgos

- Uso excesivo de SELECT *.
- Consumo innecesario de memoria.

---

# Checklist Senior

- ¿Qué diferencia existe entre RECORD y %ROWTYPE?
- ¿Cuándo utilizar cada uno?
- ¿Qué ventajas tiene sobre variables individuales?
