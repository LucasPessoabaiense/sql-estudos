# 05 - Window Functions

Calcular algo sobre um conjunto de linhas sem colapsar as linhas. É a diferença entre GROUP BY e OVER.

## As que uso mais

| Função | Para que serve |
|---|---|
| ROW_NUMBER | Numerar linhas dentro de um grupo |
| RANK e DENSE_RANK | Ranquear, tratando empate de formas diferentes |
| LAG e LEAD | Comparar a linha com a anterior ou a seguinte |
| SUM OVER | Total acumulado |

## O que pratico aqui

- PARTITION BY: definir o grupo dentro do qual a conta acontece
- ORDER BY dentro do OVER: ordem que a função enxerga
- Pegar o último registro de cada cliente sem subconsulta
- Variação mês a mês com LAG

## Por que isso importa

Aqui separa quem escreve consulta de quem analisa dado. Crescimento, ranking e acumulado são perguntas de negócio que caem direto nessas funções.

