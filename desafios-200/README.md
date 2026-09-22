# Desafios 200

Resoluções do curso **200 Desafios SQL Super Prática**, de Reginaldo Junior.

Banco usado: **SQL Server** (SSMS 22), base `Supermercado3`. O curso também tem versão para PostgreSQL, MySQL e Oracle; onde a sintaxe muda, eu anoto.

## Progresso

| Missão | Tema | Desafios | Status |
|---|---|---|---|
| 1 | SELECT e alias | 001 a 025 | ✅ Concluída |
| 2 | WHERE, LIKE, BETWEEN, IN, AND, OR | 026 a 055 | ✅ Concluída |
| 3 | ORDER BY, TOP e DISTINCT | 056 a 085 | ✅ Concluída |
| 4 | SUM, COUNT, AVG, MIN e MAX | 086 a ... | 🔄 em andamento |
| 5 | GROUP BY e HAVING | | ⏳ |
| 6 | JOINs | | ⏳ |
| 7 | Subqueries, UNION e CTE | | ⏳ |

## Como organizo

Um arquivo por desafio, em blocos de dez:

```
desafios-200/
├── 001-010/
├── 011-020/
└── ...
```

## Formato de cada arquivo

```sql
-- Desafio 034
-- Pergunta: clientes cadastrados no 1º trimestre de 2025
-- Conceito: WHERE com BETWEEN em datas
-- Resultado: 44 linhas
-- Onde travei: terminei o intervalo em '2025-03-01' e perdi 13 clientes

SELECT ...
```

Se eu travei num desafio, escrevo no comentário onde travei e o que resolveu. Daqui a seis meses vou esquecer, e o comentário é pro Lucas do futuro.
