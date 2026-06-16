# 04 - Arquitectura Oracle

## Objetivo

Comprender cómo funciona Oracle Database internamente.

Un Arquitecto Oracle debe entender qué ocurre detrás de cada SELECT, INSERT, UPDATE y COMMIT.

---

# Temas

## 01 - Transactions

BEGIN

COMMIT

ROLLBACK

---

## 02 - Concurrency

Múltiples usuarios trabajando simultáneamente.

---

## 03 - Locking

Bloqueos Oracle.

Tipos de locks.

---

## 04 - Read Consistency

Cómo Oracle garantiza lecturas consistentes.

---

## 05 - Undo

Información utilizada para rollback y consistencia.

---

## 06 - Redo

Información utilizada para recuperación.

---

## 07 - Oracle Processes

Procesos internos.

Ejemplo:

- DBWR
- LGWR
- SMON
- PMON

---

## 08 - Memory Architecture

SGA

PGA

Shared Pool

Buffer Cache

---

## 09 - Wait Events

Identificación de cuellos de botella.

---

## 10 - Troubleshooting

Análisis de problemas reales.

---

# Preguntas de Arquitecto

Debo poder responder:

- ¿Qué ocurre cuando ejecuto COMMIT?
- ¿Qué ocurre cuando ejecuto ROLLBACK?
- ¿Qué es UNDO?
- ¿Qué es REDO?
- ¿Qué ocurre cuando dos usuarios actualizan la misma fila?
- ¿Qué es un lock?
- ¿Qué es la consistencia de lectura?
- ¿Qué función cumple LGWR?
- ¿Qué función cumple DBWR?
