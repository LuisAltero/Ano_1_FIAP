-- Gerado por Oracle SQL Developer Data Modeler 20.4.0.374.0801
--   em:        2021-06-01 10:50:10 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE t_trl_avaliacao (
    cd_avaliacao           NUMBER(3) NOT NULL,
    nr_quarto              NUMBER(3) NOT NULL,
    cd_cliente             NUMBER(5) NOT NULL,
    cd_hotel               NUMBER(2) NOT NULL,
    ds_avaliacao           VARCHAR2(500),
    qt_estrelas_avaliacao  NUMBER(5)
);

ALTER TABLE t_trl_avaliacao
    ADD CONSTRAINT pk_trl_avaliacao PRIMARY KEY ( cd_avaliacao,
                                                  nr_quarto,
                                                  cd_hotel,
                                                  cd_cliente );

CREATE TABLE t_trl_cliente (
    cd_cliente        NUMBER(5) NOT NULL,
    nm_cliente        VARCHAR2(50) NOT NULL,
    nr_rg             NUMBER(8) NOT NULL,
    nr_rg_digito      CHAR(1) NOT NULL,
    nr_cpf            NUMBER(9) NOT NULL,
    nr_cpf_digito     NUMBER(2) NOT NULL,
    nr_idade_cliente  NUMBER(2) NOT NULL,
    nr_celular        NUMBER(11) NOT NULL,
    ds_endereco       VARCHAR2(100) NOT NULL,
    ds_email          VARCHAR2(50) NOT NULL
);

ALTER TABLE t_trl_cliente ADD CONSTRAINT pk_trl_cliente PRIMARY KEY ( cd_cliente );

ALTER TABLE t_trl_cliente ADD CONSTRAINT un_trl_cliente_cpf UNIQUE ( nr_cpf,
                                                                     nr_cpf_digito );

ALTER TABLE t_trl_cliente ADD CONSTRAINT un_trl_cliente_rg UNIQUE ( nr_rg,
                                                                    nr_rg_digito );

CREATE TABLE t_trl_dependente (
    cd_dependente        NUMBER(2) NOT NULL,
    cd_cliente           NUMBER(5) NOT NULL,
    nm_dependente        VARCHAR2(50) NOT NULL,
    nr_idade_dependente  NUMBER(2) NOT NULL
);

ALTER TABLE t_trl_dependente ADD CONSTRAINT ck_trl_dependente_idade CHECK ( nr_idade_dependente < 18 );

ALTER TABLE t_trl_dependente ADD CONSTRAINT pk_trl_dependente PRIMARY KEY ( cd_dependente,
                                                                            cd_cliente );

CREATE TABLE t_trl_hotel (
    cd_hotel     NUMBER(2) NOT NULL,
    nm_hotel     VARCHAR2(50) NOT NULL,
    ds_hotel     VARCHAR2(500) NOT NULL,
    ds_endereco  VARCHAR2(100) NOT NULL,
    nr_telefone  NUMBER(11) NOT NULL,
    qt_estrela   NUMBER(5) NOT NULL
);

ALTER TABLE t_trl_hotel ADD CONSTRAINT pk_trl_hotel PRIMARY KEY ( cd_hotel );

CREATE TABLE t_trl_quarto (
    nr_quarto        NUMBER(3) NOT NULL,
    cd_hotel         NUMBER(2) NOT NULL,
    ds_quarto        VARCHAR2(100) NOT NULL,
    ds_tipo_quarto   VARCHAR2(30) NOT NULL,
    nr_andar_quarto  NUMBER(2) NOT NULL
);

ALTER TABLE t_trl_quarto ADD CONSTRAINT pk_trl_quarto PRIMARY KEY ( nr_quarto,
                                                                    cd_hotel );

CREATE TABLE t_trl_reserva (
    nr_reserva    NUMBER(3) NOT NULL,
    nr_quarto     NUMBER(3) NOT NULL,
    cd_cliente    NUMBER(5) NOT NULL,
    cd_hotel      NUMBER(2) NOT NULL,
    dt_check_in   DATE NOT NULL,
    dt_check_out  DATE NOT NULL,
    vl_reserva    NUMBER(5, 2) NOT NULL
);

ALTER TABLE t_trl_reserva ADD CONSTRAINT ck_trl_reserva_data CHECK ( dt_check_out >= dt_check_in );

ALTER TABLE t_trl_reserva
    ADD CONSTRAINT pk_trl_reserva PRIMARY KEY ( nr_reserva,
                                                nr_quarto,
                                                cd_hotel,
                                                cd_cliente );

ALTER TABLE t_trl_avaliacao
    ADD CONSTRAINT fk_trl_avaliacao_cliente FOREIGN KEY ( cd_cliente )
        REFERENCES t_trl_cliente ( cd_cliente );

ALTER TABLE t_trl_avaliacao
    ADD CONSTRAINT fk_trl_avaliacao_quarto FOREIGN KEY ( nr_quarto,
                                                         cd_hotel )
        REFERENCES t_trl_quarto ( nr_quarto,
                                  cd_hotel );

ALTER TABLE t_trl_dependente
    ADD CONSTRAINT fk_trl_dependente_cliente FOREIGN KEY ( cd_cliente )
        REFERENCES t_trl_cliente ( cd_cliente );

ALTER TABLE t_trl_quarto
    ADD CONSTRAINT fk_trl_quarto_hotel FOREIGN KEY ( cd_hotel )
        REFERENCES t_trl_hotel ( cd_hotel );

ALTER TABLE t_trl_reserva
    ADD CONSTRAINT fk_trl_reserva_cliente FOREIGN KEY ( cd_cliente )
        REFERENCES t_trl_cliente ( cd_cliente );

ALTER TABLE t_trl_reserva
    ADD CONSTRAINT fk_trl_reserva_quarto FOREIGN KEY ( nr_quarto,
                                                       cd_hotel )
        REFERENCES t_trl_quarto ( nr_quarto,
                                  cd_hotel );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             0
-- ALTER TABLE                             16
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
