/*
Bruno Biancchi – RM 84351
Luis Henrique Caldas Altero – RM 88670
Pedro Guilherme Polloni Barreto - RM 88964
Victor Lamprecht Di Roberto – RM 86691
*/


-- Criação dos drops
/*
DROP TABLE t_scc_audio CASCADE CONSTRAINTS;
DROP TABLE t_scc_cliente CASCADE CONSTRAINTS;
DROP TABLE t_scc_conta CASCADE CONSTRAINTS;
DROP TABLE t_scc_produto CASCADE CONSTRAINTS;
DROP TABLE t_scc_produto_conta CASCADE CONSTRAINTS;
*/

CREATE TABLE t_scc_audio (
    nr_protocolo               NUMBER(15)       NOT NULL,
    cd_cliente                 NUMBER(10)       NOT NULL,
    ds_destino_audio           VARCHAR2(100)    NOT NULL,
    nm_audio                   VARCHAR2(50)     NOT NULL,
    nr_tamanho_audio           NUMBER(5)        NOT NULL,
    nr_duracao_audio_segundos  NUMBER(4)        NOT NULL,
    ds_formato                 VARCHAR2(5)      NOT NULL,
    dt_registro                DATE             NOT NULL
);


CREATE TABLE t_scc_cliente (
    cd_cliente     NUMBER(10)       NOT NULL,
    nr_cpf         NUMBER(9)        NOT NULL,
    nr_cpf_digito  NUMBER(2)        NOT NULL,
    ds_email       VARCHAR2(50)     NOT NULL,
    nm_cliente     VARCHAR2(50)     NOT NULL,
    nr_rg          NUMBER(8)        NOT NULL,
    nr_rg_digito   NUMBER(1)        NOT NULL,
    dt_nascimento  DATE             NOT NULL,
    ds_endereco    VARCHAR2(100)    NOT NULL,
    ds_profissao   VARCHAR2(50)     NOT NULL,
    nr_telefone    NUMBER(11)       NOT NULL,
    ds_genero      CHAR(2)
);



CREATE TABLE t_scc_conta (
    nr_conta           NUMBER(8)    NOT NULL,
    cd_cliente         NUMBER(10)   NOT NULL,
    nr_conta_digito    NUMBER(1)    NOT NULL,
    dt_abertura_conta  DATE         NOT NULL,
    nr_banco           NUMBER(3)    NOT NULL,
    nr_agencia         NUMBER(4)    NOT NULL,
    ds_tipo_conta      VARCHAR2(10) NOT NULL
);


CREATE TABLE t_scc_produto (
    cd_produto       NUMBER(10)     NOT NULL,
    ds_produto       VARCHAR2(100)  NOT NULL,
    ds_tipo_produto  VARCHAR2(20)   NOT NULL
);



CREATE TABLE t_scc_produto_conta (
    nr_conta                NUMBER(8)   NOT NULL,
    cd_produto              NUMBER(10)  NOT NULL,
    dt_inicio_contratacao   DATE        NOT NULL,
    dt_termino_contratacao  DATE
);

-- Criação das constraints: PK, CK, UN

ALTER TABLE t_scc_audio ADD CONSTRAINT ck_scc_audio_tamanho_audio CHECK ( nr_tamanho_audio > 0 );

ALTER TABLE t_scc_audio ADD CONSTRAINT pk_scc_audio PRIMARY KEY ( nr_protocolo );

ALTER TABLE t_scc_cliente ADD CONSTRAINT pk_scc_cliente PRIMARY KEY ( cd_cliente );

ALTER TABLE t_scc_cliente ADD CONSTRAINT un_scc_cliente_cpf UNIQUE ( nr_cpf, nr_cpf_digito );

ALTER TABLE t_scc_cliente ADD CONSTRAINT un_scc_cliente_email UNIQUE ( ds_email );

ALTER TABLE t_scc_conta ADD CONSTRAINT pk_scc_conta PRIMARY KEY ( nr_conta );

ALTER TABLE t_scc_produto ADD CONSTRAINT pk_scc_produto PRIMARY KEY ( cd_produto );

ALTER TABLE t_scc_produto_conta ADD CONSTRAINT ck_scc_prod_conta_dt_termino CHECK ( dt_termino_contratacao > dt_inicio_contratacao );

ALTER TABLE t_scc_produto_conta ADD CONSTRAINT pk_scc_produto_conta PRIMARY KEY ( nr_conta );

-- Criação das chaves estrangeiras (FK)
ALTER TABLE t_scc_audio
    ADD CONSTRAINT fk_scc_audio_cliente FOREIGN KEY ( cd_cliente )
        REFERENCES t_scc_cliente ( cd_cliente );

ALTER TABLE t_scc_conta
    ADD CONSTRAINT fk_scc_conta_cliente FOREIGN KEY ( cd_cliente )
        REFERENCES t_scc_cliente ( cd_cliente );

ALTER TABLE t_scc_produto_conta
    ADD CONSTRAINT fk_scc_produto_conta_conta FOREIGN KEY ( nr_conta )
        REFERENCES t_scc_conta ( nr_conta );

ALTER TABLE t_scc_produto_conta
    ADD CONSTRAINT fk_scc_produto_conta_produto FOREIGN KEY ( cd_produto )
        REFERENCES t_scc_produto ( cd_produto );
        
/*
COMMIT;
*/