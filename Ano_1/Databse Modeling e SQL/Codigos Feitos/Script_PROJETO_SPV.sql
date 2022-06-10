-- Gerado por Oracle SQL Developer Data Modeler 20.4.0.374.0801
--   em:        2021-05-20 08:55:41 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g


/*
DROP TABLE t_spv_classif_fiscal CASCADE CONSTRAINTS;

DROP TABLE t_spv_cliente CASCADE CONSTRAINTS;

DROP TABLE t_spv_itens_nf CASCADE CONSTRAINTS;

DROP TABLE t_spv_nota_fiscal CASCADE CONSTRAINTS;

DROP TABLE t_spv_produto CASCADE CONSTRAINTS;

DROP TABLE t_spv_unid_cml CASCADE CONSTRAINTS;
*/

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE t_spv_classif_fiscal (
    nr_cfop               NUMBER(4) NOT NULL,
    ds_tipo_operacao      NUMBER(1) NOT NULL,
    nm_natureza_operacao  VARCHAR2(30) NOT NULL,
    ds_natureza_operacao  VARCHAR2(200) NOT NULL
);

ALTER TABLE t_spv_classif_fiscal
    ADD CONSTRAINT ck_spv_classif_fiscal_tipo CHECK ( ds_tipo_operacao = 1
                                                      OR ds_tipo_operacao = 2 );

ALTER TABLE t_spv_classif_fiscal ADD CONSTRAINT pk_spv_classif_fiscal PRIMARY KEY ( nr_cfop );

ALTER TABLE t_spv_classif_fiscal ADD CONSTRAINT un_spv_classif_fiscal_nome UNIQUE ( nm_natureza_operacao );

CREATE TABLE t_spv_cliente (
    cd_cliente     NUMBER(5) NOT NULL,
    nm_cliente     VARCHAR2(50) NOT NULL,
    nr_cpf         NUMBER(9) NOT NULL,
    nr_cpf_digito  NUMBER(2) NOT NULL,
    nr_rg          NUMBER(8) NOT NULL,
    nr_rg_digito   CHAR(1) NOT NULL,
    ds_genero      CHAR(2) NOT NULL,
    ds_endereco    VARCHAR2(100) NOT NULL,
    ds_email       VARCHAR2(50),
    nr_telefone    NUMBER(11),
    dt_nascimento  DATE
);

ALTER TABLE t_spv_cliente ADD CONSTRAINT pk_spv_cliente PRIMARY KEY ( cd_cliente );

ALTER TABLE t_spv_cliente ADD CONSTRAINT un_spv_cliente_cpf UNIQUE ( nr_cpf,
                                                                     nr_cpf_digito );
                                                                     
ALTER TABLE t_spv_cliente ADD CONSTRAINT ck_spv_cliente_genero CHECK ( ds_genero = 'M' OR ds_genero = 'F');
                                                                

CREATE TABLE t_spv_itens_nf (
    nr_nf                NUMBER(5) NOT NULL,
    cd_produto           NUMBER(5) NOT NULL,
    qt_comercializada    NUMBER(4) NOT NULL,
    vl_preco_unitario    NUMBER(7, 2) NOT NULL,
    vl_preco_total_item  NUMBER(8, 2) NOT NULL
);

ALTER TABLE t_spv_itens_nf ADD CONSTRAINT ck_spv_itens_nf_qtde CHECK ( qt_comercializada > 0 );

ALTER TABLE t_spv_itens_nf ADD CONSTRAINT ck_spv_itens_nf_precouni CHECK ( vl_preco_unitario > 0 );

ALTER TABLE t_spv_itens_nf ADD CONSTRAINT pk_spv_itens_nf PRIMARY KEY ( nr_nf,
                                                                        cd_produto );

CREATE TABLE t_spv_nota_fiscal (
    nr_nf        NUMBER(5) NOT NULL,
    nr_cfop      NUMBER(4) NOT NULL,
    cd_cliente   NUMBER(5) NOT NULL,
    dt_saida     DATE NOT NULL,
    dt_emissao   DATE NOT NULL,
    vl_total_nf  NUMBER(9, 2) NOT NULL,
    vl_desconto  NUMBER(3, 1) NOT NULL
);

ALTER TABLE t_spv_nota_fiscal
    ADD CONSTRAINT ck_spv_nf_desconto CHECK ( vl_desconto >= 0
                                              AND vl_desconto <= 25 );

ALTER TABLE t_spv_nota_fiscal ADD CONSTRAINT ck_spv_nf_data CHECK ( dt_saida >= dt_emissao );

ALTER TABLE t_spv_nota_fiscal ADD CONSTRAINT pk_spv_nota_fiscal PRIMARY KEY ( nr_nf );

CREATE TABLE t_spv_produto (
    cd_produto           NUMBER(5) NOT NULL,
    cd_unid_cml          NUMBER(3) NOT NULL,
    ds_produto           VARCHAR2(40) NOT NULL,
    ds_produto_completa  VARCHAR2(100) NOT NULL,
    qt_estoque           NUMBER(4) NOT NULL,
    vl_preco_unitario    NUMBER(7, 2) NOT NULL
);

ALTER TABLE t_spv_produto ADD CONSTRAINT ck_spv_produto_precouni CHECK ( vl_preco_unitario > 0 );

ALTER TABLE t_spv_produto ADD CONSTRAINT pk_spv_produto PRIMARY KEY ( cd_produto );

ALTER TABLE t_spv_produto ADD CONSTRAINT un_spv_produto_desc UNIQUE ( ds_produto );

CREATE TABLE t_spv_unid_cml (
    cd_unid_cml  NUMBER(3) NOT NULL,
    sg_unid_cml  CHAR(6) NOT NULL,
    ds_unid_cml  VARCHAR2(30) NOT NULL
);

ALTER TABLE t_spv_unid_cml ADD CONSTRAINT pk_spv_unid_cml PRIMARY KEY ( cd_unid_cml );

ALTER TABLE t_spv_unid_cml ADD CONSTRAINT un_spv_unid_cml_desc UNIQUE ( ds_unid_cml );

ALTER TABLE t_spv_itens_nf
    ADD CONSTRAINT fk_spv_itens_nf_nf FOREIGN KEY ( nr_nf )
        REFERENCES t_spv_nota_fiscal ( nr_nf );

ALTER TABLE t_spv_itens_nf
    ADD CONSTRAINT fk_spv_itens_nf_produto FOREIGN KEY ( cd_produto )
        REFERENCES t_spv_produto ( cd_produto );

ALTER TABLE t_spv_nota_fiscal
    ADD CONSTRAINT fk_spv_nf_classif_fisc FOREIGN KEY ( nr_cfop )
        REFERENCES t_spv_classif_fiscal ( nr_cfop );

ALTER TABLE t_spv_nota_fiscal
    ADD CONSTRAINT fk_spv_nf_cliente FOREIGN KEY ( cd_cliente )
        REFERENCES t_spv_cliente ( cd_cliente );

ALTER TABLE t_spv_produto
    ADD CONSTRAINT fk_spv_produto_unid_cml FOREIGN KEY ( cd_unid_cml )
        REFERENCES t_spv_unid_cml ( cd_unid_cml );

