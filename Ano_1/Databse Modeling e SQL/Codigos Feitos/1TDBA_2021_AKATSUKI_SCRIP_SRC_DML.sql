/*
SELECT * FROM t_src_instituicao_caridade;
SELECT * FROM t_src_localizacao;
SELECT * FROM t_src_posto_coleta;
SELECT * FROM t_src_reciclavel;
SELECT * FROM t_src_doador;
SELECT * FROM t_src_doacao;
*/

-- POPULANTO TABELA INSTITUICAO CARIDADE
INSERT INTO t_src_instituicao_caridade VALUES (74918,96603108526107,'AACD');
INSERT INTO t_src_instituicao_caridade VALUES (66714,53916333220179,'GRAAC');
INSERT INTO t_src_instituicao_caridade VALUES (12679,95325307477412,'APAE');
INSERT INTO t_src_instituicao_caridade VALUES (29721,98005617105663,'Hospital do Cancer');
INSERT INTO t_src_instituicao_caridade VALUES (42204,60031021351902,'HCor');
INSERT INTO t_src_instituicao_caridade VALUES (19203,76639124584781,'Instituto Ayrton Senna');
INSERT INTO t_src_instituicao_caridade VALUES (38991,42693421740954,'Casa Hope');
INSERT INTO t_src_instituicao_caridade VALUES (11475,49508929931671,'Projeto Tamar');
INSERT INTO t_src_instituicao_caridade VALUES (23021,63706229966148,'Projeto Free Willy');
INSERT INTO t_src_instituicao_caridade VALUES (45141,69153301490777,'Projeto Caridade');

-- POPULANDO TABELA LOCALIZACAO
INSERT INTO t_src_localizacao VALUES (01001010,'Caminho do Papagaio','Sé','São Paulo','SP');
INSERT INTO t_src_localizacao VALUES (22750670,'Rua Filipe de Oliveira','Jacarepaguá ','Rio de Janeiro','RJ');
INSERT INTO t_src_localizacao VALUES (22753080,'Rua Buritana','Itanhangá','Rio de Janeiro','RJ');
INSERT INTO t_src_localizacao VALUES (50610060,'Rua Januário Barbosa','Madalena','Recife','PE');
INSERT INTO t_src_localizacao VALUES (62885200,'Rua José Raimundo Pereira','Alto da Estrela','Horizonte','CE');
INSERT INTO t_src_localizacao VALUES (74376005,'Rua RDR 3','Residencial Dom Rafael','Goiânia','GO');
INSERT INTO t_src_localizacao VALUES (03445040,'Rua Padre Manuel Bernardes','Vila Carrão','São Paulo','SP');
INSERT INTO t_src_localizacao VALUES (07790850,'Rua das Amazonas','Portais','Cajamar','SP');
INSERT INTO t_src_localizacao VALUES (94025170,'Rua Divinéia','Castelo Branco','Gravataí','RS');
INSERT INTO t_src_localizacao VALUES (41336365,'Rua Lagoa Azul','Cajazeiras','Salvador','BA');

-- POPULANDO TABELA POSTO COLETA
INSERT INTO t_src_posto_coleta VALUES (00001,01001010);
INSERT INTO t_src_posto_coleta VALUES (00002,22750670);
INSERT INTO t_src_posto_coleta VALUES (00003,22753080);
INSERT INTO t_src_posto_coleta VALUES (00004,50610060);
INSERT INTO t_src_posto_coleta VALUES (00005,62885200);
INSERT INTO t_src_posto_coleta VALUES (00006,74376005);
INSERT INTO t_src_posto_coleta VALUES (00007,03445040);
INSERT INTO t_src_posto_coleta VALUES (00008,07790850);
INSERT INTO t_src_posto_coleta VALUES (00009,94025170);
INSERT INTO t_src_posto_coleta VALUES (00010,41336365);

-- POPULANDO TABELA RECICLAVEL
INSERT INTO t_src_reciclavel VALUES (00001, 'Papel/Papelão', 'AZUL', 0.12);
INSERT INTO t_src_reciclavel VALUES (00002, 'Plático/Isopor', 'VERMELHO', 1.5);
INSERT INTO t_src_reciclavel VALUES (00003, 'Vidro', 'VERDE', 1.8);
INSERT INTO t_src_reciclavel VALUES (00004, 'Metal', 'AMARELO', 5.05);
INSERT INTO t_src_reciclavel VALUES (00005, 'Madeira', 'PRETO', 1);
INSERT INTO t_src_reciclavel VALUES (00006, 'Perigosos/Contaminados', 'LARANJA', 0.9);
INSERT INTO t_src_reciclavel VALUES (00007, 'Ambulatório/Serviço de Saúde', 'BRANCO',2);
INSERT INTO t_src_reciclavel VALUES (00008, 'Radioativo', 'ROXO', 5.5);
INSERT INTO t_src_reciclavel VALUES (00009, 'Orgânico', 'MARROM', 0.05);
INSERT INTO t_src_reciclavel VALUES (00010, 'Não Reciclável/Misturado', 'CINZA', 0.01);

-- POPULANDO TABELA DOADOR
INSERT INTO t_src_doador VALUES (00001,01001010,74918,'Lareina Ware', 
    TO_DATE('22/02/2000', 'DD/MM/YYYY'),'F',100000000,10,20000000,20,55911071325,10,'molestie@icloud.ca', 'Bloco B');
INSERT INTO t_src_doador VALUES (00002,22750670,66714,'Gregory Payne',
    TO_DATE('02/03/1979', 'DD/MM/YYYY'),'NB',100000001,11,20000001,21,60226033279,25,'orci@aol.ca', 'Bloco Marguerita');
INSERT INTO t_src_doador VALUES (00003,22753080,12679,'Nola England', 
    TO_DATE('02/08/1990', 'DD/MM/YYYY'),'M',100000002,12,20000002,22,93561799842,40,'viverra.maecenas.iaculis@outlook.edu', 'sala 02');
INSERT INTO t_src_doador VALUES (00004,50610060,29721,'Jesse Todd', 
    TO_DATE('12/01/1992', 'DD/MM/YYYY'),'M',100000003,13,20000003,23,33968663788,55,'sed.dictum@icloud.edu', 'apto 12');
INSERT INTO t_src_doador VALUES (00005,62885200,42204,'Kennan Mclean', 
    TO_DATE('01/10/1984', 'DD/MM/YYYY'),'NB',100000004,14,20000004,24,45503608736,70,'dapibus.quam@hotmail.org', 'apto 11');
INSERT INTO t_src_doador VALUES (00006,74376005,19203,'Brett Schroeder', 
    TO_DATE('09/02/1995', 'DD/MM/YYYY'),'NB',100000005,15,20000005,25,62226124182,85,'donec.porttitor@icloud.org', 'apto 55');
INSERT INTO t_src_doador VALUES (00007,03445040,38991,'Vance Norris', 
    TO_DATE('10/09/1992', 'DD/MM/YYYY'),'F',100000006,16,20000006,26,25833525283,100,'tempor@protonmail.couk', 'Sala 34');
INSERT INTO t_src_doador VALUES (00008,07790850,11475,'Hunter Monroe', 
    TO_DATE('07/02/1987', 'DD/MM/YYYY'),'M',100000007,17,20000007,27,43654262002,115,'aliquet@yahoo.ca', 'apto 66');
INSERT INTO t_src_doador VALUES (00009,94025170,23021,'Vincent Vinson', 
    TO_DATE('10/08/1975', 'DD/MM/YYYY'),'NB',100000008,18,20000008,28,86261223449,130,'diam.nunc@aol.net', 'apto 99');
INSERT INTO t_src_doador VALUES (00010,41336365,45141,'Mollie Montgomery', 
    TO_DATE('11/09/1984', 'DD/MM/YYYY'),'NB',100000009,19,20000009,29,09780989821,145,'tincidunt.dui@hotmail.org', 'apto 55');

-- POPULANDO TABELA DOACAO
INSERT INTO t_src_doacao  
VALUES (10000,4,6,7,32);
INSERT INTO t_src_doacao  
VALUES (10001,3,9,6,57);
INSERT INTO t_src_doacao  
VALUES (10002,5,10,8,93);
INSERT INTO t_src_doacao  
VALUES (10003,5,3,4,75);
INSERT INTO t_src_doacao  
VALUES (10004,7,9,8,48);
INSERT INTO t_src_doacao  
VALUES (10005,6,3,10,60);
INSERT INTO t_src_doacao  
VALUES (10006,10,6,9,25);
INSERT INTO t_src_doacao  
VALUES (10007,7,3,6,92);
INSERT INTO t_src_doacao  
VALUES (10008,4,7,9,82);
INSERT INTO t_src_doacao  
VALUES (10009,2,3,9,96);
INSERT INTO t_src_doacao  
VALUES (10010,4,4,2,4);
INSERT INTO t_src_doacao  
VALUES (10011,3,6,5,71);
INSERT INTO t_src_doacao  
VALUES (10012,4,4,3,42);
INSERT INTO t_src_doacao  
VALUES (10013,7,4,3,46);
INSERT INTO t_src_doacao  
VALUES (10014,9,2,8,35);
INSERT INTO t_src_doacao  
VALUES (10015,9,2,8,7);
INSERT INTO t_src_doacao  
VALUES (10016,2,7,9,96);
INSERT INTO t_src_doacao  
VALUES (10017,7,3,3,39);
INSERT INTO t_src_doacao  
VALUES (10018,8,10,2,95);
INSERT INTO t_src_doacao  
VALUES (10019,8,2,3,63);
INSERT INTO t_src_doacao  
VALUES (10020,6,3,9,33);
INSERT INTO t_src_doacao  
VALUES (10021,5,4,5,53);
INSERT INTO t_src_doacao  
VALUES (10022,3,8,3,42);
INSERT INTO t_src_doacao  
VALUES (10023,6,5,4,67);
INSERT INTO t_src_doacao  
VALUES (10024,8,7,9,15);
INSERT INTO t_src_doacao  
VALUES (10025,10,4,7,23);
INSERT INTO t_src_doacao  
VALUES (10026,6,3,8,80);
INSERT INTO t_src_doacao  
VALUES (10027,6,7,10,58);
INSERT INTO t_src_doacao  
VALUES (10028,4,4,5,38);
INSERT INTO t_src_doacao  
VALUES (10029,5,6,7,96);
INSERT INTO t_src_doacao  
VALUES (10030,4,6,9,57);
INSERT INTO t_src_doacao  
VALUES (10031,8,8,7,22);
INSERT INTO t_src_doacao  
VALUES (10032,4,9,8,86);
INSERT INTO t_src_doacao  
VALUES (10033,8,9,4,56);
INSERT INTO t_src_doacao  
VALUES (10034,4,2,7,77);
INSERT INTO t_src_doacao  
VALUES (10035,7,8,3,56);
INSERT INTO t_src_doacao  
VALUES (10036,10,4,7,51);
INSERT INTO t_src_doacao  
VALUES (10037,9,8,5,99);
INSERT INTO t_src_doacao  
VALUES (10038,8,7,9,0);
INSERT INTO t_src_doacao  
VALUES (10039,6,3,4,46);
INSERT INTO t_src_doacao  
VALUES (10040,1,2,4,40);
INSERT INTO t_src_doacao  
VALUES (10041,6,3,9,15);
INSERT INTO t_src_doacao  
VALUES (10042,7,9,7,35);
INSERT INTO t_src_doacao  
VALUES (10043,4,2,9,74);
INSERT INTO t_src_doacao  
VALUES (10044,2,2,5,83);
INSERT INTO t_src_doacao  
VALUES (10045,3,3,1,54);
INSERT INTO t_src_doacao  
VALUES (10046,9,6,3,65);
INSERT INTO t_src_doacao  
VALUES (10047,5,3,1,16);
INSERT INTO t_src_doacao  
VALUES (10048,7,7,8,66);
INSERT INTO t_src_doacao  
VALUES (10049,4,9,4,70);


commit;

-- RECUPERANDO QUAL O DOADOR QUE MAIS RECICLOU
    SELECT D.NM_DOADOR,
           SUM(A.VL_PESO_MATERIAL) "TOTAL PESO RECICLAVEIS"
      FROM T_SRC_DOADOR D INNER JOIN T_SRC_DOACAO A
           ON(D.CD_DOADOR = A.CD_DOADOR)
     GROUP BY D.CD_DOADOR, D.NM_DOADOR
     ORDER BY "TOTAL PESO RECICLAVEIS" DESC;


-- RECUPERANDO QUAL O LIXO MAIS DOADO
    SELECT R.DS_TIPO,
           SUM(D.VL_PESO_MATERIAL) "TOTAL DE LIXO(R$)"
      FROM T_SRC_RECICLAVEL R  INNER JOIN T_SRC_DOACAO D
           ON(R.CD_RECICLAVEL = D.CD_RECICLAVEL)
     GROUP BY D.CD_RECICLAVEL, R.DS_TIPO
     ORDER BY "TOTAL PESO RECICLAVEIS" DESC;


-- RECUPERANDO QUAL DOADOR ARRECADOU MAIS DINHEIRO
    SELECT D.NM_DOADOR,
           SUM(A.VL_PESO_MATERIAL * R.VL_CASHBACK) "TOTAL CASHBACK ARRECADADO(R$)"
      FROM T_SRC_RECICLAVEL R INNER JOIN T_SRC_DOACAO A
           ON(R.CD_RECICLAVEL = A.CD_RECICLAVEL)
           INNER JOIN T_SRC_DOADOR D
           ON (D.CD_DOADOR = A.CD_DOADOR)
     GROUP BY A.CD_DOADOR, D.NM_DOADOR
     HAVING SUM(A.VL_PESO_MATERIAL * R.VL_CASHBACK) > 500
     ORDER BY "TOTAL CASHBACK ARRECADADO" DESC;


-- TRES ESTADOS QUE MAIS DOARAM 
    SELECT L.NM_ESTADO,
           SUM(D.VL_PESO_MATERIAL)"TOTAL DE LIXO(KG)"
           FROM T_SRC_LOCALIZACAO L LEFT JOIN T_SRC_POSTO_COLETA C
               ON L.NR_CEP = C.NR_CEP
           LEFT JOIN T_SRC_DOACAO D
               ON C.CD_POSTO_COLETA = D.CD_POSTO_COLETA
  GROUP BY L.NM_ESTADO
  ORDER BY SUM(D.VL_PESO_MATERIAL) DESC
  fetch first 3 rows only;



-- QUANTIDADE DE DOACOES NAS INSTITUICOES
    SELECT IC.NM_INSTITUICAO "INSTITUIÇÕES", 
           COUNT(DOA.CD_DOACAO)  "QUANTIDADE DE DOAÇÕES"
           FROM T_SRC_INSTITUICAO_CARIDADE IC LEFT JOIN T_SRC_DOADOR D
               ON IC.CD_INSTITUICAO = D.CD_INSTITUICAO
           LEFT JOIN T_SRC_DOACAO DOA
               ON D.CD_DOADOR = DOA.CD_DOADOR
  GROUP BY  IC.NM_INSTITUICAO
    HAVING COUNT(DOA.CD_DOACAO) >=6
  ORDER BY COUNT(DOA.CD_DOACAO) DESC;




































































