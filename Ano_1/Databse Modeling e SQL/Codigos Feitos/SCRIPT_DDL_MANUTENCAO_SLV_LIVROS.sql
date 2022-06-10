-- Na tabela �T_SLV_CATEGORIA�, crie a instru��o SQL, comando DDL para 
-- alterar o nome da coluna �ds_sigla_categoria� para �ds_sigla_categ�.
ALTER TABLE T_SLV_CATEGORIA
RENAME COLUMN ds_sigla_categoria TO ds_sigla_categ;

-- Utilize o comando abaixo, para visualizar a altera��o realizada.
DESC T_SLV_CATEGORIA;



-- Na tabela �T_SLV_CATEGORIA�, crie a instru��o SQL, comando DDL para 
-- alterar o nome da UNIQUE constraint �UN_SLV_CATEGORIA_DESC� para 
-- �UN_SLV_CATEG_DESC�.
ALTER TABLE T_SLV_CATEGORIA 
RENAME CONSTRAINT UN_SLV_CATEGORIA_DESC TO UN_SLV_CATEG_DESC;

-- Utilize o comando abaixo, para visualizar a altera��o realizada.
SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, SEARCH_CONDITION
FROM USER_CONSTRAINTS
WHERE TABLE_NAME = 'T_SLV_CATEGORIA';



-- Na tabela �T_SLV_AUTOR�, crie a instru��o SQL, comando DDL para 
-- alterar o tamanho da coluna �nm_segundo_autor� para 30 caracteres.
ALTER TABLE T_SLV_AUTOR
MODIFY nm_segundo_autor VARCHAR2 (30);

DESC T_SLV_AUTOR;



-- Na tabela �T_SLV_AUTOR�, crie a instru��o SQL, comando DDL para
-- adicionar coluna �ds_email�, com tipo de dado VARCHAR2, tamanho 40 
-- caracteres e obrigat�ria.
ALTER TABLE T_SLV_AUTOR
ADD ds_email VARCHAR2(40) NOT NULL;

DESC T_SLV_AUTOR;



-- Na tabela �T_SLV_AUTOR�, crie a instru��o SQL, comando DDL para
-- alterar o tamanho da coluna �ds_email� para 60 caracteres e elimine a 
-- constraint NOT NULL da coluna �ds_email�, utilizando uma �nica 
-- instru��o.
ALTER TABLE T_SLV_AUTOR
MODIFY ds_email VARCHAR2(60) NULL;

DESC T_SLV_AUTOR;



-- Na tabela �T_SLV_AUTOR_LIVRO�, crie a instru��o SQL, comando DDL 
-- para alterar o tamanho da coluna �nr_isbn� para 13 d�gitos.
ALTER TABLE T_SLV_AUTOR_LIVRO
MODIFY nr_isbn NUMBER(13);

DESC T_SLV_AUTOR_LIVRO;



-- Na tabela �T_SLV_LIVRO�, crie a instru��o SQL, comando DDL para alterar
-- o tamanho da coluna �nr_isbn� para 13 d�gitos. Observe que esta coluna 
-- � uma chave prim�ria, uma vez alterada, se faz necess�rio alterar a chave 
-- estrangeira tamb�m, como feito primeiramente no item 2.6.
ALTER TABLE T_SLV_LIVRO
MODIFY nr_isbn NUMBER(13);

DESC T_SLV_LIVRO;



-- Na tabela �T_SLV_AUTOR�, crie a instru��o SQL, comando DDL para 
-- alterar adicionar a coluna �nm_pais_origem� (nome do pa�s de origem do 
-- autor), com tipo de dado VARCHAR2, tamanho 30 caracteres e n�o 
-- obrigat�rio (opcional).
ALTER TABLE T_SLV_AUTOR
ADD nm_pais_origem VARCHAR2(30) NULL;

DESC T_SLV_AUTOR;



-- Na tabela �T_SLV_LIVRO�, crie a instru��o SQL, comando DDL para alterar 
-- adicionar a constraint UNIQUE para a coluna �nm_titulo�. Nomeie a 
-- constraint como: �UN_SLV_LIVRO_TITULO�.
ALTER TABLE T_SLV_LIVRO
ADD CONSTRAINT UN_SLV_LIVRO_TITULO UNIQUE (nm_titulo);

SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, SEARCH_CONDITION
FROM USER_CONSTRAINTS
WHERE TABLE_NAME = 'T_SLV_LIVRO';



-- Na tabela �T_SLV_AUTOR_LIVRO�, crie a instru��o SQL, comando 
-- DDL para eliminar a constraint chave estrangeira 
-- �FK_SLV_AUTOR_LIVRO_AUTOR�.
ALTER TABLE T_SLV_AUTOR_LIVRO
DROP CONSTRAINT FK_SLV_AUTOR_LIVRO_AUTOR;
-- Cascade apenas para chave primaria 
SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, SEARCH_CONDITION
FROM USER_CONSTRAINTS
WHERE TABLE_NAME = 'T_SLV_AUTOR_LIVRO';



-- Na tabela �T_SLV_LIVRO�, crie a instru��o SQL, comando DDL para 
-- eliminar a constraint chave prim�ria �PK_SLV_LIVRO�, com a op��o 
-- �CASCADE�, que elimina o relacionamento existente.
ALTER TABLE T_SLV_LIVRO
DROP CONSTRAINT PK_SLV_LIVRO CASCADE;

SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, SEARCH_CONDITION
FROM USER_CONSTRAINTS
WHERE TABLE_NAME = 'T_SLV_LIVRO';

SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, SEARCH_CONDITION
FROM USER_CONSTRAINTS
WHERE TABLE_NAME = 'T_SLV_AUTOR_LIVRO';



-- Na tabela �T_SLV_CATEGORIA�, crie a instru��o SQL, comando 
-- DDL para desabilitar a constraint UNIQUE �UN_SLV_CATEGORIA_SIGLA� 
-- associada a coluna �ds_sigla_categ�.
ALTER TABLE T_SLV_CATEGORIA
DISABLE CONSTRAINT UN_SLV_CATEGORIA_SIGLA;

SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, SEARCH_CONDITION, STATUS
FROM USER_CONSTRAINTS
WHERE TABLE_NAME = 'T_SLV_CATEGORIA';


