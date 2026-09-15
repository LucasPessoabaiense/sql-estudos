# 03 - Agregações e GROUP BY

Agregar é transformar muitas linhas em um número: total, média, contagem.

## Funções que uso mais

- COUNT: quantas linhas
- SUM: soma
- AVG: média
- MIN e MAX: extremos

## O que pratico aqui

- GROUP BY: escolher a granularidade certa da resposta
- HAVING: filtrar depois de agregar, diferente do WHERE que filtra antes
- Agregação com join sem inflar o resultado

## A diferença que mais confunde

WHERE filtra linha, HAVING filtra grupo. Se o filtro usa uma função de agregação, ele vai no HAVING.

