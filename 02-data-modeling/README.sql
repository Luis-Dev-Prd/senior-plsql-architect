# 02 - Data Modeling

## Objetivo

Aprender a diseñar, analizar y entender modelos de datos Oracle desde una visión técnica y funcional.

Un Arquitecto PL/SQL no sólo escribe consultas: entiende entidades, relaciones, cardinalidades, claves, integridad y evolución del modelo.

---

# Temas

## 01 - Entidades

Qué representa cada tabla dentro del negocio.

Ejemplo:

- POLICY
- BLC_DOCUMENTS
- COBRANZA_MDM_RECIBOS

---

## 02 - Relaciones

Cómo se conectan las tablas entre sí.

Ejemplo:

```text
POLICY
   |
   | 1 a N
   |
BLC_DOCUMENTS
