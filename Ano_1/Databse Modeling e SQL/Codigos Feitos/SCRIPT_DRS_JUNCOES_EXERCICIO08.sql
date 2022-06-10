/*
1.) Escreva e execute a instrução SQL, para realizar a consulta nas tabelas FUNCIONÁRIO E
DEPENDENTE.
Liste todos os funcionários que possuam dependentes.
A lista deve ser apresentada de forma ordenada por nome do funcionário, em ordem
crescente e nome do dependente, em ordem crescente.
Mostrar: número da matrícula, nome do funcionário, nome do dependente e data de
nascimento do dependente.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de junção de tabelas.
*/

SELECT  F.NR_MATRICULA "MATRICULA", 
        F.NM_FUNCIONARIO "FUNCIONARIO",
        D.NM_DEPENDENTE "DEPENDENTE",
        D.DT_NASCIMENTO "NASCIDO EM"
    FROM T_SIP_FUNCIONARIO F INNER JOIN T_SIP_DEPENDENTE D
        ON (F.NR_MATRICULA = D.NR_MATRICULA)
ORDER BY F.NM_FUNCIONARIO ASC, D.NM_DEPENDENTE ASC;


/*
2.) Escreva e execute a instrução SQL, para realizar a consulta nas tabelas DEPARTAMENTO,
FUNCIONÁRIO E DEPENDENTE.
Liste todos os funcionários que possuam dependentes.
A lista deve ser apresentada de forma ordenada por nome do funcionário, em ordem
crescente e nome do dependente, em ordem crescente.
Mostrar: número da matrícula, nome do funcionário, nome do departamento, nome do
dependente e data de nascimento do dependente.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de junção de tabelas.
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
3.) Escreva e execute a instrução SQL, para realizar a consulta nas tabelas PROJETO,
IMPLANTACAO E FUNCIONARIO.
Liste todos os projetos que possuam implantações
A lista deve ser apresentada de forma ordenada por nome do projeto, em ordem crescente
e nome dos funcionários, em ordem crescente.
Mostrar: código do projeto, nome do projeto, data de início, código da implantação, nome do
funcionário, data de entrada e data de saída do funcionário do projeto.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de junção de tabelas.
*/

    SELECT F.NM_FUNCIONARIO, P.CD_PROJETO, P.NM_PROJETO, P.DT_INICIO, I.CD_IMPLANTACAO, I.DT_ENTRADA, I.DT_SAIDA
      FROM T_SIP_FUNCIONARIO F INNER JOIN T_SIP_IMPLANTACAO I
      ON (F.NR_MATRICULA = I.NR_MATRICULA)
      INNER JOIN T_SIP_PROJETO P
      ON (P.CD_PROJETO = I.CD_PROJETO)
 ORDER BY P.NM_PROJETO ASC, F.NM_FUNCIONARIO ASC;


/*
4.) Escreva e execute a instrução SQL, para realizar a consulta nas tabelas PROJETO,
IMPLANTACAO E FUNCIONARIO.
Liste todos os projetos que possuam implantações ainda não finalizadas.
A lista deve ser apresentada de forma ordenada por nome do projeto, em ordem crescente
e nome dos funcionários, em ordem crescente.
Mostrar: código do projeto, nome do projeto, data de início, código da implantação, nome do
funcionário, data de entrada e data de saída do funcionário do projeto.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de junção de tabelas.
*/

    SELECT P.CD_PROJETO, P.NM_PROJETO, P.DT_INICIO, I.CD_IMPLANTACAO, F.NM_FUNCIONARIO, I.DT_ENTRADA, I.DT_SAIDA
          FROM T_SIP_PROJETO P INNER JOIN T_SIP_IMPLANTACAO I
          ON (P.CD_PROJETO = I.CD_PROJETO)
          INNER JOIN T_SIP_FUNCIONARIO F
          ON (F.NR_MATRICULA = I.NR_MATRICULA)
     WHERE I.DT_SAIDA IS NULL
  ORDER BY P.NM_PROJETO ASC, F.NM_FUNCIONARIO ASC;


/*
5.) Escreva e execute a instrução SQL, para realizar a consulta nas tabelas FUNCIONARIO E
DEPENDENTE.
Liste todos os funcionários que não possuam dependentes (apenas os que não possuam
dependentes).
A lista deve ser apresentada de forma ordenada por nome do funcionário, em ordem
crescente.
Mostrar: número de matrícula, nome do funcionário e nome do dependente.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de junção de tabelas.
Utilize Left Outer Join.
*/
    SELECT F.NR_MATRICULA, F.NM_FUNCIONARIO, D.NM_DEPENDENTE
      FROM T_SIP_FUNCIONARIO F LEFT JOIN T_SIP_DEPENDENTE D
      ON (F.NR_MATRICULA = D.NR_MATRICULA)
     WHERE D.NR_MATRICULA IS NULL
  ORDER BY NM_FUNCIONARIO ASC;
  
  
/*   
6.) Escreva e execute a instrução SQL, para realizar a consulta nas tabelas FUNCIONARIO E
IMPLANTACAO.
Liste todas as implantações associadas a funcionários (nota: não há implantações sem
funcionários).
A lista deve ser apresentada de forma ordenada por nome do funcionário e código da
implantação, em ordem crescente.
Mostrar: número de matrícula, nome do funcionário, código da implantação e data de
entrada.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de junção de tabelas.
Utilize Right Outer Join.
*/


    SELECT F.NR_MATRICULA, F.NM_FUNCIONARIO, I.CD_IMPLANTACAO, I.DT_ENTRADA
      FROM T_SIP_FUNCIONARIO F RIGHT JOIN T_SIP_IMPLANTACAO I
        ON (F.NR_MATRICULA = I.NR_MATRICULA)
  ORDER BY NM_FUNCIONARIO ASC, CD_IMPLANTACAO ASC;
  

/*
7.) Escreva e execute a instrução SQL, para realizar a consulta nas tabelas FUNCIONARIO E
IMPLANTACAO.
Liste todos os funcionários que participam ou não participam de implantações.
A lista deve ser apresentada de forma ordenada por nome do funcionário e código da
implantação, em ordem crescente.
Mostrar: número de matrícula, nome do funcionário, código da implantação e data de
entrada.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de junção de tabelas.
Utilize Left Outer Join.
*/
    SELECT F.NR_MATRICULA, F.NM_FUNCIONARIO, I.CD_IMPLANTACAO, I.DT_ENTRADA
      FROM T_SIP_FUNCIONARIO F LEFT JOIN T_SIP_IMPLANTACAO I
      ON (F.NR_MATRICULA = I.NR_MATRICULA)
  ORDER BY F.NM_FUNCIONARIO ASC, I.CD_IMPLANTACAO ASC;


/*
8.) Escreva e execute a instrução SQL, para realizar a consulta nas tabelas FUNCIONARIO E
IMPLANTACAO.
Liste todos os funcionários que não participam de implantações.
A lista deve ser apresentada de forma ordenada por nome do funcionário e código da
implantação, em ordem crescente.
Mostrar: número de matrícula, nome do funcionário, código da implantação e data de
entrada.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de junção de tabelas.
Utilize Left Outer Join.
*/
    SELECT F.NR_MATRICULA, F.NM_FUNCIONARIO, I.CD_IMPLANTACAO, I.DT_ENTRADA
      FROM T_SIP_FUNCIONARIO F LEFT JOIN T_SIP_IMPLANTACAO I
      ON (F.NR_MATRICULA = I.NR_MATRICULA)
     WHERE I.NR_MATRICULA IS NULL
  ORDER BY NM_FUNCIONARIO ASC, CD_IMPLANTACAO ASC;


/*
9.) Escreva e execute a instrução SQL, para realizar a consulta nas tabelas PROJETO E
IMPLANTACAO.
Liste todos os projetos que ainda não foram implantados.
A lista deve ser apresentada de forma ordenada por nome do projeto, em ordem crescente.
Mostrar: código do projeto, nome do projeto, data de início, data término e código da
implantação.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de junção de tabelas.
Utilize Left Outer Join.
*/

    SELECT P.CD_PROJETO, P.NM_PROJETO, P.DT_INICIO, P.DT_TERMINO, I.CD_IMPLANTACAO
      FROM T_SIP_PROJETO P LEFT JOIN T_SIP_IMPLANTACAO I
      ON (P.CD_PROJETO = I.CD_PROJETO)
     WHERE I.CD_PROJETO IS NULL
  ORDER BY NM_PROJETO ASC;


/*
10.) Escreva e execute a instrução SQL, para realizar a consulta nas tabelas PROJETO,
FUNCIONÁRIO E IMPLANTACAO.
Liste todos os projetos que estão em processo de implantação.
A lista deve ser apresentada de forma ordenada por nome do projeto, data da entrada e
nome do funcionário, em ordem crescente.
Mostrar: código do projeto, nome do projeto, data de início, data término, código da
implantação, nome do funcionário, data da entrada e data da saída do funcionário no projeto.
Utilize apelidos e qualificadores para as tabelas.
Utilize o conceito de junção de tabelas.
Utilize Left Outer Join.
*/
    SELECT P.CD_PROJETO, P.NM_PROJETO, P.DT_INICIO, P.DT_TERMINO, I.CD_IMPLANTACAO, F.NM_FUNCIONARIO, I.DT_ENTRADA, I.DT_SAIDA
          FROM T_SIP_PROJETO P LEFT JOIN T_SIP_IMPLANTACAO I
          ON (P.CD_PROJETO = I.CD_PROJETO)
          INNER JOIN T_SIP_FUNCIONARIO F
          ON(I.NR_MATRICULA = F.NR_MATRICULA)
         WHERE I.CD_PROJETO IS NOT NULL AND I.DT_SAIDA IS NULL
      ORDER BY P.NM_PROJETO ASC, I.DT_ENTRADA ASC, F.NM_FUNCIONARIO ASC;





