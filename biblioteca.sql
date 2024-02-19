create database biblioteca;
use biblioteca;

create table endereco
(
	id int not null primary key,
    logradouro varchar(50) not null,
    numero int,
    complemento varchar(45),
    cidade varchar(45) not null,
    pais varchar(45) not null,
    estado varchar(45) not null
);
insert into  endereco (id, logradouro, numero, complemento, cidade, estado, pais) values
    (001, 'Rua Funchal', 538, 'Conjuntos 52 e 54', 'São Paulo', 'SP','Brasil'), 
    (002, 'Rua Marquês de Pombal',25, '2º Andar', 'Rio de Janeiro', 'RJ', 'Brasil'),
    (003, 'Avenida das Américas', 500, 'Bl. 12 - Sala 303', 'Rio de Janeiro', 'RJ', 'Brasil'),
    (004, 'Rua Argentina', 120, null, 'Rio de Janeiro', 'RJ', 'Brasil'),
    (005, 'Rua Santa Clara', 50, null, 'Rio de Janeiro', 'RJ', 'Brasil'),
    (006, 'Praça Floriano', 19, 'Sala 3001 Parte C', 'Rio de Janeiro', 'RJ', 'Brasil'),
    (007, 'Rua Argentina', 171, null, 'Rio de Janeiro', 'RJ', 'Brasil'),
    (008, 'Rua Washington Luiz', 09, null, 'Rio de Janeiro', 'RJ', 'Brasil'),
    (009, 'Rua Frei Luiz',100, null, 'Rio de Janeiro', 'RJ', 'Brasil'),
    (010, 'Suite 400',19808, null, 'Wilmington','Carolina do Norte', 'Estados Unidos '),
    (011, 'Rua Argentina', 171,null, 'Rio de Janeiro', 'RJ', 'Brasil'),
    (012, 'Rua Voluntários da Pátria', 45, null, 'Rio de Janeiro', 'RJ', 'Brasil'),
    (013, 'Rua Luis Antônio dos Santos', 110, null, 'São Paulo', 'SP','Brasil'),
    (014, 'Rua Bela Cintra', 986, '4º andar', 'São Paulo', 'SP','Brasil'),
    (015, 'Avenida Cândido de Abreu', 427, 'Conj 1401', 'Curitiba', 'PR', 'Brasil'),
    (016, 'Avenida Andrômeda',  885, 'Sala 310', 'Barueri', 'SP','Brasil'),
    (017, 'Avenida Presidente Getúlio Vargas', 3812, null, 'Curitiba', 'PR', 'Brasil'),
    (018, 'Rua Antônio Ribeiro', 87, null, 'Porto Alegre', 'RS', 'Brasil'),
    (019, 'Avenida Orlanda Bergamo', 780, null, 'Guarulhos', 'SP', 'Brasil'),
    (020, 'Rua Araujo', 124, 'Andar 1', 'São Paulo', 'SP', 'Brasil'),
    (021, 'Avenida Ribeirao dos Cristais', 200, 'Portao C Predio 400 Docas 27 28 e 29', 'Cajamar', 'SP', 'Brasil');


	
create table editora
(
	cnpj varchar(14) not null primary key,
    nome varchar(45) not null,
    email varchar(45) not null,
    endereco_id int not null,
    foreign key(endereco_id) references endereco(id)
);
insert into  editora (cnpj, nome, email, endereco_id) values 
	('06985027000167', 'Arqueiro', 'atendimento@editoraarqueiro.com.br',  001),
    ('04067191000160', 'Globo Alt', 'globolivros@edglobo.com.br',  002),
    ('05660045000106', 'Intrínseca', 'contato@intrinseca.com.br', 003),
    ('44276105000143', 'Galera', 'sac@record.com.br', 004),
    ('14473069000147', 'Editora Valentina', 'contato@editoravalentina.com.br', 005),
    ('06991538000191', 'Biblioteca Azul', 'globolivros@edglobo.com.br', 002),
    ('33038696000102', 'José Olympio', 'contato@joseolympio.com.br', 007),
    ('00408073000117', 'Brasport', 'joaofranca@openlink.com.br', 008),
    ('31127301000104', 'Editora Vozes', 'contato@vozes.com.br ', 009),
    ('20813959000153', 'HarperCollins', 'chris.goff@harpercollins.com', 010),
    ('33495771000156', 'Record', 'sac@record.com.br', 011),
    ('02310771000100', 'Editora Sextante', 'atendimento@sextante.com.br', 012),
    ('58551185000102', 'Novatec Editora', 'sac@novatec.com.br', 013),
    ('04839149000110', 'BestSeller', 'sac@record.com.br', 011),
    ('05764236000118', 'Planeta', 'faleconosco@editoraplaneta.com.br', 014),
    ('05409268000103', 'Harlequin', 'faleconosco@harlequin.com.br', 015),
    ('29756697000107', 'Faro Editorial', 'contato@faroeditorial.com.br', 016),
    ('26175092000215', 'Buzz Editora', 'contato@buzzeditora.com.br', 017),
    ('90375049000111', 'Suma', 'sac@companhiadasletras.com.br', 018),
    ('17629943000180', 'Zahar',  'contabilidade@companhiadasletras.com.br', 006),
    ('55789390000899', 'Companhia das Letras', 'contabilidade@companhiadasletras.com.br', 019),
    ('03323583000180', 'Veneta',  'contato@veneta.com.br', 020),
    ('03796758000176', 'Melhoramentos',  'sac@melhoramentos.com.br', 021);


create table clientes
(
	cpf varchar(11) not null primary key,
    nome varchar(100) not null,
    nascimento date not null,
    email varchar(45) not null
);
insert into clientes (cpf, nome, nascimento, email) values
	('50735607840', 'Carolina Beltrame', '2005-09-12', 'carolina.beltrame9@gmail.com'),
    ('44880694836', 'Isabela Maria Leonardo', '2005-09-20', 'isabelamarialeonardo@gmail.com'),
    ('40762107879', 'Otavio Macri', '2005-03-31', 'otaviomacri@gmail.com'),
    ('48857377813', 'Gabriela Maria Paro', '2004-03-14', 'gabrielaparomaria@gmail.com'), 
    ('32596203817', 'Luiz Alberto Lucchetta', '1985-06-15', 'luiz.lucchetta@gmail.com'),
    ('44271545894', 'Gabriel Zerio Lopes', '2003-01-17', 'gabriel.zerio@gmail.com'),
    ('54984057898', 'Guilherme Horta Nacci', '2005-03-02', 'guilherme.nacci@gmail.com'),
	('49179218866', 'Levi Santana de Almeida','2002-02-22','levi.santana@gmail.com'),
    ('11392496806', 'Francine Roseli Duarte Beltrame','1968-04-16','francine.roseli@gmail.com'),
	('30984569832', 'Alexandre Garcia Aguado','1984-10-26','alexandre.aguado@ifsp.edu.br'),
	('12345678901', 'Ana Silva Souza','1985-05-15','ana.silvasouza@gmail.com'),
	('23456789012', 'Carlos Oliveira Barretos','1990-09-20','carlos.oliveira@gmail.com'),
    ('34567890123', 'Amanda Pereira Xavier', '1988-03-10', 'amandapereira.xavier@gmail.com'),
    ('45678901234', 'Lucas Santos', '1982-11-05', 'lucas.santos@gmail.com'),
    ('56789012345', 'Isabela Lima Silva', '1995-07-25', 'isabela.lima@gmail.com'),
    ('67890123456', 'Thiago Souza Santos Goes', '1989-12-12', 'thiago.souza@gmail.com'),
    ('78901234567', 'Mariana Pereira Costa', '1987-04-30', 'mariana.costa@gmail.com'),
    ('89012345678', 'João Pereira', '1992-08-18', 'joao.pereira@gmail.com'),
    ('90123456789', 'Laura Maria Oliveira', '1984-06-08', 'laura.oliveira@gmail.com'),
    ('71234567890', 'Felipe Henrique Sampaio Santos', '1998-02-03', 'felipe.santos@gmail.com'),
    ('67930799050', 'Ricardo Pereira', '1985-07-18', 'ricardo.pereira@gmail.com'),
    ('72467204057', 'Marina Santos da Silva', '1999-11-03', 'marina.santos@gmail.com');


			
create table telefone
(
	id int not null primary key,
    numero varchar(20) not null,
    editora_cnpj varchar(14),
    foreign key(editora_cnpj) references editora(cnpj),
    clientes_cpf varchar(11),
    foreign key(clientes_cpf) references clientes(cpf)
);
insert into telefone (id, numero, editora_cnpj, clientes_cpf) values
	(001, '5130236253', '90375049000111', null),
    (002, '1138684492', '06985027000167', null),
    (003, '2132067400', '05660045000106', null),
    (004, '2125852000', '44276105000143', null),
    (005, '2132088777', '14473069000147', null),
    (006, '2125345000', '06991538000191', null),
    (007, '2124013267', '00408073000117', null),
    (008, '2422339000', '31127301000104', null),
    (009, '2125384100', '02310771000100', null),
    (010, '1129596529', '58551185000102', null),
    (011, '1130390917', '04839149000110', null),
    (012, '1130878848', '05764236000118', null),
    (013, '4132537711', '05409268000103', null),
    (014, '1142080868', '29756697000107', null),
    (015, '1137073500', '17629943000180', null),
    (016, '1141712317', '26175092000215', null),
    (017, '1137073500', '55789390000899', null),
    (018, '3534338261', '03796758000176', null),
    (019, '1132111233', '03323583000180', null),
    (020, '19991795352', null, '11332496806'),
    (021, '19998382803', null, '40062107879'),
    (022, '19992886669', null, '48257377813'),
    (023, '19989793856', null, '32576203817'),
    (024, '19989708301', null, '44291545894'),
    (025, '19995420369', null, '54974057898'),
    (026, '19914898784', null, '49139218866'),
    (027, '19981185442', null, '30964569832'),
    (028, '11987654321', null, '12345678901'),
    (029, '21876543210', null, '23456789012'),
    (030, '41654321098', null, '45678901234'),
    (031, '51543210987', null, '56789012345'),
    (032, '12432109876', null, '67890123456'),
    (033, '19321098765', null, '78901234567'),
    (034, '11210987654', null, '89012345678'),
    (035, '17876543210', null, '01234567890');

create table genero
(
	id int not null primary key,
    tipos varchar(45) not null
);
insert into genero (id, tipos) values
	(001, 'Ciências Sociais'),
    (002, 'Suspense'),
    (003, 'Fantasia'),
    (004, 'Ficção científica'),
    (005, 'Ficção clássica'),
    (006, 'Comédia Romântica'),
    (007, 'Computação'),
    (008, 'Religião e Espiritualidade'),
    (009, 'Autoajuda'),
    (010, 'Thriller'),
    (011, 'Literatura'),
    (012, 'Romance Contemporâneo'),
    (013, 'História da Asia'),
    (014, 'LGBTQ+'),
    (015, 'Biografias'),
    (016, 'Graphic Novels'),
    (017, 'Infantil');



create table nacionalidade
(
	id int not null primary key,
    pais varchar(45) not null 
);
insert into nacionalidade (id, pais) values
	(001, 'Sem informação'),
    (002, 'Itália'),
    (003, 'Espanha'),
    (004, 'Reino Unido'),
    (005, 'Estados Unidos'),
    (006, 'Japão'),
    (007, 'Brasil'),
    (008, 'Áustria'),
    (009, 'Malta'),
    (010, 'Suécia'),
    (011, 'Canadá'),
    (012, 'Africa do Sul'),
    (013, 'República de Chipre'),
    (014, 'Coreia do Sul');



create table autores
(
	id int not null primary key,
    nome varchar(100) not null,
	nacionalidade_id int not null,
    foreign key(nacionalidade_id) references nacionalidade(id)
);
insert into autores(id, nome, nacionalidade_id) values
	(001, 'Ali Hazelwood', 002),
    (002, 'Elena Armas', 003),
    (003, 'Freida McFadden', 001),
    (004, 'C. J. Tudor', 004),
    (005, 'Sarah J. Maas', 005),
    (006, 'Toshikazu Kawaguchi', 006),
    (007, 'Ray Bradbury', 005),
    (008, 'Harper Lee', 005),
    (009, 'Carlos Eduardo Vazquez', 007),
    (010, 'João Luiz Carneiro', 007),
    (011, 'George S Clason', 005),
    (012, 'Raphael Montes', 007),
    (013, 'Igor Pires', 007),
    (014, 'Rachael Lippincott', 005),
    (015, 'Michael Wood', 004),
    (016, 'Walter Scheidel', 008),
    (017, 'Leandro Karnal', 007),
    (018, 'Joe Sacco', 009),
    (019, 'Art Spiegelman', 010),
    (020, 'Marianne Dubuc', 011),
    (021, 'J.R.R. Tolkien', 012),
    (022, 'Alex Michaelides', 013),
    (023, 'Haemin Sunim', 014),
    (024, 'Cathy Tanimura', 005),
    (025, 'Viola Davis', 005),
    (026, 'Jasper DeWitt', 005),
    (027, 'Paola Aleksandra', 007),
    (028, 'Gabriela Falvella Stapff', 007),
    (029, 'Christina Lauren', 005),
    (030, 'Britney Spears', 005);

create table emprestimo
(
	id int not null primary key,
    status varchar(45) not null,
    data_saida date not null,
    data_devolucao_esperada date not null,
    data_devolucao date,
    clientes_cpf varchar(11) not null,
    foreign key(clientes_cpf) references clientes(cpf)
);
insert into emprestimo(id, status, data_saida, data_devolucao_esperada, data_devolucao, clientes_cpf) values
	(001, 'Não Devolvido', '2023-06-15', '2023-06-20', null,'50635607840'),
    (002, 'Não Devolvido', '2023-10-13', '2023-10-18', null,'44380694836'),
    (003, 'Devolvido', '2023-05-04', '2023-05-09', '2023-05-09', '40062107879'),
    (004, 'Devolvido', '2023-07-22', '2023-07-27', '2023-07-26', '48257377813'),
    (005, 'Devolvido', '2023-03-16', '2023-03-21', '2023-03-21', '32576203817'),
    (006, 'Devolvido', '2023-04-02', '2023-04-07', '2023-04-06', '44291545894'),
    (007, 'Devolvido', '2023-06-08', '2023-06-13', '2023-06-13', '54974057898'), 
    (008, 'Devolvido', '2023-05-12', '2023-05-17', '2023-05-17', '49139218866'),
    (009, 'Devolvido', '2023-05-01', '2023-05-06', '2023-05-06', '11332496806'),
    (010, 'Devolvido', '2023-11-18', '2023-11-23', '2023-11-23', '30964569832'),
    (011, 'Devolvido', '2023-03-27', '2023-04-01', '2023-04-01', '12345678901'),
    (012, 'Devolvido', '2023-03-27', '2023-04-01', '2023-04-01', '23456789012'),
    (013, 'Não Devolvido', '2023-05-02', '2023-05-07', null, '34567890123'),
    (014, 'Não Devolvido', '2023-07-02' , '2023-07-07', null, '45678901234'),
    (015, 'Devolvido', '2023-05-02', '2023-05-07', '2023-05-07', '56789012345'),
    (016, 'Devolvido', '2023-07-18', '2023-07-23', '2023-07-22', '67890123456'),
    (017, 'Devolvido', '2023-06-11', '2023-06-16', '2023-06-16', '78901234567'),  
    (018, 'Não Devolvido', '2023-08-12', '2023-08-17', null, '89012345678'),
    (019, 'Devolvido', '2023-11-03', '2023-11-08', '2023-11-08', '90123456789'),
    (020, 'Devolvido', '2023-07-21', '2023-07-26', '2023-07-26', '01234567890'),
    (021, 'Devolvido', '2023-04-09', '2023-04-14', '2023-04-13', '67930799050'),
    (022, 'Não Devolvido', '2023-11-10', '2023-11-15', null, '72467204057');



create table livro_emprestimo
(
	livro_id int not null,
    emprestimo_id int not null,
    primary key(livro_id, emprestimo_id),
    foreign key(livro_id) references livro(id),
    foreign key(emprestimo_id) references emprestimo(id)
);
insert into livro_emprestimo (livro_id, emprestimo_id) values
	(001, 001),
    (002, 002),
    (011, 003),
    (012, 004),
    (013, 005),
    (014, 006),
    (015, 007),
    (016, 008),
    (017, 009),
    (018, 010),
    (020, 011),
    (021, 012),
    (022, 013),
    (023, 014),
    (024, 015),
    (025, 016),
    (026, 017),
    (027, 018),
    (028, 019),
    (029, 020),
    (030, 021),
    (031, 022);

create table perdas
(
	id int not null primary key,
    descricao varchar(45) not null 
);
insert into perdas(id, descricao) values
	(001, 'Não devolvido'),
    (002, 'Desastres naturais'),
    (003, 'Vandalismo'),
    (004, 'Uso excessivo e manuseio inadequado'),
    (005, 'Pragas'),
    (006, 'Umidade'),
    (007, 'Luz solar');


        

create table livro_perdas
(
	livro_id int not null primary key,
    foreign key(livro_id) references livro(id),
    data date not null,
    perdas_id int not null,
    foreign key(perdas_id) references perdas(id)
);
insert into livro_perdas (livro_id, data, perdas_id) values
	(001, '2023-06-21', 001),
    (002, '2023-10-19', 001),
    (003, '2023-01-10', 002),
    (004, '2023-04-19', 003),
    (005, '2023-04-26', 003),
    (006, '2023-06-02', 004),
    (007, '2023-02-08', 005),
    (008, '2023-09-13', 007),
    (009, '2023-03-24', 006),
    (010, '2023-05-24', 004),
    (019, '2023-12-14', 003),
    (022, '2023-05-08', 001),
    (023, '2023-07-08', 001),
    (027, '2023-08-18', 001),
    (031, '2023-11-16', 001);


create table livro
(
	id int not null primary key,
    nome varchar(100) not null,
    data_publicacao date not null,
    status varchar(45) not null,
    edicao int not null,
    isbn varchar(13) not null,
    localizacao_prateleira varchar(1) not null,
    localizacao_estante int not null,
    modo_aquisicao varchar(1) not null, -- C=Compra   D =Doação
    data_aquisicao date not null,
    editora_cnpj varchar(14) not null,
    foreign key(editora_cnpj) references editora(cnpj),
    genero_id int not null,
    foreign key(genero_id) references genero(id)
);
insert into livro(id, nome, data_publicacao, status, edicao, isbn, localizacao_estante, localizacao_prateleira, data_aquisicao, modo_aquisicao, editora_cnpj, genero_id) values
	(001, 'A hipótese do amor', '2022-07-05', 'Indisponível', 01, '9786555653304', 04, 'A',  '2023-03-05', 'D', '06985027000167', 006),
    (002, 'A empregada: Bem-vinda à família', '2023-06-13', 'Indisponível', 01, '9786555655063', 16, 'A',  '2023-07-18','C', '06985027000167', 002),
    (003, 'O homem de giz', '2018-03-05',   'Indisponível' , 03, 'B079Z96BFQ', 16, 'E',  '2023-01-08', 'C', '05660045000106', 002),
    (004, 'Cidade da Lua Crescente', '2020-09-28',   'Indisponível' , 02, 'B08GYCTPRR', 06, 'A', '2023-03-20', 'C', '44276105000143', 003),
    (005, 'Antes que o café esfrie', '2022-04-15',   'Indisponível' , 01, 'B09V9DMH2L', 06,  'A',  '2023-01-24', 'C', '14473069000147', 003),
    (006, 'Fahrenheit 451',  '2013-01-22',   'Indisponível'  , 03, 'B00B4BSNKS',  07,  'B', '2023-02-24',   'D',  '06991538000191',  004),
    (007,  'O sol é para todos',  '2015-06-12',    'Indisponível' ,  01, 'B00ZPQ073O', 08, 'E', '2023-02-01',   'C', '33038696000102', 005),
    (008,  'Amor, teoricamente',  '2023-07-31',     'Indisponível' ,  01,   'B0C9V83CHX', 04, 'A',  '2023-08-10',  'C', '06985027000167',  006),
    (009,  'Engenharia de requisitos: software orientado ao negócio',  '2016-08-10',   'Indisponível' ,  02, '8574527904', 05, 'B',  '2023-02-24', 'C', '00408073000117',  007),
	(010,  'Religiões afro-brasileiras: Uma construção teológica',   '2014-01-01',     'Indisponível' ,  02, '8532648371', 14, 'F',  '2023-02-24', 'C', '31127301000104',  008),
    (011, 'Uma farsa de amor na Espanha', '2022-05-10',   'Disponível' , 02, '6555652977',  04, 'G',  '2023-02-09', 'D', '06985027000167', 006),
    (012, 'O homem mais rico da Babilônia', '2017-08-04',   'Disponível' , 03, '8595081530',  01, 'E',  '2023-04-25', 'D', '20813959000153', 009),
    (013, 'O vilarejo', '2015-08-14',   'Disponível' , 04, '8581053041',  17,'E',  '2023-02-15', 'C', '90375049000111', 010),
    (014, 'Textos para tocar cicatrizes', '2022-11-14',   'Disponível' , 01, '6588131712',  13,'G',  '2023-02-08', 'D', '04067191000160', 011),
    (015, 'A cinco passos de você', '2019-02-25',   'Disponível' , 02, '8525067423',  15,'A',  '2023-04-06', 'C', '04067191000160', 012),
    (016, 'História da China: O retrato de uma civilização e de seu povo', '2022-09-05',   'Disponível' , 01, '6555358297',  10,'C',  '2023-03-05', 'D', '05764236000118', 013),
    (017, 'Violência e a história da desigualdade: Da Idade da Pedra ao século XXI', '2020-12-03',   'Disponível' , 02, '8537818763',  03,'H',  '2023-03-05', 'C', '17629943000180', 001),
    (018, 'Preconceito: uma história', '2023-10-20',   'Disponível' , 01, '8535935495',  12,'F',  '2023-11-01', 'D', '55789390000899', 014),
    (019, 'Palestina', '2023-12-04', 'Indisponível', 01, '6586691400', 02,'F', '2023-12-12', 'D', '03323583000180', 015),
    (020, 'Maus', '2005-06-24',   'Disponível'  , 04, '8535906282', 09,'E', '2023-01-27', 'D', '55789390000899', 016),
    (021, 'Lá vem o Ratinho Carteiro!', '2018-02-28',  'Disponível' , 01, '8506082846', 11,'D', '2023-01-27', 'D', '03796758000176', 017),  
    (022, 'O Hobbit',   '2019-07-15',    'Indisponível' ,   01,   '8595084742',   06, 'E', '2023-03-02',  'C',  '20813959000153',  003),
    (023, 'A Paciente Silenciosa',   '2019-05-20',     'Indisponível'  ,   02,  '8501116432',   16, 'A', '2023-03-02',   'C',   '33495771000156',   002),
	(024, 'As Coisas que Você Só Vê Quando Desacelera: Como Manter a Calma em um Mundo Frenético',   '2017-09-27',     'Disponível' ,  02,  '8543105293',   14, 'A',  '2023-03-02',   'D',   '02310771000100',  008),
	(025, 'SQL para Análise de Dados: Técnicas avançadas para transformar dados em insights', '2022-07-22',   'Disponível' ,  01, 'B0B7CN81J2',  05, 'G',  '2023-02-15',   'C',  '58551185000102',  007),
	(026, 'Em busca de mim',   '2022-07-25',     'Disponível' ,  01,   '6557121383',   02, 'B', '2023-04-11',   'C',   '04839149000110',   015),
	(027, 'O Paciente',  '2021-11-01',   'Indisponível'  ,  02,   '655535528X',   17, 'E',   '2023-03-12',   'C',   '05764236000118',   010),
	(028, 'Amor às Causas Perdidas',   '2023-08-25',   'Disponível' , 02,   '6559702804',   15, 'A' , '2023-09-01',   'D',   '05409268000103',   012),
    (029, 'Despertando quem você é: Como viver consciente em um mundo em que todos se sentem perdidos',   '2023-05-02',     'Disponível'  ,  01,  '8542221869',  01,'B',  '2023-05-21',   'C',   '05764236000118',   009),
    (030, 'Imperfeitos',  '2022-03-10',   'Disponível' ,   01,   '6559571289',  04,'C',  '2023-01-27',  'C',   '29756697000107',  006),
	(031, 'A Mulher em Mim',  '2023-10-24',    'Indisponível'  ,  01, '6553932573', 02,'A', '2023-11-01',  'C', '26175092000215', 015);
    
    

create table livro_autores
(
	livro_id int not null,
	autores_id int not null,
    primary key(livro_id, autores_id),
    foreign key(livro_id) references livro(id),
    foreign key(autores_id) references autores(id)
);
insert into livro_autores (livro_id, autores_id) values
	(001, 001),
    (002, 003),
    (003, 004),
    (004, 005),
    (005, 006),
    (006, 007),
    (007, 008),
    (008, 001),
    (009, 009),
    (010, 010),
    (011, 002),
    (012, 011),
    (013, 012),
    (014, 013),
    (015, 014),
    (016, 015),
    (017, 016),
    (018, 017),
    (019, 018),
    (020, 019),
    (021, 020),
    (022, 021),
    (023, 022),
    (024, 023),
    (025, 024),
    (026, 025),
    (027, 026),
    (028, 027),
    (029, 028),
    (030, 029),
    (031, 030);

select editora.cnpj, editora.nome, editora.email, endereco.cidade, telefone.numero as'telefone'
	from endereco inner join editora
		on (editora.endereco_id = endereco.id)
			left join telefone
				on (editora.cnpj=telefone.editora_cnpj);

select c.cpf, c.nome, c.nascimento, c.email, t.numero as 'telefone'
	from clientes c left join telefone t
		on (c.cpf = t.clientes_cpf)
        order by c.nome asc;


select a.nome, n.pais as 'país', l.nome as 'livro', g.tipos as 'gênero', l.status
	from autores a, nacionalidade n, livro_autores la, livro l, genero g
		where a.nacionalidade_id = n.id
        and la.autores_id = a.id
        and l.id = la.livro_id
        and g.id = l.genero_id
        order by a.nome asc;

select c.cpf, c.nome, l.nome as 'livro', e.status, e.data_saida, e.data_devolucao_esperada, e.data_devolucao
	from emprestimo e,  livro_emprestimo le,  clientes c, livro l
		where e.id = le.emprestimo_id
        and le.livro_id = l.id
        and c.cpf = e.clientes_cpf
        order by e.status desc, c.nome asc;

select l.isbn, l.nome, p.descricao as 'tipo de perda', lp.data 'data da perda'
	from perdas p, livro_perdas lp, livro l
		where p.id = lp.perdas_id
        and lp.livro_id = l.id
        order by p.descricao asc, l.nome asc;


select  l.localizacao_estante as 'estante', l.localizacao_prateleira as 'prateleira', l.nome as 'livro', g.tipos as 'gênero'
	from livro l, genero g
		where g.id = l.genero_id
        and l.status ='Disponível'
        order by l.localizacao_estante asc, l.localizacao_prateleira asc;

select e.cnpj, e.nome as 'editora', l.nome as 'livro', g.tipos as 'gênero', a.nome as 'autor',  l.data_publicacao
	from livro l, editora e, genero g, autores a, livro_autores la
		where e.cnpj = l.editora_cnpj
        and g.id = l.genero_id
        and la.autores_id = a.id
        and l.id = la.livro_id
        and g.id = l.genero_id
        order by e.nome asc, l.nome asc;

select l.nome as 'livro', g.tipos as 'gênero', l.data_aquisicao, l.modo_aquisicao
	from livro l, genero g
		where g.id = l.genero_id
		and l.modo_aquisicao= 'D'
		order by g.tipos asc;

select * from clientes
    where nome like '%Pereira%'
    order by nome asc;

select count(*) from clientes; 


-- FONTES DAS PESQUISAS:
/* 
Todos os livros foram retirados do site da Amazon - https://www.amazon.com.br/Livros/b?ie=UTF8&node=6740748011
	A hipótese do amor - https://www.amazon.com.br/hip%C3%B3tese-amor-Sucesso-TikTok/dp/6555653302
	A empregada: Bem-vinda à família - https://www.amazon.com.br/empregada-Bem-vinda-%C3%A0-fam%C3%ADlia/dp/6555655062
	O homem de giz - https://www.amazon.com.br/Homem-Giz-C-J-Tudor/dp/8551002937
	Cidade da Lua Crescente - https://www.amazon.com.br/Cidade-Lua-Crescente-sangue-Revista/dp/6555871709
	Antes que o café esfrie - https://www.amazon.com.br/Antes-caf%C3%A9-esfrie-Toshikazu-Kawaguchi/dp/6588490364
	Fahrenheit 451 - https://www.amazon.com.br/Fahrenheit-451-Ray-Bradbury/dp/8525052248
	O sol é para todos - https://www.amazon.com.br/sol-%C3%A9-para-todos/dp/8503009498
	Amor, teoricamente - https://www.amazon.com.br/Amor-teoricamente-Ali-Hazelwood/dp/6555655259
	Engenharia de requisitos: software orientado ao negócio - https://www.amazon.com.br/Engenharia-Requisitos-software-orientado-neg%C3%B3cio-ebook/dp/B01M3S7HT7
	Religiões afro-brasileiras: Uma construção teológica - https://www.amazon.com.br/Religi%C3%B5es-afro-brasileiras-Uma-constru%C3%A7%C3%A3o-teol%C3%B3gica/dp/8532648371
	Uma farsa de amor na Espanha - https://www.amazon.com.br/farsa-amor-Espanha-Sucesso-TikTok/dp/6555652977
	O homem mais rico da Babilônia - https://www.amazon.com.br/Homem-Mais-Rico-Babil%C3%B4nia/dp/8595081530
	O vilarejo - https://www.amazon.com.br/vilarejo-Raphael-Montes/dp/8581053041
	Textos para tocar cicatrizes - https://www.amazon.com.br/Textos-para-tocar-cicatrizes-cru%C3%A9is/dp/6588131712
	A cinco passos de você - https://www.amazon.com.br/cinco-passos-voc%C3%AA-Rachael-Lippincott/dp/8525067423
	História da China: O retrato de uma civilização e de seu povo - https://www.amazon.com.br/Hist%C3%B3ria-China-retrato-civliliza%C3%A7%C3%A3o-povo/dp/6555358297
	Violência e a história da desigualdade: Da Idade da Pedra ao século XXI - https://www.amazon.com.br/Viol%C3%AAncia-hist%C3%B3ria-desigualdade-Idade-s%C3%A9culo/dp/8537818763
	Preconceito: uma história - https://www.amazon.com.br/Preconceito-uma-hist%C3%B3ria-Leandro-Karnal/dp/8535935495
	Palestina -  https://www.amazon.com.br/Palestina-Joe-Sacco/dp/6586691400
	Maus - https://www.amazon.com.br/Maus-Art-Spiegelman/dp/8535906282
	Lá vem o Ratinho Carteiro! - https://www.amazon.com.br/vem-Ratinho-Carteiro-Marianne-Dubuc/dp/8506082846
	O Hobbit - https://www.amazon.com.br/Hobbit-p%C3%B4ster-J-R-R-Tolkien/dp/8595084742
	A Paciente Silenciosa - 
	https://www.amazon.com.br/paciente-silenciosa-Alex-Michaelides/dp/8501116432
	As Coisas que Você Só Vê Quando Desacelera: Como Manter a Calma em um Mundo Frenético - https://www.amazon.com.br/coisas-que-voc%C3%AA-quando-desacelera/dp/8543105293
	SQL para Análise de Dados: Técnicas avançadas para transformar dados em insights https://www.amazon.com.br/SQL-Para-An%C3%A1lise-Dados-Transformar/dp/6586057752
	Em busca de mim - https://www.amazon.com.br/Em-busca-mim-Viola-Davis/dp/6557121383
	O Paciente - https://www.amazon.com.br/paciente-Jasper-DeWitt-ebook/dp/B09HXWZQM9
	Amor às Causas Perdidas - https://www.amazon.com.br/Amor-causas-perdidas-Paola-Aleksandra-ebook/dp/B0CBPZ9TJH
	Despertando quem você é: Como viver consciente em um mundo em que todos se sentem perdidos - https://www.amazon.com.br/Despertando-quem-voc%C3%AA-consciente-perdidos-ebook/dp/B0C117QB7C
	Imperfeitos - https://www.amazon.com.br/Imperfeitos-Christina-Lauren/dp/6559571289
	A Mulher em Mim - https://www.amazon.com.br/mulher-em-mim-Britney-Spears/dp/6553932573
    
A consulta dos CNPJs pode ser feita por meio desse link: https://solucoes.receita.fazenda.gov.br/servicos/cnpjreva/cnpjreva_solicitacao.asp 
*/
