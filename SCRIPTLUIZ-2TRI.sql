create database JornadaEpica;
use JornadaEpica;

create table if not exists Personagens(
id_personagem int unsigned primary key auto_increment not null,
Nick_personagem varchar(50),
nivel_personagem int unsigned,
raca_personagem varchar(70),
classe_personagem varchar(70),
pontosvida_personagem int unsigned, 
pontosmana_personagem int unsigned,
forca_personagem int unsigned, 
destreza_personagem int unsigned,
inteligencia_personagem int unsigned,
conquistas_obtidas int unsigned
);

create table if not exists Itens(
id_item int unsigned primary key auto_increment not null,
desc_item text,
nome_item varchar(70) not null,
tipo_item varchar(50) not null,
raridade varchar(50),
preco_item decimal(10,2),
peso_item decimal(10,2)
);

create table if not exists Jogadores(
id_jogador int unsigned primary key auto_increment not null,
nome_jogador varchar(100),
id_personagem int unsigned not null
);

create table if not exists Inventario(
id_inventario int unsigned primary key auto_increment not null,
id_personagem int unsigned not null,
id_item int unsigned not null,
qtd_item integer
);

create table if not exists Missoes(
id_missao int unsigned primary key auto_increment not null,
Desc_missao text,
Nome_missao varchar(100) not null,
nivel_requerido integer
);

create table if not exists personagens_missoes(
id_personagem_missao int unsigned primary key auto_increment not null,
id_personagem int unsigned not null,
id_missao int unsigned not null
);

alter table jogadores 
add constraint fk_jogador_personagem 
Foreign Key (id_personagem) references Personagens (id_personagem);

alter table Inventario
add constraint fk_inventario_personagem 
Foreign Key (id_personagem) references Personagens (id_personagem);

alter table Inventario
add constraint fk_inventario_item 
Foreign Key (id_item) references Itens (id_item);

alter table personagens_missoes
add constraint Fk_missao_personagem 
Foreign key (id_personagem) references Personagens (id_personagem);

alter table personagens_missoes
add constraint Fk_missao
Foreign key (id_missao) references Missoes (id_missao);

insert into Personagens(Nick_personagem, nivel_personagem, raca_personagem, classe_personagem, pontosvida_personagem, pontosmana_personagem, forca_personagem, destreza_personagem, inteligencia_personagem, conquistas_obtidas)
VALUES
    ('Gandalf', 15, 'Humano', 'Mago', 100, 200, 50, 60, 100, 5),
    ('Aragorn', 20, 'Humano', 'Guerreiro', 200, 0, 100, 80, 60, 10),
    ('Legolas', 18, 'Elfo', 'Arqueiro', 80, 50, 40, 120, 80, 8),
    ('Frodo', 10, 'Hobbit', 'Ladino', 50, 0, 30, 100, 70, 3),
    ('Alyssa', 12, 'Elfa', 'Maga', 80, 150, 30, 90, 120, 4),
    ('Thorin', 16, 'Anão', 'Guerreiro', 150, 0, 120, 50, 40, 7),
    ('Eowyn', 14, 'Humano', 'Cavaleira', 120, 0, 80, 70, 60, 6),
    ('Gimli', 15, 'Anão', 'Guerreiro', 140, 0, 100, 40, 30, 5),
    ('Arwen', 13, 'Elfa', 'Arqueira', 90, 60, 50, 110, 100, 7),
    ('Boromir', 11, 'Humano', 'Guerreiro', 100, 0, 90, 70, 50, 3),
    ('Galadriel', 20, 'Elfa', 'Maga', 200, 300, 40, 80, 150, 12),
    ('Samwise', 9, 'Hobbit', 'Fazendeiro', 40, 0, 20, 60, 50, 2),
    ('Gollum', 8, 'Hobbit', 'Ladino', 30, 0, 40, 100, 80, 1),
    ('Gandalf', 17, 'Istari', 'Mago', 180, 250, 60, 70, 170, 9);
    
    INSERT INTO Itens (desc_item, nome_item, tipo_item, raridade, preco_item, peso_item)
VALUES
    ('Uma espada afiada com cabo de ouro.', 'Espada Flamejante', 'Arma', 'Épico', 500.00, 3.20),
    ('Um amuleto encantado que aumenta a resistência mágica.', 'Amuleto da Proteção', 'Acessório', 'Raro', 200.00, 0.50),
    ('Uma poção que restaura os pontos de vida.', 'Poção de Cura', 'Consumível', 'Comum', 50.00, 0.10),
    ('Uma armadura robusta feita de placas de aço.', 'Armadura de Placas', 'Armadura', 'Raro', 800.00, 10.00),
    ('Um cajado mágico que amplifica o poder dos feitiços.', 'Cajado do Arcanista', 'Arma', 'Lendário', 1500.00, 1.50),
    ('Um anel encantado que aumenta a destreza do usuário.', 'Anel da Destreza', 'Acessório', 'Incomum', 300.00, 0.20),
    ('Uma adaga com lâmina envenenada.', 'Adaga Venenosa', 'Arma', 'Comum', 100.00, 0.30),
    ('Um livro antigo contendo conhecimentos proibidos.', 'Tomo Proibido', 'Consumível', 'Épico', 700.00, 2.00),
    ('Uma flecha mágica que causa dano extra a criaturas das trevas.', 'Flecha da Luz', 'Munição', 'Raro', 80.00, 0.05),
    ('Um anel dourado incrustado com uma safira azul.', 'Anel da Sabedoria', 'Acessório', 'Lendário', 2000.00, 0.30);
    

INSERT INTO jogadores (nome_jogador, id_personagem)
VALUES
    ('Thorfinn', 1),
    ('Askeladd', 2),
    ('Canute', 3),
    ('Bjorn', 4),
    ('Leif', 5),
    ('Thorkell', 6),
    ('Floki', 7),
    ('Gudrid', 8),
    ('Hild', 9),
    ('Sweyn', 10),
    ('Sigurd', 11),
    ('Garm', 12),
    ('Ylva', 13),
    ('Ari', 14);
    
    use JornadaEpica;
    
    insert into Inventario (id_personagem,id_item,qtd_item)
    values 
    (1, 1, 1),
    (2, 2, 1),
    (3, 3, 1),
    (4, 3, 1),
    (5, 4, 1),
    (6, 1, 1),
    (7, 5, 1),
    (8, 6, 1),
    (9, 7, 1),
    (10,8, 1),
    (11, 9, 1),
    (12, 10, 1),
    (13, 9, 1),
    (14, 1, 1);
    
INSERT INTO Missoes (Desc_missao, Nome_missao, nivel_requerido) VALUES
('Resgate o explorador perdido na Caverna Sombria.', 'Missão de Resgate na Caverna', 7),
('Encontre e destrua os ninhos de criaturas monstruosas na Floresta Proibida.', 'Missão de Limpeza da Floresta', 9),
('Recupere o artefato sagrado roubado do templo ancestral.', 'Missão de Recuperação do Artefato', 11),
('Derrote os invasores da fortaleza e restaure a paz na região.', 'Missão de Defesa da Fortaleza', 13),
('Investigue os relatos de atividade paranormal na mansão abandonada.', 'Missão de Investigação Paranormal', 6),
('Enfrente o poderoso dragão que assola a cidade e salve seus habitantes.', 'Missão do Dragão Feroz', 15),
('Explore as minas abandonadas em busca de minérios raros.', 'Missão de Exploração das Minas', 4),
('Proteja a caravana dos comerciantes contra ataques de bandidos na estrada.', 'Missão de Proteção da Caravana', 8),
('Encontre e entregue a mensagem secreta ao espião infiltrado na cidade inimiga.', 'Missão de Entrega da Mensagem', 12),
('Derrote os guardiões mágicos e libere o poder oculto do antigo templo.', 'Missão de Despertar do Templo', 10);

insert into personagens_missoes(id_personagem,
id_missao)
values 
(1,1),
(2,1),
(3,2),
(4,3),
(5,3),
(6,4),
(7,5),
(8,6),
(9,7),
(10,8),
(11,9),
(12,10),
(13,10),
(14,9);

create table if not exists Monstros(
  id_monstro INT unsigned PRIMARY KEY AUTO_INCREMENT not null,
  nome_monstro VARCHAR(100),
  nivel INT,
  pontos_vida INT,
  pontos_ataque INT,
  pontos_defesa INT
);

INSERT INTO Monstros (nome_monstro, nivel, pontos_vida, pontos_ataque, pontos_defesa)
VALUES
  ('Goblin', 1, 10, 5, 3),
  ('Esqueleto', 2, 15, 7, 4),
  ('Orc', 3, 20, 9, 6),
  ('Aracnídeo Gigante', 4, 25, 12, 8),
  ('Lobisomem', 5, 30, 15, 10),
  ('Vampiro', 6, 35, 18, 12),
  ('Dragão de Fogo', 7, 40, 22, 15),
  ('Gólem de Pedra', 8, 45, 25, 18),
  ('Quimera', 9, 50, 28, 20),
  ('Demônio', 10, 55, 30, 22);
  
  create table if not exists Missao_Monstro(
  id_monstro int unsigned not null,
  id_missao int unsigned not null
  );
  
  alter table Missao_monstro
  add constraint Fk_Missao_monstro
  Foreign Key (id_monstro) references 
  Monstros (id_monstro);
  
alter table Missao_monstro
add constraint Fk_monstro_Missao
Foreign Key (id_missao) references 
Missoes (id_missao);

insert into Missao_monstro(id_monstro, id_missao)
values
(1,10),
(1,9),
(1,8),
(1,7),
(1,6),
(1,5),
(1,4),
(1,3),
(1,2),
(1,1);


