/*
Bruno Biancchi - RM84351
Luis Henrique Caldas Altero ? RM88670
Victor Lamprecht  - RM86691
*/


-- POPULANDO A TABELA ALBUM
-- SELECT * FROM T_SSM_ALBUM;

INSERT INTO T_SSM_ALBUM  VALUES (42487,'Tennessee',            TO_DATE('08/11/2020', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (44342,'South Jeolla',         TO_DATE('01/11/2020', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (92271,'Piura',                TO_DATE('26/04/2021', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (30998,'Tolima',               TO_DATE('21/12/2020', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (61131,'Khyber Pakhtoonkhwa',  TO_DATE('07/01/2021', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (50568,'Cartago',              TO_DATE('27/04/2021', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (20897,'Heredia',              TO_DATE('12/05/2021', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (73016,'San Jos?',             TO_DATE('29/04/2019', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (38426,'Jalisco',              TO_DATE('30/12/2020', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (74670,'Anambra',              TO_DATE('12/03/2021', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (96691,'Munster',              TO_DATE('01/11/2020', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (50892,'Bengal',               TO_DATE('04/07/2021', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (13238,'Sikkim',               TO_DATE('05/01/2018', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (62646,'Jeju',                 TO_DATE('28/08/2021', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (31401,'C?rdoba',              TO_DATE('07/03/2021', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (72010,'Oblast',               TO_DATE('26/05/2021', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (81178,'Hidalgo',              TO_DATE('15/04/2020', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (43336,'Potos?',               TO_DATE('29/01/2021', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (69651,'Dalarnas',             TO_DATE('13/03/2021', 'DD/MM/YYYY'));
INSERT INTO T_SSM_ALBUM  VALUES (52118,'Ulster',               TO_DATE('16/06/2021', 'DD/MM/YYYY'));


-- POPULANDO A TABELA PAIS 
-- SELECT * FROM T_SSM_PAIS;

INSERT INTO T_SSM_PAIS VALUES (176, 'M?xico', 'MEX');
INSERT INTO T_SSM_PAIS VALUES (052, 'Nig?ria', 'NGA');
INSERT INTO T_SSM_PAIS VALUES (109, 'Colombia', 'COL');
INSERT INTO T_SSM_PAIS VALUES (057, 'Nova Zel?ndia', 'NLZ');
INSERT INTO T_SSM_PAIS VALUES (143, 'Pol?nia', 'POL');
INSERT INTO T_SSM_PAIS VALUES (150, 'Austr?lia', 'AUS');
INSERT INTO T_SSM_PAIS VALUES (173, 'Zimbabwe', 'ZIM');
INSERT INTO T_SSM_PAIS VALUES (190, 'R?ssia', 'RUS');
INSERT INTO T_SSM_PAIS VALUES (020, 'Brasil', 'BRA');
INSERT INTO T_SSM_PAIS VALUES (076, 'Coreia do Sul', 'KOR');
INSERT INTO T_SSM_PAIS VALUES (186, 'Jap?o', 'JPN');
INSERT INTO T_SSM_PAIS VALUES (034, 'Bangladesh', 'BAN');
INSERT INTO T_SSM_PAIS VALUES (045, 'Canada', 'CAN');
INSERT INTO T_SSM_PAIS VALUES (089, 'It?lia', 'ITA');
INSERT INTO T_SSM_PAIS VALUES (056, 'Chile', 'CNH');
INSERT INTO T_SSM_PAIS VALUES (046, 'Costa Rica', 'CRC');
INSERT INTO T_SSM_PAIS VALUES (067, 'Fran?a', 'FRA');
INSERT INTO T_SSM_PAIS VALUES (014, 'Argentina', 'ARG');
INSERT INTO T_SSM_PAIS VALUES (060, 'Esc?cia', 'SCO');
INSERT INTO T_SSM_PAIS VALUES (065, 'Inglaterra', 'ENG');


-- POPULANDO A TABELA GENERO 
-- SELECT * FROM T_SSM_GENERO;

INSERT INTO T_SSM_GENERO VALUES (59, 'Trap');
INSERT INTO T_SSM_GENERO VALUES (10, 'Samba');
INSERT INTO T_SSM_GENERO VALUES (34, 'Blues');
INSERT INTO T_SSM_GENERO VALUES (23, 'Bossa Nova');
INSERT INTO T_SSM_GENERO VALUES (38, 'Classic Rock');
INSERT INTO T_SSM_GENERO VALUES (20, 'Classica');
INSERT INTO T_SSM_GENERO VALUES (11, 'Country');
INSERT INTO T_SSM_GENERO VALUES (45, 'Dance');
INSERT INTO T_SSM_GENERO VALUES (64, 'Disco');
INSERT INTO T_SSM_GENERO VALUES (33, 'Eletronic');
INSERT INTO T_SSM_GENERO VALUES (66, 'Reggae');
INSERT INTO T_SSM_GENERO VALUES (55, 'Rap');
INSERT INTO T_SSM_GENERO VALUES (57, 'Forr?');
INSERT INTO T_SSM_GENERO VALUES (02, 'Funk');
INSERT INTO T_SSM_GENERO VALUES (56, 'Gospel');
INSERT INTO T_SSM_GENERO VALUES (25, 'Heavy Metal');
INSERT INTO T_SSM_GENERO VALUES (62, 'Hip-Hop');
INSERT INTO T_SSM_GENERO VALUES (41, 'Jazz');
INSERT INTO T_SSM_GENERO VALUES (29, 'Pop');
INSERT INTO T_SSM_GENERO VALUES (58, 'Pagode');


-- POPULANDO TABELA ARTISTA
-- SELECT * FROM T_SSM_ARTISTA;

INSERT INTO T_SSM_ARTISTA VALUES (4882, 'Moana Raymond');
INSERT INTO T_SSM_ARTISTA VALUES (7405, 'Quinn Bradford');
INSERT INTO T_SSM_ARTISTA VALUES (1572, 'Reagan Ortega');
INSERT INTO T_SSM_ARTISTA VALUES (2573, 'Adena Ratliff');
INSERT INTO T_SSM_ARTISTA VALUES (7115, 'Belle Crawford');
INSERT INTO T_SSM_ARTISTA VALUES (7859, 'Arsenio Bauer');
INSERT INTO T_SSM_ARTISTA VALUES (6812, 'Arsenio Foreman');
INSERT INTO T_SSM_ARTISTA VALUES (5506, 'Vance Dalton');
INSERT INTO T_SSM_ARTISTA VALUES (1873, 'Chase Case');
INSERT INTO T_SSM_ARTISTA VALUES (2208, 'Imogene Rutledge');
INSERT INTO T_SSM_ARTISTA VALUES (7664, 'Melanie Newman');
INSERT INTO T_SSM_ARTISTA VALUES (3213, 'Ima Mcleod');
INSERT INTO T_SSM_ARTISTA VALUES (5459, 'Sharon Mcneil');
INSERT INTO T_SSM_ARTISTA VALUES (4148, 'Ashton Gordon');
INSERT INTO T_SSM_ARTISTA VALUES (7134, 'Jeanette Matthews');
INSERT INTO T_SSM_ARTISTA VALUES (8602, 'Yvette Allison');
INSERT INTO T_SSM_ARTISTA VALUES (7300, 'Buffy Lang');
INSERT INTO T_SSM_ARTISTA VALUES (4508, 'Rama Sherman');
INSERT INTO T_SSM_ARTISTA VALUES (2241, 'Yvonne Morgan');
INSERT INTO T_SSM_ARTISTA VALUES (4522, 'Hedy Morin');


-- POPULANDO A TABELA USUARIO
-- SELECT * FROM T_SSM_USUARIO;

INSERT INTO T_SSM_USUARIO  VALUES (929005,176,'tincidunt.donec@semperrutrum.com','Alden Porter',
                           TO_DATE('07/08/2004', 'DD/MM/YYYY'), 'H','A@e`oD5nx^d]+', 11959524838);
INSERT INTO T_SSM_USUARIO  VALUES (556825,052,'fringilla.mauris@atvelitpellentesque.org','Ezekiel Craft',
                           TO_DATE('06/01/2000', 'DD/MM/YYYY'), 'NB','uE{M^f^#?7pe:', 27945451212);
INSERT INTO T_SSM_USUARIO  VALUES (854538,109,'est.mollis.non@pellentesquea.com','Ainsley Lang',
                           TO_DATE('01/03/1980', 'DD/MM/YYYY'), 'M','dQVHEzOHynJU9', 11971413157);
INSERT INTO T_SSM_USUARIO  VALUES (668964,057,'ornare.lectus@hendreritneque.net','Chloe Sears',
                           TO_DATE('24/08/1994', 'DD/MM/YYYY'), 'M','U>rMB5k-7h[`', 69948728473);
INSERT INTO T_SSM_USUARIO  VALUES (481060,143,'quisque.libero@dignissimmagna.com','Simone Maxwell',
                           TO_DATE('06/01/1979', 'DD/MM/YYYY'), 'M','2~+eGPLX9THSB', 11913400547);
INSERT INTO T_SSM_USUARIO  VALUES (494076,150,'vel.arcu@vehicula.com','Joseph Conway',
                           TO_DATE('08/05/1979', 'DD/MM/YYYY'), 'H','RI.4rCMr?Rj!g', 65967125402);
INSERT INTO T_SSM_USUARIO  VALUES (291771,173,'quis.accumsan@erat.com','Ingrid Johnson',
                           TO_DATE('25/12/1997', 'DD/MM/YYYY'), 'M','gAB"n+^z6J?-j', 21928769773);
INSERT INTO T_SSM_USUARIO  VALUES (453504,190,'sed.id.risus@diameu.com','Inga Brown',
                           TO_DATE('29/08/1993', 'DD/MM/YYYY'), 'NB','b97egg0DUGJ`P', 41976635633);
INSERT INTO T_SSM_USUARIO  VALUES (194032,020,'cras.interdum.nunc@donec.com','Ruth Emerson',
                           TO_DATE('23/03/1979', 'DD/MM/YYYY'), 'M','ADOC7nd^~6wV!', 28952805358);
INSERT INTO T_SSM_USUARIO  VALUES (494223,076,'auctor.mauris@sit.com','Amir Jennings',
                           TO_DATE('10/03/2008', 'DD/MM/YYYY'), 'H','blF@f"Htp4ms6', 11926172535);
INSERT INTO T_SSM_USUARIO  VALUES (444158,186,'eget.dictum@anteiaculis.com','Hamilton Hill',
                           TO_DATE('19/09/2000', 'DD/MM/YYYY'), 'H','L"j6SkXrz<Rhw', 48977295196);
INSERT INTO T_SSM_USUARIO  VALUES (583753,034,'viverra@molestie.org','Carla Brewer',
                           TO_DATE('18/09/1998', 'DD/MM/YYYY'), 'M','L"wMD`M2j]59mS7', 11915784216);                           
INSERT INTO T_SSM_USUARIO  VALUES (937342,045,'dolor.fusce.mi@risusdonec.edu','Bert Lawson',
                           TO_DATE('30/06/2004', 'DD/MM/YYYY'), 'H','J*V@3%mcz', 68953697321);                           
INSERT INTO T_SSM_USUARIO  VALUES (591562,089,'donec.nibh@urnavivamus.com','Debra Olson',
                           TO_DATE('20/06/2001', 'DD/MM/YYYY'), 'M','}aYp>^odsp1Dp', 11993992985);
INSERT INTO T_SSM_USUARIO  VALUES (798232,056,'nulla.integer.urna@nonhendreritid.com','Yuri Santana',
                           TO_DATE('25/01/2006', 'DD/MM/YYYY'), 'NB','n}V(s"[8ID,.v', 11970031400);
INSERT INTO T_SSM_USUARIO  VALUES (596565,046,'eget.metus@orci.org','Kenyon Eaton',
                           TO_DATE('16/06/1990', 'DD/MM/YYYY'), 'H','n#MzRPGuw?(J5', 79968961475);                           
INSERT INTO T_SSM_USUARIO  VALUES (319513,067,'tellus@enimnon.com', 'Kato Forbes',
                           TO_DATE('29/04/1991', 'DD/MM/YYYY'), 'H','r,<gT@j8]2', 85981856465);                           
INSERT INTO T_SSM_USUARIO  VALUES (108981,014,'mauris.blandit@mauriselitdictum.edu','Basia Justice',
                           TO_DATE('23/04/2000', 'DD/MM/YYYY'), 'NB','%1g5^#N!d$?#Q', 51960965684);                           
INSERT INTO T_SSM_USUARIO  VALUES (846924,060,'et.libero@netuset.net','Mason Hurley',
                           TO_DATE('12/08/2010', 'DD/MM/YYYY'), 'H','l7/3~S&<GA"`X', 11958216810);                           
INSERT INTO T_SSM_USUARIO  VALUES (992247,065,'mattis.velit@ametloremsemper.edu','Amena Martin',
                           TO_DATE('08/01/1978', 'DD/MM/YYYY'), 'M','LAN{CX0H^*y(e', 88987353619);

-- POPULANDO A TABELA ALBUM USUARIO
-- SELECT * FROM T_SSM_ALBUM_USUARIO;

INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (929005,42487,1);
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (556825,30998,0);
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (854538,44342,1);
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (668964,72010,1);
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (481060,61131,1);
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (494076,81178,1);
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (291771,20897,0);
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (453504,38426,0);
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (194032,62646,1);
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (494223,52118,1);
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (444158,50568,1);
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (583753,13238,1);
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (937342,92271,1); 
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (591562,43336,0);
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (798232,74670,1);
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (596565,31401,0);
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (319513,96691,1); 
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (108981,73016,1);
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (846924,50892,0);
INSERT INTO T_SSM_ALBUM_USUARIO  VALUES (992247,69651,1);



-- POPULANDO A TABELA PLAYLIST
-- SELECT * FROM T_SSM_MUSICA;

INSERT INTO T_SSM_PLAYLIST VALUES (21550, 929005, 'Pagode', 'publica'); 
INSERT INTO T_SSM_PLAYLIST VALUES (21725, 556825, 'Pop', 'publica'); 
INSERT INTO T_SSM_PLAYLIST VALUES (85000, 854538, 'Jazz', 'privada'); 
INSERT INTO T_SSM_PLAYLIST VALUES (79144, 668964, 'Hip-Hop', 'privada'); 
INSERT INTO T_SSM_PLAYLIST VALUES (17155, 481060, 'Heavy Metal', 'publica'); 
INSERT INTO T_SSM_PLAYLIST VALUES (22267, 494076, 'Gospel', 'publica'); 
INSERT INTO T_SSM_PLAYLIST VALUES (74128, 291771, 'Funk', 'privada'); 
INSERT INTO T_SSM_PLAYLIST VALUES (77460, 453504, 'Forr?', 'privada'); 
INSERT INTO T_SSM_PLAYLIST VALUES (93581, 194032, 'Rap', 'publica'); 
INSERT INTO T_SSM_PLAYLIST VALUES (31558, 494223, 'Reggae', 'publica'); 
INSERT INTO T_SSM_PLAYLIST VALUES (42790, 444158, 'Eltronic', 'privada'); 
INSERT INTO T_SSM_PLAYLIST VALUES (32900, 583753, 'Disco', 'publica'); 
INSERT INTO T_SSM_PLAYLIST VALUES (96249, 937342, 'Dance', 'privada'); 
INSERT INTO T_SSM_PLAYLIST VALUES (25323, 591562, 'Country', 'publica'); 
INSERT INTO T_SSM_PLAYLIST VALUES (72179, 798232, 'Classica', 'publica'); 
INSERT INTO T_SSM_PLAYLIST VALUES (44043, 596565, 'Classic Rock', 'privada'); 
INSERT INTO T_SSM_PLAYLIST VALUES (57990, 319513, 'Bossa Nova', 'publica'); 
INSERT INTO T_SSM_PLAYLIST VALUES (27455, 108981, 'Blues', 'publica'); 
INSERT INTO T_SSM_PLAYLIST VALUES (93066, 846924, 'Samba', 'privada'); 
INSERT INTO T_SSM_PLAYLIST VALUES (93117, 992247, 'Trap', 'privada'); 

 

-- POPULANDO A TABELA MUSICA
-- SELECT * FROM T_SSM_MUSICA;

INSERT INTO T_SSM_MUSICA VALUES (47097, 59, 
'The London', 'TheLondon.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Trap', 
TO_DATE('23/05/2019', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (63543, 10, 
'Deixa Acontecer', 'DeixaAcontecer.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Samba', 
TO_DATE('16/03/2001', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (13586, 34, 
'The Sky Is Crying', 'TheSkyIsCrying.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Blues', 
TO_DATE('27/11/1984', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (20057, 23, 
'?guas De Mar?o', '?guasDeMar?o.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Bossa Nova', 
TO_DATE('15/03/1972', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (33261, 38, 
'Bohemian Rhapsody', 'BohemianRhapsody.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Classic Rock', 
TO_DATE('21/11/1975', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (75681, 20, 
'Fur Elise', 'FurElise.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Classica', 
TO_DATE('27/04/1810', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (97431, 11, 
'Hurt', 'Hurt.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Country', 
TO_DATE('17/04/1995', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (46811, 45, 
'Tomorrow Can Wait', 'TomorrowCanWait.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Dance', 
TO_DATE('07/07/2008', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (51471, 64, 
'Billie Jean', 'BillieJean.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Disco', 
TO_DATE('02/01/1982', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (68611, 33, 
'Alone', 'Alone.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Eletronic', 
TO_DATE('13/05/2016', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (79041, 66, 
'L?grimas De Jah', 'L?grimasDeJah.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Reggae', 
TO_DATE('20/04/2007', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (33417, 55, 
'Lovely', 'Lovely.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Rap', 
TO_DATE('26/04/2018', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (12356, 57, 
'Recairei', 'Recairei.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Forr?', 
TO_DATE('17/04/2020', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (84855, 02, 
'Bica Na Canela', 'BicaNaCanela.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Funk', 
TO_DATE('31/10/2019', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (98836, 56, 
'Faz Um Milagre Em Mim', 'FazUmMilagreEmMim.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Gospel', 
TO_DATE('11/09/2009', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (69046, 25, 
'Psychosocial', 'Psychosocial.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Heavy Metal', 
TO_DATE('26/06/2008', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (14809, 62, 
'In Da Club', 'InDaClub.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Hip-Hop', 
TO_DATE('07/01/2003', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (24404, 41, 
'Lucille', 'Lucille.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Jazz', 
TO_DATE('27/05/1968', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (74889, 29, 
'Happier', 'Happier.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Pop', 
TO_DATE('07/01/2003', 'DD/MM/YYYY'));
INSERT INTO T_SSM_MUSICA VALUES (79337, 58, 
'Camisa Dez', 'CamisaDez.mp3', 'C:\Users\Admin\Documentos\Sistema de Streaming de Musica\Tabela Musica\Genero Pagode', 
TO_DATE('02/02/2010', 'DD/MM/YYYY'));


-- POPULANDO A TABELA FAIXAS DO ALBUM
-- SELECT * FROM T_SSM_FAIXAS_DO_ALBUM;

INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (76, 42487, 47097, (40.35));  
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (90, 44342, 63543, (52.23)); 
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (66, 92271, 13586, (23.29)); 
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (92, 30998, 20057, (42.53)); 
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (34, 61131, 33261, (50.59)); 
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (21, 50568, 75681, (12.23)); 
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (85, 20897, 97431, (15.27)); 
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (50, 73016, 46811, (17.28)); 
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (52, 38426, 51471, (41.01)); 
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (47, 74670, 68611, (72.23)); 
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (11, 96691, 79041, (88.29)); 
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (24, 50892, 33417, (25.25)); 
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (83, 13238, 12356, (96.58)); 
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (81, 62646, 84855, (75.17)); 
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (15, 31401, 98836, (26.12)); 
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (43, 72010, 69046, (40.20)); 
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (22, 81178, 14809, (42.28)); 
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (67, 43336, 24404, (62.01)); 
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (54, 69651, 74889, (51.15)); 
INSERT INTO T_SSM_FAIXAS_DO_ALBUM VALUES (23, 52118, 79337, (66.26)); 

-- POPULANDO A TABELA ARTISTA MUSICA
-- SELECT * FROM T_SSM_ARTISTA_MUSICA;

INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (4882, 47097, 1, 1);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (7405, 63543, 1, 0);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (1572, 13586, 0, 1);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (2573, 20057, 1, 1);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (7115, 33261, 0, 1);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (7859, 75681, 1, 0);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (6812, 97431, 1, 1);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (5506, 46811, 1, 0);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (1873, 51471, 1, 0);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (2208, 68611, 1, 1);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (7664, 79041, 0, 1);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (3213, 33417, 1, 0);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (5459, 12356, 1, 0);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (4148, 84855, 0, 1);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (7134, 98836, 1, 1);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (8602, 69046, 0, 1);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (7300, 14809, 1, 0);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (4508, 24404, 1, 1);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (2241, 74889, 0, 1);
INSERT INTO T_SSM_ARTISTA_MUSICA VALUES (4522, 79337, 1, 1);


-- POPULANDO A TABELA FAIXAS DA PLAYLIST
-- SELECT * FROM T_SSM_FAIXAS_DA_PLAYLIST;

INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (86, 21550, 929005, 47097, (56.45));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (47, 21725, 556825, 63543, (59.36));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (16, 85000, 854538, 13586, (67.29));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (87, 79144, 668964, 20057, (14.56));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (49, 17155, 481060, 33261, (52.29));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (26, 22267, 494076, 75681, (97.23));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (68, 74128, 291771, 97431, (18.59));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (96, 77460, 453504, 46811, (41.46));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (25, 93581, 194032, 51471, (75.14));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (43, 31558, 494223, 68611, (38.38));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (33, 42790, 444158, 79041, (44.22));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (98, 32900, 583753, 33417, (57.31));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (57, 96249, 937342, 12356, (51.45));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (83, 25323, 591562, 84855, (63.52));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (94, 72179, 798232, 98836, (50.29));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (99, 44043, 596565, 69046, (33.31));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (56, 57990, 319513, 14809, (46.47));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (21, 27455, 108981, 24404, (38.51));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (62, 93066, 846924, 74889, (41.45));
INSERT INTO T_SSM_FAIXAS_DA_PLAYLIST VALUES (41, 93117, 992247, 79337, (36.52));


COMMIT;