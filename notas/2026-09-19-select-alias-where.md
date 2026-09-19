# 2026-09-19 · SELECT, Alias e WHERE

Sessão de prática no SQL Server (SSMS 22), banco `Supermercado3`.
Desafios 001 a 036 dos 200 Desafios SQL na Prática.

## O que ficou

**Alias**
- `AS` renomeia a coluna no resultado. É opcional, mas deixa claro o que é apelido.
- Nome com espaço: aspas duplas `"Valor da Venda"` ou colchetes `[Valor da Venda]`.
- Aspas simples são para texto, nunca para alias.
- Evitar acento em alias sem aspas: quebra quando o dado sai para Power BI, Excel ou Python.

**WHERE**
- `SELECT` escolhe colunas. `WHERE` escolhe linhas.
- Número sem aspas. Texto e data com aspas simples.
- Decimal com ponto: `9.90`, nunca `9,90` nem `R$ 9,90`.
- `BETWEEN` inclui os dois extremos.
- `IN (...)` substitui vários `OR`.
- Data no formato `'AAAA-MM-DD'`.

## Onde travei e o que resolveu

| Desafio | Erro | Lição |
|---|---|---|
| 031 | Trouxe `id_cliente` no lugar de `id_venda` | A query roda e responde outra pergunta. Conferir coluna por coluna contra o pedido. |
| 034 | Intervalo terminando em `'2025-03-01'` | Perdeu 13 clientes. Mês fecha no último dia: `'2025-03-31'`. |
| 035 | Tentei JOIN sem `ON` e WHERE no nome da tabela | Na Missão 2 a técnica é filtrar pelo ID. JOIN precisa de `ON` e alias de tabela resolve coluna ambígua. |
| 035 | `IN ('1','2','3')` | Número vai sem aspas. Aspas forçam conversão escondida. |

## Regra que vale para sempre

Resultado vazio pode ser a resposta certa. Resultado cheio pode estar errado.
O erro mais perigoso é a query que roda e responde a pergunta errada.
