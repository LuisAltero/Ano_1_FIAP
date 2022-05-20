/*
Bruno Biancchi – RM 84351
Luis Henrique Caldas Altero – RM 88670
Pedro Guilherme Polloni Barreto - RM 88964
Victor Lamprecht Di Roberto – RM 86691
*/


-- Criação dos drops
/*
DROP TABLE t_src_instituicao_caridade CASCADE CONSTRAINTS;
DROP TABLE t_src_localizacao CASCADE CONSTRAINTS;
DROP TABLE t_src_posto_coleta CASCADE CONSTRAINTS;
DROP TABLE t_src_reciclavel CASCADE CONSTRAINTS;
DROP TABLE t_src_doador CASCADE CONSTRAINTS;
DROP TABLE t_src_doacao CASCADE CONSTRAINTS;
*/


CREATE TABLE t_src_instituicao_caridade (
    cd_instituicao  NUMBER(5)       NOT NULL,
    nr_cnpj         NUMBER(14)      NOT NULL,
    nm_instituicao  VARCHAR2(50)    NOT NULL
);

CREATE TABLE t_src_localizacao (
    nr_cep     NUMBER(8)    NOT NULL,
    nm_rua     VARCHAR2(50) NOT NULL,
    nm_bairro  VARCHAR2(50) NOT NULL,
    nm_cidade  VARCHAR2(50) NOT NULL,
    nm_estado  CHAR(2)      NOT NULL
);

CREATE TABLE t_src_posto_coleta (
    cd_posto_coleta  NUMBER(5) NOT NULL,
    nr_cep           NUMBER(8) NOT NULL
);

CREATE TABLE t_src_reciclavel (
    cd_reciclavel  NUMBER(5)    NOT NULL,
    ds_tipo        VARCHAR2(35) NOT NULL,
    ds_cor         VARCHAR2(15) NOT NULL,
    vl_cashback    NUMBER(4, 2) NOT NULL
);

CREATE TABLE t_src_doador (
    cd_doador                  NUMBER(5)        NOT NULL,
    nr_cep                     NUMBER(8)        NOT NULL,
    cd_instituicao             NUMBER(5)        NOT NULL,
    nm_doador                  VARCHAR2(30)     NOT NULL,
    dt_nascimento              DATE             NOT NULL,
    ds_genero                  CHAR(2)          NOT NULL,
    nr_cpf                     NUMBER(9)        NOT NULL,
    nr_cpf_digito              NUMBER(2)        NOT NULL,
    nr_rg                      NUMBER(8)        NOT NULL,
    nr_rg_digito               CHAR(2)          NOT NULL,
    nr_telefone                NUMBER(11)       NOT NULL,
    nr_residencia              NUMBER(4)        NOT NULL,
    ds_email                   VARCHAR2(40)     NOT NULL,
    ds_complemento_residencia  VARCHAR2(20)     NULL
);

CREATE TABLE t_src_doacao (
    cd_doacao         NUMBER(5)     NOT NULL,
    cd_doador         NUMBER(5)     NOT NULL,
    cd_reciclavel     NUMBER(5)     NOT NULL,
    cd_posto_coleta   NUMBER(5)     NOT NULL,
    vl_peso_material  NUMBER(6, 2)  NOT NULL
);

-- Criação das constraints: PK, CK, UN
ALTER TABLE t_src_instituicao_caridade ADD CONSTRAINT pk_src_inst_caridade PRIMARY KEY (cd_instituicao);

ALTER TABLE t_src_instituicao_caridade ADD CONSTRAINT un_src_inst_caridade_cnpj UNIQUE (nr_cnpj);

ALTER TABLE t_src_localizacao ADD CONSTRAINT pk_src_local PRIMARY KEY (nr_cep);

ALTER TABLE t_src_posto_coleta ADD CONSTRAINT pk_src_posto_coleta PRIMARY KEY (cd_posto_coleta);

ALTER TABLE t_src_reciclavel ADD CONSTRAINT ck_src_reciclavel_cor CHECK (ds_cor IN ( 'AZUL', 'VERMELHO', 'VERDE', 'AMARELO', 'PRETO',
                                                             'LARANJA', 'BRANCO', 'ROXO', 'MARROM', 'CINZA'));

ALTER TABLE t_src_reciclavel ADD CONSTRAINT pk_src_reciclavel PRIMARY KEY (cd_reciclavel);

ALTER TABLE t_src_reciclavel ADD CONSTRAINT un_src_reciclavel_cor UNIQUE (ds_cor);

ALTER TABLE t_src_reciclavel ADD CONSTRAINT un_src_reciclavel_tipo UNIQUE (ds_tipo);

ALTER TABLE t_src_doador ADD CONSTRAINT pk_src_doador PRIMARY KEY (cd_doador);

ALTER TABLE t_src_doador ADD CONSTRAINT un_src_doador_cpf UNIQUE (nr_cpf);

ALTER TABLE t_src_doador ADD CONSTRAINT un_src_doador_email UNIQUE (ds_email);

ALTER TABLE t_src_doacao ADD CONSTRAINT ck_src_doacao_peso_material CHECK (vl_peso_material >= 0);

ALTER TABLE t_src_doacao ADD CONSTRAINT pk_src_doacao PRIMARY KEY (cd_doacao);


-- Criação das chaves estrangeiras (FK)
ALTER TABLE t_src_posto_coleta
    ADD CONSTRAINT fk_src_posto_coleta_local FOREIGN KEY (nr_cep)
        REFERENCES t_src_localizacao (nr_cep);

ALTER TABLE t_src_doador
    ADD CONSTRAINT fk_src_doador_inst_caridade FOREIGN KEY (cd_instituicao)
        REFERENCES t_src_instituicao_caridade (cd_instituicao);

ALTER TABLE t_src_doador
    ADD CONSTRAINT fk_src_doador_localizacao FOREIGN KEY (nr_cep)
        REFERENCES t_src_localizacao (nr_cep);

ALTER TABLE t_src_doacao
    ADD CONSTRAINT fk_src_doacao_doador FOREIGN KEY (cd_doador)
        REFERENCES t_src_doador (cd_doador);

ALTER TABLE t_src_doacao
    ADD CONSTRAINT fk_src_doacao_lixo FOREIGN KEY (cd_reciclavel)
        REFERENCES t_src_reciclavel (cd_reciclavel);

ALTER TABLE t_src_doacao
    ADD CONSTRAINT fk_src_doacao_posto_coleta FOREIGN KEY (cd_posto_coleta)
        REFERENCES t_src_posto_coleta (cd_posto_coleta);


