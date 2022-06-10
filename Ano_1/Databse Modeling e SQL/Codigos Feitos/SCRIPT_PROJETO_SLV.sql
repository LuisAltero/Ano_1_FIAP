/*
DROP TABLE T_SLV_CATEGORIA          CASCADE CONSTRAINTS; 
DROP TABLE T_SLV_LIVRO              CASCADE CONSTRAINTS;
DROP TABLE T_SLV_AUTOR              CASCADE CONSTRAINTS;
DROP TABLE T_SLV_AUTOR_LIVRO        CASCADE CONSTRAINTS;
*/


CREATE TABLE T_SLV_CATEGORIA (
        cd_categoria        NUMBER(3)       NOT NULL,
        ds_sigla_categoria  CHAR(3)         NOT NULL,  
        ds_categoria        VARCHAR2(30)    NOT NULL
);

    ALTER TABLE T_SLV_CATEGORIA
ADD CONSTRAINT PK_SLV_CATEGORIA
    PRIMARY KEY (cd_categoria);

    ALTER TABLE T_SLV_CATEGORIA
ADD CONSTRAINT UN_SLV_CATEGORIA_SIGLA
    UNIQUE (ds_sigla_categoria);

    ALTER TABLE T_SLV_CATEGORIA
ADD CONSTRAINT UN_SLV_CATEGORIA_DESC
    UNIQUE (ds_categoria);



CREATE TABLE T_SLV_LIVRO (
        nr_isbn         NUMBER(8)      NOT NULL,
        cd_categoria    NUMBER(3)      NOT NULL,
        nm_titulo       VARCHAR2(50)   NOT NULL,
        ds_sinopse      VARCHAR2(200)  NOT NULL,
        nr_edicao       NUMBER(2)      NOT NULL,  
        nr_ano          NUMBER(4)
);        

    ALTER TABLE T_SLV_LIVRO 
ADD CONSTRAINT PK_SLV_LIVRO
    PRIMARY KEY (nr_isbn);
    
    ALTER TABLE T_SLV_LIVRO 
ADD CONSTRAINT FK_SLV_LIVRO_CATEGORIA
    FOREIGN KEY (cd_categoria)
    REFERENCES T_SLV_CATEGORIA (CD_CATEGORIA);
    
    ALTER TABLE T_SLV_LIVRO 
ADD CONSTRAINT CK_SLV_LIVRO_ANO
    CHECK (nr_ano > 0);

    ALTER TABLE T_SLV_LIVRO 
ADD CONSTRAINT CK_SLV_LIVRO_EDICAO
    CHECK (nr_edicao > 0);
    
    

CREATE TABLE T_SLV_AUTOR (
        cd_autor            NUMBER(3)       NOT NULL,
        nm_primeiro_autor   VARCHAR2(20)    NOT NULL,
        nm_segundo_autor    VARCHAR(40)     NOT NULL
);

    ALTER TABLE T_SLV_AUTOR
ADD CONSTRAINT PK_SLV_AUTOR
    PRIMARY KEY (cd_autor);



CREATE TABLE T_SLV_AUTOR_LIVRO (
        nr_isbn             NUMBER(8)  NOT NULL,
        cd_autor            NUMBER(3)  NOT NULL, 
        st_autor_principal  NUMBER(1)  NOT NULL
);

    ALTER TABLE T_SLV_AUTOR_LIVRO
ADD CONSTRAINT PK_SLV_AUTOR_LIVRO
    PRIMARY KEY (nr_isbn, cd_autor);

    ALTER TABLE T_SLV_AUTOR_LIVRO
ADD CONSTRAINT FK_SLV_AUTOR_LIVRO_AUTOR
    FOREIGN KEY (cd_autor)
    REFERENCES T_SLV_AUTOR (cd_autor);
    
    ALTER TABLE T_SLV_AUTOR_LIVRO
ADD CONSTRAINT FK_SLV_AUTOR_LIVRO_LIVRO
    FOREIGN KEY (nr_isbn)
    REFERENCES T_SLV_LIVRO (nr_isbn);
    
    ALTER TABLE T_SLV_AUTOR_LIVRO
ADD CONSTRAINT CK_SLV_AUTOR_LIVRO_STATUS
    CHECK (st_autor_principal IN (1,2));
    
-- O comando acima é equivalente 
-- st_autor_principal = 1 OR st_autor_principal = 2
    