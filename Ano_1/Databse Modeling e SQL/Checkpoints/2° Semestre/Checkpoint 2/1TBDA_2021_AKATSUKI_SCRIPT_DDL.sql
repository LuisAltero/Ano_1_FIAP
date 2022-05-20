/*
Bruno Biancchi - RM84351
Luis Henrique Caldas Altero – RM88670
Victor Lamprecht  - RM86691
*/



-- Criação dos drops
/*
DROP TABLE t_ssm_usuario CASCADE CONSTRAINTS;
DROP TABLE t_ssm_playlist CASCADE CONSTRAINTS;
DROP TABLE t_ssm_pais CASCADE CONSTRAINTS;
DROP TABLE t_ssm_musica CASCADE CONSTRAINTS;
DROP TABLE t_ssm_genero CASCADE CONSTRAINTS;
DROP TABLE t_ssm_faixas_do_album CASCADE CONSTRAINTS;
DROP TABLE t_ssm_faixas_da_playlist CASCADE CONSTRAINTS;
DROP TABLE t_ssm_artista_musica CASCADE CONSTRAINTS;
DROP TABLE t_ssm_artista CASCADE CONSTRAINTS;
DROP TABLE t_ssm_album_usuario CASCADE CONSTRAINTS;
DROP TABLE t_ssm_album CASCADE CONSTRAINTS;
*/



-- Criação de tabelas 
CREATE TABLE t_ssm_album (
    cd_album       NUMBER(5)    NOT NULL,
    nm_album       VARCHAR2(40) NOT NULL,
    dt_lancamento  DATE         NOT NULL
);

CREATE TABLE t_ssm_album_usuario (
    cd_usuario   NUMBER(6) NOT NULL,
    cd_album     NUMBER(5) NOT NULL,
    st_favorito  NUMBER(1) NOT NULL
);

CREATE TABLE t_ssm_artista (
    cd_artista  NUMBER(4)    NOT NULL,
    nm_artista  VARCHAR2(50) NOT NULL
);

CREATE TABLE t_ssm_artista_musica (
    cd_artista     NUMBER(4) NOT NULL,
    cd_musica      NUMBER(5) NOT NULL,
    st_interprete  NUMBER(1) NOT NULL,
    st_compositor  NUMBER(1) NOT NULL
);

CREATE TABLE t_ssm_faixas_da_playlist (
    nr_fx_playlist       NUMBER(2)    NOT NULL,
    cd_playlist          NUMBER(5)    NOT NULL,
    cd_usuario           NUMBER(6)    NOT NULL,
    cd_musica            NUMBER(5)    NOT NULL,
    vl_duracao_playlist  NUMBER(4, 2) NOT NULL
);

CREATE TABLE t_ssm_faixas_do_album (
    nr_fx_album       NUMBER(2)    NOT NULL,
    cd_album          NUMBER(5)    NOT NULL,
    cd_musica         NUMBER(5)    NOT NULL,
    vl_duracao_album  NUMBER(4, 2) NOT NULL
);

CREATE TABLE t_ssm_genero (
    cd_genero  NUMBER(2)    NOT NULL,
    nm_genero  VARCHAR2(30) NOT NULL
);

CREATE TABLE t_ssm_musica (
    cd_musica              NUMBER(5)     NOT NULL,
    cd_genero              NUMBER(2)     NOT NULL,
    nm_musica              VARCHAR2(40)  NOT NULL,
    nm_audio_musica        VARCHAR2(60)  NOT NULL,
    ds_localizacao_musica  VARCHAR2(100) NOT NULL,
    dt_composicao          DATE          NULL
);

CREATE TABLE t_ssm_pais (
    cd_pais        NUMBER(3)    NOT NULL,
    nm_pais        VARCHAR2(30) NOT NULL,
    sg_sigla_pais  CHAR(3)      NOT NULL
);

CREATE TABLE t_ssm_playlist (
    cd_playlist       NUMBER(5)    NOT NULL,
    cd_usuario        NUMBER(6)    NOT NULL,
    nm_playlist       VARCHAR2(50) NOT NULL,
    ds_tipo_playlist  CHAR(7)      NOT NULL
);

CREATE TABLE t_ssm_usuario (
    cd_usuario     NUMBER(6)    NOT NULL,
    cd_pais        NUMBER(3)    NOT NULL,
    ds_email       VARCHAR2(60) NOT NULL,
    nm_usuario     VARCHAR2(50) NOT NULL,
    dt_nascimento  DATE         NOT NULL,
    ds_genero      CHAR(2)      NOT NULL,
    ds_senha       VARCHAR2(20) NOT NULL,
    nr_telefone    NUMBER(11)       NULL
);



-- Criação das constraints: PK, CK, UN
ALTER TABLE t_ssm_album ADD CONSTRAINT pk_ssm_album PRIMARY KEY ( cd_album );

ALTER TABLE t_ssm_album ADD CONSTRAINT un_ssm_album_titulo UNIQUE ( nm_album );

ALTER TABLE t_ssm_album_usuario
    ADD CONSTRAINT ck_ssm_album_usuario_st CHECK ( st_favorito = 0
                                                   OR st_favorito = 1 );

ALTER TABLE t_ssm_album_usuario ADD CONSTRAINT pk_ssm_album_usuario PRIMARY KEY ( cd_usuario,
                                                                                  cd_album );

ALTER TABLE t_ssm_artista ADD CONSTRAINT pk_ssm_artista PRIMARY KEY ( cd_artista );

ALTER TABLE t_ssm_artista_musica
    ADD CONSTRAINT ck_ssm_artista_musica_st_comp CHECK ( st_compositor = 0
                                                         OR st_compositor = 1 );

ALTER TABLE t_ssm_artista_musica
    ADD CONSTRAINT ck_ssm_artista_musica_st_inte CHECK ( st_interprete = 0
                                                         OR st_interprete = 1 );

ALTER TABLE t_ssm_artista_musica ADD CONSTRAINT pk_ssm_artista_musica PRIMARY KEY ( cd_musica,
                                                                                    cd_artista );

ALTER TABLE t_ssm_faixas_da_playlist
    ADD CONSTRAINT pk_ssm_fx_da_playlist PRIMARY KEY ( cd_playlist,
                                                       cd_usuario,
                                                       nr_fx_playlist );

ALTER TABLE t_ssm_faixas_do_album ADD CONSTRAINT pk_ssm_fx_do_album PRIMARY KEY ( nr_fx_album,
                                                                                  cd_album );

ALTER TABLE t_ssm_genero ADD CONSTRAINT pk_ssm_genero PRIMARY KEY ( cd_genero );

ALTER TABLE t_ssm_genero ADD CONSTRAINT un_ssm_genero_genero UNIQUE ( nm_genero );


ALTER TABLE t_ssm_musica ADD CONSTRAINT pk_ssm_musica PRIMARY KEY ( cd_musica );


ALTER TABLE t_ssm_pais ADD CONSTRAINT pk_ssm_pais PRIMARY KEY ( cd_pais );

ALTER TABLE t_ssm_pais ADD CONSTRAINT un_ssm_pais_nome UNIQUE ( nm_pais );


ALTER TABLE t_ssm_playlist
    ADD CONSTRAINT ck_ssm_playlist_tipo CHECK ( upper(ds_tipo_playlist) = 'PUBLICA'
                                                OR upper(ds_tipo_playlist) = 'PRIVADA' );

ALTER TABLE t_ssm_playlist ADD CONSTRAINT pk_ssm_playlist PRIMARY KEY ( cd_playlist,
                                                                        cd_usuario );

ALTER TABLE t_ssm_playlist ADD CONSTRAINT un_ssm_playlist_nome UNIQUE ( nm_playlist );


ALTER TABLE t_ssm_usuario
    ADD CONSTRAINT ck_ssm_usuario_genero CHECK ( upper(ds_genero) = 'H'
                                                 OR upper(ds_genero) = 'M'
                                                 OR upper(ds_genero) = 'NB' );

ALTER TABLE t_ssm_usuario ADD CONSTRAINT pk_ssm_usuario PRIMARY KEY ( cd_usuario );


ALTER TABLE t_ssm_usuario ADD CONSTRAINT un_ssm_usuario_email UNIQUE ( ds_email );



-- Criação das chaves estrangeiras
ALTER TABLE t_ssm_album_usuario
    ADD CONSTRAINT fk_ssm_album_usuario_album FOREIGN KEY ( cd_album )
        REFERENCES t_ssm_album ( cd_album );


ALTER TABLE t_ssm_album_usuario
    ADD CONSTRAINT fk_ssm_album_usuario_usuario FOREIGN KEY ( cd_usuario )
        REFERENCES t_ssm_usuario ( cd_usuario );


ALTER TABLE t_ssm_artista_musica
    ADD CONSTRAINT fk_ssm_artista_musica_artista FOREIGN KEY ( cd_artista )
        REFERENCES t_ssm_artista ( cd_artista );


ALTER TABLE t_ssm_artista_musica
    ADD CONSTRAINT fk_ssm_artista_musica_musica FOREIGN KEY ( cd_musica )
        REFERENCES t_ssm_musica ( cd_musica );


ALTER TABLE t_ssm_faixas_da_playlist
    ADD CONSTRAINT fk_ssm_fx_da_playlist_musica FOREIGN KEY ( cd_musica )
        REFERENCES t_ssm_musica ( cd_musica );


ALTER TABLE t_ssm_faixas_da_playlist
    ADD CONSTRAINT fk_ssm_fx_da_playlist_playlist FOREIGN KEY ( cd_playlist,
                                                                cd_usuario )
        REFERENCES t_ssm_playlist ( cd_playlist,
                                    cd_usuario );


ALTER TABLE t_ssm_faixas_do_album
    ADD CONSTRAINT fk_ssm_fx_do_album_album FOREIGN KEY ( cd_album )
        REFERENCES t_ssm_album ( cd_album );


ALTER TABLE t_ssm_faixas_do_album
    ADD CONSTRAINT fk_ssm_fx_do_album_musica FOREIGN KEY ( cd_musica )
        REFERENCES t_ssm_musica ( cd_musica );


ALTER TABLE t_ssm_musica
    ADD CONSTRAINT fk_ssm_musica_genero FOREIGN KEY ( cd_genero )
        REFERENCES t_ssm_genero ( cd_genero );


ALTER TABLE t_ssm_playlist
    ADD CONSTRAINT fk_ssm_playlist_usuario FOREIGN KEY ( cd_usuario )
        REFERENCES t_ssm_usuario ( cd_usuario );


ALTER TABLE t_ssm_usuario
    ADD CONSTRAINT fk_ssm_usuario_pais FOREIGN KEY ( cd_pais )
        REFERENCES t_ssm_pais ( cd_pais );


COMMIT;
