-- 1
  SELECT CD_PROJETO, NM_PROJETO, DT_INICIO, DT_TERMINO "FINALIZADO EM"
    FROM T_SIP_PROJETO
   WHERE DT_TERMINO > TO_DATE('01/08/2018', 'DD/MM/YYYY')
ORDER BY DT_TERMINO DESC;

-- 2 
  SELECT CD_PROJETO, NM_PROJETO, DT_INICIO "INICIADO EM", DT_TERMINO
    FROM T_SIP_PROJETO
   WHERE DT_TERMINO IS NULL AND
         DT_INICIO > TO_DATE('01/05/2015', 'DD/MM/YYYY')
ORDER BY DT_INICIO ASC;

-- 3
  SELECT CD_IMPLANTACAO, CD_PROJETO, NR_MATRICULA, DT_ENTRADA, DT_SAIDA
    FROM T_SIP_IMPLANTACAO
   WHERE DT_SAIDA IS NULL
ORDER BY CD_IMPLANTACAO ASC, CD_PROJETO ASC, NR_MATRICULA ASC, DT_ENTRADA ASC; 

-- 4
SELECT CD_IMPLANTACAO, CD_PROJETO, NR_MATRICULA, DT_ENTRADA "iN�CIO EM", DT_SAIDA "CONCLUS�O"
    FROM T_SIP_IMPLANTACAO
   WHERE DT_SAIDA IS NOT NULL 
ORDER BY CD_PROJETO ASC, NR_MATRICULA ASC, DT_SAIDA DESC; 

-- 5
SELECT DISTINCT NR_MATRICULA "FUNCIONARIO"
    FROM T_SIP_IMPLANTACAO
ORDER BY NR_MATRICULA ASC; 

-- 6
SELECT DISTINCT CD_CLIENTE "CLIENTE"
           FROM T_SPV_NOTA_FISCAL
       ORDER BY CD_CLIENTE;

-- 7
SELECT DISTINCT CD_CLIENTE "CLIENTE", DT_EMISSAO, NR_NF, VL_TOTAL_NF
           FROM T_SPV_NOTA_FISCAL
          WHERE CD_CLIENTE = 1 AND DT_EMISSAO > TO_DATE('15/08/2014', 'DD/MM/YYYY')
       ORDER BY DT_EMISSAO;

-- 8
      SELECT NR_NF, DT_EMISSAO, VL_TOTAL_NF, VL_DESCONTO
        FROM T_SPV_NOTA_FISCAL
       WHERE DT_EMISSAO BETWEEN TO_DATE('01/08/2019','DD/MM/YYYY') AND TO_DATE('31/08/2019','DD/MM/YYYY') AND VL_DESCONTO = 0
    ORDER BY DT_EMISSAO DESC;
    
-- 9
      SELECT NR_NF, DT_EMISSAO, VL_TOTAL_NF, VL_DESCONTO
        FROM T_SPV_NOTA_FISCAL
       WHERE VL_DESCONTO > 0
    ORDER BY VL_DESCONTO DESC;
    
-- 10
      SELECT NR_NF, DT_EMISSAO, VL_TOTAL_NF, VL_DESCONTO "% DESCONTO", VL_TOTAL_NF * (VL_DESCONTO / 100) "VALOR DO DESCONTO"
        FROM T_SPV_NOTA_FISCAL
       WHERE TO_CHAR(DT_EMISSAO, 'YYYY') IN ('2019') AND VL_TOTAL_NF > 1000
    ORDER BY "VALOR DO DESCONTO" DESC;
    
-- 11
      SELECT NR_NF, CD_PRODUTO, QT_COMERCIALIZADA, VL_PRECO_UNITARIO, QT_COMERCIALIZADA * VL_PRECO_UNITARIO "VALOR DO ITEM"
        FROM T_SPV_ITENS_NF
       WHERE NR_NF = 1235;

-- 12
      SELECT NR_NF, DT_EMISSAO, VL_TOTAL_NF, VL_DESCONTO 
        FROM T_SPV_NOTA_FISCAL
       WHERE TO_CHAR(DT_EMISSAO, 'YYYY') IN ('2019', '2020') AND VL_TOTAL_NF < 900
    ORDER BY DT_EMISSAO DESC;
    
-- 13
    SELECT NR_NF, DT_EMISSAO, VL_TOTAL_NF
        FROM T_SPV_NOTA_FISCAL
       WHERE TO_CHAR(DT_EMISSAO, 'D') IN ('6', '7') 
    ORDER BY DT_EMISSAO DESC;

-- 14
    SELECT CD_PRODUTO, DS_PRODUTO, QT_ESTOQUE, VL_PRECO_UNITARIO, QT_ESTOQUE * VL_PRECO_UNITARIO "VALOR ESTOQUE PRODUTO"
      FROM T_SPV_PRODUTO
  ORDER BY "VALOR ESTOQUE PRODUTO" DESC;

-- 15
SELECT 'O PRODUTO ' || CD_PRODUTO || '-' || DS_PRODUTO || ', POSSUI NO ESTOQUE ' || QT_ESTOQUE || ' UNIDADES' "Estoque de Produtos"
    FROM T_SPV_PRODUTO
ORDER BY QT_ESTOQUE DESC;

-- 16
SELECT DT_EMISSAO ||
        ' A NOTA FISCAL FOI EMITIDA H� (' ||
         ROUND(TO_CHAR (SYSDATE - DT_EMISSAO)) ||
         ') DIAS' "Tempo de Emiss�o"
FROM T_SPV_NOTA_FISCAL
ORDER BY "Tempo de Emiss�o" ASC;

-- 17
SELECT ROWNUM AS RANK, NR_NF "NR. NOTA FISCAL", "NOME DO CLIENTE", VL_TOTAL_NF "VALOR TOTAL"
  FROM
        (SELECT NF.NR_NF , 
               (SELECT NM_CLIENTE FROM T_SPV_CLIENTE WHERE CD_CLIENTE = NF.CD_CLIENTE) "NOME DO CLIENTE", 
               NF.VL_TOTAL_NF
          FROM T_SPV_NOTA_FISCAL NF 
      ORDER BY VL_TOTAL_NF DESC)
 WHERE ROWNUM <= 3;






