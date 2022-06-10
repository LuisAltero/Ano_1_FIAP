-- LISTA DE EXERCICIOS 09 - FUNCOES DE GRUPO

/*
1.) Escreva e execute a instrução SQL, para:
Recuperar o valor total em estoque.
Mostrar: A somatória do valor total em estoque, utilize o apelido “VALOR TOTAL ESTOQUE”.
Cálculo do valor em estoque de cada produto: Qtde. Estoque * Preço Unitário.
Utilize a função de grupo SUM().
*/
    SELECT SUM(P.QT_ESTOQUE * P.VL_PRECO_UNITARIO) "VALOR TOTAL ESTOQUE" 
      FROM T_SPV_PRODUTO P; 

/*
3.) Escreva e execute a instrução SQL, para:
Recuperar a nota fiscal de menor valor.
Mostrar: a nota fiscal de maior valor, utilize o apelido “NR de Menor Valor”.
Utilize a função de grupo MIN().
*/
    SELECT MAX(N.VL_TOTAL_NF) "NR DE MAIOR VALOR"
      FROM T_SPV_NOTA_FISCAL N;

/*
Escreva e execute a instrução SQL, para:
Recuperar a nota fiscal de menor valor.
Mostrar: a nota fiscal de maior valor, utilize o apelido “NR de Menor Valor”.
Utilize a função de grupo MIN().
*/
    SELECT MIN(N.VL_TOTAL_NF) "NR DE MENOR VALOR"
      FROM T_SPV_NOTA_FISCAL N;

/*
4.) Escreva e execute a instrução SQL, para:
Recuperar a média de percentuais de desconto aplicados as notas fiscais.
Mostrar: o percentual médio de desconto, utilize o apelido “Valor Médio de Desconto”.
Utilize a função de grupo AVG().
*/
    SELECT AVG(N.VL_DESCONTO) "VALOR MÉDIO DE DESCONTO"
      FROM T_SPV_NOTA_FISCAL N;

/*
5.) Escreva e execute a instrução SQL, para:
Recuperar o valor médio das vendas (a partir do valor total das notas fiscais).
Mostrar: o valor médio das vendas, utilize o apelido “Valor Médio das Vendas”.
Utilize a função de grupo AVG().
*/
    SELECT AVG(N.VL_TOTAL_NF) "VALOR MÉDIO DAS VENDAS"
      FROM T_SPV_NOTA_FISCAL N;

/*
6.) Escreva e execute a instrução SQL, para:
Recuperar a quantidade de notas fiscais por cliente.
Mostrar: o total de notas fiscais adquiridas por cada cliente.
Utilize os apelidos:
• CÓDIGO DO CLIENTE "COD.CLIENTE"
• NOME DO CLIENTE "CLIENTE"
• CONTAGEM DE NOTAS FISCAIS "QTDE. NOTA FISCAL POR CLIENTE"
Utilize a função de grupo COUNT().
Crie os agrupamentos por cliente.
*/
SELECT F.CD_CLIENTE "COD.CLIENTE",
       C.NM_CLIENTE "CLIENTE",
       COUNT(F.NR_NF) "QTDE.NOTA FISCAL POR CLIENTE "
  FROM T_SPV_CLIENTE C INNER JOIN T_SPV_NOTA_FISCAL F
       ON(C.CD_CLIENTE = F.CD_CLIENTE)
GROUP BY F.CD_CLIENTE, C.NM_CLIENTE;


