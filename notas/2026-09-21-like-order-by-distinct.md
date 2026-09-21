# 2026-09-21 · LIKE, lógica no WHERE, ORDER BY e DISTINCT

Sessão de prática no SQL Server (SSMS 22), banco `Supermercado3`.
Desafios 037 a 065. Missão 2 concluída, Missão 3 até o 065.

## O que ficou

**LIKE**
- Só dois caracteres são especiais: `%` (qualquer quantidade de caracteres) e `_` (exatamente um).
- Todo o resto dentro das aspas é texto procurado ao pé da letra.
- `'%Coca%'` contém, `'A%'` começa com, `'%kg'` termina com.

**Lógica no WHERE**
- `AND` exige as duas condições; `OR` basta uma.
- `NOT IN (...)` é o contrário de `IN (...)`.
- Traduzir o negócio para condição é metade do trabalho: "possui estoque disponível" vira `estoque > 0`.

**ORDER BY**
- `ASC` é crescente (padrão), `DESC` é decrescente.
- Funciona com número, texto e data. Com data, `DESC` traz o mais recente primeiro.
- Dá para ordenar por mais de uma coluna: `ORDER BY cargo ASC, salario DESC`.

**TOP**
- No SQL Server vem logo depois do `SELECT`: `SELECT TOP 20 ...`.
- Em PostgreSQL e MySQL, o equivalente é `LIMIT 20` no fim da consulta.
- `TOP` sem `ORDER BY` devolve linhas quaisquer. Ranking é a combinação dos dois.

**DISTINCT**
- Elimina repetições e mostra cada valor uma vez só.

**Ordem das cláusulas:** `SELECT` → `FROM` → `WHERE` → `ORDER BY`.
