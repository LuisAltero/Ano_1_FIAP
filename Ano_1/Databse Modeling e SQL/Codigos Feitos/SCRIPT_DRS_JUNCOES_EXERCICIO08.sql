/*
1.) Escreva e execute a instru��o SQL, para realizar a consulta nas tabelas FUNCION�RIO E
DEPENDENTE.
Liste todos os funcion�rios que possuam dependentes.
A lista deve ser apresentada de forma ordenada por nome do funcion�rio, em ordem
crescente e nome do dependente, em ordem crescente.
Mostrar: n�mero da matr�cula, nome do funcion�rio, nome do dependente e data de
nascimento do dependente.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de jun��o de tabelas.
*/

SELECT  F.NR_MATRICULA "MATRICULA", 
        F.NM_FUNCIONARIO "FUNCIONARIO",
        D.NM_DEPENDENTE "DEPENDENTE",
        D.DT_NASCIMENTO "NASCIDO EM"
    FROM T_SIP_FUNCIONARIO F INNER JOIN T_SIP_DEPENDENTE D
        ON (F.NR_MATRICULA = D.NR_MATRICULA)
ORDER BY F.NM_FUNCIONARIO ASC, D.NM_DEPENDENTE ASC;


/*
2.) Escreva e execute a instru��o SQL, para realizar a consulta nas tabelas DEPARTAMENTO,
FUNCION�RIO E DEPENDENTE.
Liste todos os funcion�rios que possuam dependentes.
A lista deve ser apresentada de forma ordenada por nome do funcion�rio, em ordem
crescente e nome do dependente, em ordem crescente.
Mostrar: n�mero da matr�cula, nome do funcion�rio, nome do departamento, nome do
dependente e data de nascimento do dependente.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de jun��o de tabelas.
*/

SELECT  F.NR_MATRICULA "MATRICULA", 
        F.NM_FUNCIONARIO "FUNCIONARIO",
        E.NM_DEPTO "NOME DEPARTAMENTO",
        D.NM_DEPENDENTE "DEPENDENTE",
        D.DT_NASCIMENTO "NASCIDO EM"
    FROM T_SIP_FUNCIONARIO F INNER JOIN T_SIP_DEPENDENTE D 
    ON (F.NR_MATRICULA = D.NR_MATRICULA)
    INNER JOIN T_SIP_DEPTO E 
    ON (F.CD_DEPTO = E.CD_DEPTO)
ORDER BY F.NM_FUNCIONARIO ASC, D.NM_DEPENDENTE ASC;


/*
3.) Escreva e execute a instru��o SQL, para realizar a consulta nas tabelas PROJETO,
IMPLANTACAO E FUNCIONARIO.
Liste todos os projetos que possuam implanta��es
A lista deve ser apresentada de forma ordenada por nome do projeto, em ordem crescente
e nome dos funcion�rios, em ordem crescente.
Mostrar: c�digo do projeto, nome do projeto, data de in�cio, c�digo da implanta��o, nome do
funcion�rio, data de entrada e data de sa�da do funcion�rio do projeto.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de jun��o de tabelas.
*/

    SELECT F.NM_FUNCIONARIO, P.CD_PROJETO, P.NM_PROJETO, P.DT_INICIO, I.CD_IMPLANTACAO, I.DT_ENTRADA, I.DT_SAIDA
      FROM T_SIP_FUNCIONARIO F INNER JOIN T_SIP_IMPLANTACAO I
      ON (F.NR_MATRICULA = I.NR_MATRICULA)
      INNER JOIN T_SIP_PROJETO P
      ON (P.CD_PROJETO = I.CD_PROJETO)
 ORDER BY P.NM_PROJETO ASC, F.NM_FUNCIONARIO ASC;


/*
4.) Escreva e execute a instru��o SQL, para realizar a consulta nas tabelas PROJETO,
IMPLANTACAO E FUNCIONARIO.
Liste todos os projetos que possuam implanta��es ainda n�o finalizadas.
A lista deve ser apresentada de forma ordenada por nome do projeto, em ordem crescente
e nome dos funcion�rios, em ordem crescente.
Mostrar: c�digo do projeto, nome do projeto, data de in�cio, c�digo da implanta��o, nome do
funcion�rio, data de entrada e data de sa�da do funcion�rio do projeto.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de jun��o de tabelas.
*/

    SELECT P.CD_PROJETO, P.NM_PROJETO, P.DT_INICIO, I.CD_IMPLANTACAO, F.NM_FUNCIONARIO, I.DT_ENTRADA, I.DT_SAIDA
          FROM T_SIP_PROJETO P INNER JOIN T_SIP_IMPLANTACAO I
          ON (P.CD_PROJETO = I.CD_PROJETO)
          INNER JOIN T_SIP_FUNCIONARIO F
          ON (F.NR_MATRICULA = I.NR_MATRICULA)
     WHERE I.DT_SAIDA IS NULL
  ORDER BY P.NM_PROJETO ASC, F.NM_FUNCIONARIO ASC;


/*
5.) Escreva e execute a instru��o SQL, para realizar a consulta nas tabelas FUNCIONARIO E
DEPENDENTE.
Liste todos os funcion�rios que n�o possuam dependentes (apenas os que n�o possuam
dependentes).
A lista deve ser apresentada de forma ordenada por nome do funcion�rio, em ordem
crescente.
Mostrar: n�mero de matr�cula, nome do funcion�rio e nome do dependente.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de jun��o de tabelas.
Utilize Left Outer Join.
*/
    SELECT F.NR_MATRICULA, F.NM_FUNCIONARIO, D.NM_DEPENDENTE
      FROM T_SIP_FUNCIONARIO F LEFT JOIN T_SIP_DEPENDENTE D
      ON (F.NR_MATRICULA = D.NR_MATRICULA)
     WHERE D.NR_MATRICULA IS NULL
  ORDER BY NM_FUNCIONARIO ASC;
  
  
/*   
6.) Escreva e execute a instru��o SQL, para realizar a consulta nas tabelas FUNCIONARIO E
IMPLANTACAO.
Liste todas as implanta��es associadas a funcion�rios (nota: n�o h� implanta��es sem
funcion�rios).
A lista deve ser apresentada de forma ordenada por nome do funcion�rio e c�digo da
implanta��o, em ordem crescente.
Mostrar: n�mero de matr�cula, nome do funcion�rio, c�digo da implanta��o e data de
entrada.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de jun��o de tabelas.
Utilize Right Outer Join.
*/


    SELECT F.NR_MATRICULA, F.NM_FUNCIONARIO, I.CD_IMPLANTACAO, I.DT_ENTRADA
      FROM T_SIP_FUNCIONARIO F RIGHT JOIN T_SIP_IMPLANTACAO I
        ON (F.NR_MATRICULA = I.NR_MATRICULA)
  ORDER BY NM_FUNCIONARIO ASC, CD_IMPLANTACAO ASC;
  

/*
7.) Escreva e execute a instru��o SQL, para realizar a consulta nas tabelas FUNCIONARIO E
IMPLANTACAO.
Liste todos os funcion�rios que participam ou n�o participam de implanta��es.
A lista deve ser apresentada de forma ordenada por nome do funcion�rio e c�digo da
implanta��o, em ordem crescente.
Mostrar: n�mero de matr�cula, nome do funcion�rio, c�digo da implanta��o e data de
entrada.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de jun��o de tabelas.
Utilize Left Outer Join.
*/
    SELECT F.NR_MATRICULA, F.NM_FUNCIONARIO, I.CD_IMPLANTACAO, I.DT_ENTRADA
      FROM T_SIP_FUNCIONARIO F LEFT JOIN T_SIP_IMPLANTACAO I
      ON (F.NR_MATRICULA = I.NR_MATRICULA)
  ORDER BY F.NM_FUNCIONARIO ASC, I.CD_IMPLANTACAO ASC;


/*
8.) Escreva e execute a instru��o SQL, para realizar a consulta nas tabelas FUNCIONARIO E
IMPLANTACAO.
Liste todos os funcion�rios que n�o participam de implanta��es.
A lista deve ser apresentada de forma ordenada por nome do funcion�rio e c�digo da
implanta��o, em ordem crescente.
Mostrar: n�mero de matr�cula, nome do funcion�rio, c�digo da implanta��o e data de
entrada.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de jun��o de tabelas.
Utilize Left Outer Join.
*/
    SELECT F.NR_MATRICULA, F.NM_FUNCIONARIO, I.CD_IMPLANTACAO, I.DT_ENTRADA
      FROM T_SIP_FUNCIONARIO F LEFT JOIN T_SIP_IMPLANTACAO I
      ON (F.NR_MATRICULA = I.NR_MATRICULA)
     WHERE I.NR_MATRICULA IS NULL
  ORDER BY NM_FUNCIONARIO ASC, CD_IMPLANTACAO ASC;


/*
9.) Escreva e execute a instru��o SQL, para realizar a consulta nas tabelas PROJETO E
IMPLANTACAO.
Liste todos os projetos que ainda n�o foram implantados.
A lista deve ser apresentada de forma ordenada por nome do projeto, em ordem crescente.
Mostrar: c�digo do projeto, nome do projeto, data de in�cio, data t�rmino e c�digo da
implanta��o.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de jun��o de tabelas.
Utilize Left Outer Join.
*/

    SELECT P.CD_PROJETO, P.NM_PROJETO, P.DT_INICIO, P.DT_TERMINO, I.CD_IMPLANTACAO
      FROM T_SIP_PROJETO P LEFT JOIN T_SIP_IMPLANTACAO I
      ON (P.CD_PROJETO = I.CD_PROJETO)
     WHERE I.CD_PROJETO IS NULL
  ORDER BY NM_PROJETO ASC;


/*
10.) Escreva e execute a instru��o SQL, para realizar a consulta nas tabelas PROJETO,
FUNCION�RIO E IMPLANTACAO.
Liste todos os projetos que est�o em processo de implanta��o.
A lista deve ser apresentada de forma ordenada por nome do projeto, data da entrada e
nome do funcion�rio, em ordem crescente.
Mostrar: c�digo do projeto, nome do projeto, data de in�cio, data t�rmino, c�digo da
implanta��o, nome do funcion�rio, data da entrada e data da sa�da do funcion�rio no projeto.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de jun��o de tabelas.
Utilize Left Outer Join.
*/
    SELECT P.CD_PROJETO, P.NM_PROJETO, P.DT_INICIO, P.DT_TERMINO, I.CD_IMPLANTACAO, F.NM_FUNCIONARIO, I.DT_ENTRADA, I.DT_SAIDA
          FROM T_SIP_PROJETO P LEFT JOIN T_SIP_IMPLANTACAO I
          ON (P.CD_PROJETO = I.CD_PROJETO)
          INNER JOIN T_SIP_FUNCIONARIO F
          ON(I.NR_MATRICULA = F.NR_MATRICULA)
         WHERE I.CD_PROJETO IS NOT NULL AND I.DT_SAIDA IS NULL
      ORDER BY P.NM_PROJETO ASC, I.DT_ENTRADA ASC, F.NM_FUNCIONARIO ASC;





