create database SGB_NEWTON;
USE SGB_NEWTON;

create table if not exists livros(
id_livro int unsigned primary key auto_increment not null,
titulo_livro varchar(100),
autor_livro varchar(70),
Editora_livro varchar(70),
Ano_Publicacao int,
categoria varchar (30)
);

create table if not exists Usuarios(
id_usuario int unsigned primary key auto_increment not null,
nome_usuario varchar(70),
Matricula int,
Endereço varchar(200),
telefone int(12)
);

create table if not exists Emprestimos(
id_emprestimo int unsigned primary key auto_increment not null,
id_livro int unsigned not null,
id_usuario int unsigned not null,
Data_Emprestimo date,
Data_Devolucao date
);

alter table Emprestimos
add constraint fk_livro_emprestado foreign key(id_livro)
references livros (id_livro);

alter table Emprestimos
add constraint fk_emprestimo_usuario foreign key(id_usuario)
references usuarios (id_usuario);

insert into livros(titulo_livro, autor_livro, Editora_livro, Ano_publicacao, categoria)
values 
("A Aventura na Floresta", "Lucas Mendes", "Editora Aventura", "2011", "Aventura"),
("A Aventura Proibida", "Lucas Mendes", "Editora Imaginação", "2011", "Aventura"),
("A Arte da Persuasão", "Miguel Silva", "Editora Conquista", "2014", "Desenvolvimento Pessoal"),
("A Busca Interior", "Gabriel Johnson", "Editora Inspiração", "2018", "Autoajuda"),
("A Busca Interior", "Isabella Santos", "Editora Inspiração", "2016", "Autoajuda"),
("A Busca pelo Equilíbrio", "Miguel Silva", "Editora Conquista", "2016", "Desenvolvimento Pessoal"),
("A Busca pelo Tesouro", "Lucas Mendes", "Editora Aventura", "2013", "Aventura"),
("A Coragem de Recomeçar", "Sofia Oliveira", "Editora Inspiração", "2014", "Autoajuda"),
("A Força do Amor", "Sofia Oliveira", "Editora Inspiração", "2014", "Romance"),
("A Força Interior", "Gabriel Johnson", "Editora Inspiração", "2015", "Autoajuda"),
("A Jornada da Coragem", "Gabriel Johnson", "Editora Inspiração", "2016", "Desenvolvimento Pessoal"),
("A Jornada do Conhecimento", "Gabriel Johnson", "Editora Inspiração", "2018", "Desenvolvimento Pessoal"),
("A Jornada do Herói", "Lucas Mendes", "Editora Imaginação", "2018", "Desenvolvimento Pessoal"),
("A Magia da Amizade", "Lucas Mendes", "Editora Encanto", "2016", "Infantil"),
("A Magia da Criação", "Amanda Thompson", "Editora Encanto", "2013", "Fantasia"),
("A Magia das Estrelas", "Lucas Mendes", "Editora Encanto", "2012", "Fantasia"),
("A Magia das Palavras", "Gabriel Johnson", "Editora Encanto", "2015", "Autoajuda"),
("A Magia dos Sonhos", "Lucas Mendes", "Editora Encanto", "2017", "Infantil"),
("A Trama Oculta", "Isabella Santos", "Editora Enigma", "2012", "Suspense"),
("O Caminho da Felicidade", "Isabella Santos", "Editora Inspiração", "2017", "Autoajuda"),
("O Caminho da Felicidade", "Isabella Santos", "Editora Inspiração", "2017", "Autoajuda"),
("O Despertar da Magia", "Amanda Thompson", "Editora Encanto", "2014", "Fantasia"),
("O Despertar da Magia", "Amanda Thompson", "Editora Encanto", "2015", "Fantasia"),
("O Enigma do Espelho", "Sofia Oliveira", "Editora Enigma", "2015", "Fantasia"),
("O Enigma do Passado", "Isabella Santos", "Editora Mistério", "2012", "Suspense"),
("O Enigma do Passado", "Isabella Santos", "Editora Mistério", "2013", "Suspense"),
("O Enigma do Passado", "Isabella Santos", "Editora Mistério", "2013", "Suspense"),
("O Enigma do Passado", "Isabella Santos", "Editora Mistério", "2013", "Suspense"),
("O Labirinto de Sombras", "Sofia Oliveira", "Editora Enigma", "2017", "Fantasia");

insert into Usuarios(nome_usuario, Matricula, Endereço, telefone)
values 
("Carlos", 127843, "Rua das Flores, 123 - Centro, São Paulo", 123456789),
("Camila", 983017, "Avenida do Sol, 456 - Jardim América, Rio de Janeiro", 987654321),
("Daniel", 456789, "Rua das Palmeiras, 789 - Vila Madalena, São Paulo", 456789123),
("Débora", 236514, "Avenida das Américas, 1010 - Barra da Tijuca, Rio de Janeiro", 321654987),
("Eduardo", 758049, "Rua do Céu, 234 - Alto da Lapa, São Paulo", 789123456),
("Fernanda", 614832, "Avenida Atlântica, 567 - Copacabana, Rio de Janeiro", 654987321),
("Felipe", 824960, "Rua dos Pinheiros, 890 - Pinheiros, São Paulo", 234567891),
("Gabriela", 389027, "Avenida Paulista, 1111 - Bela Vista, São Paulo", 876543219),
("Gustavo", 550162, "Rua das Mangueiras, 222 - Tijuca, Rio de Janeiro", 345678912),
("Isabela", 716903, "Avenida Brigadeiro Faria Lima, 333 - Itaim Bibi, São Paulo", 987123456),
("João", 932781, "Rua dos Lírios, 444 - Vila Isabel, Rio de Janeiro", 789456123),
("Julia", 247590, "Avenida Engenheiro Luís Carlos Berrini, 555 - Brooklin, São Paulo", 654321789),
("Juliana", 605318, "Rua das Orquídeas, 666 - Jardim Botânico, Rio de Janeiro", 123789456),
("Karen", 812764, "Avenida Nove de Julho, 777 - Jardim Paulista, São Paulo", 456321987),
("Lucas", 370291, "Rua dos Girassóis, 888 - Flamengo, Rio de Janeiro", 219876543),
("Luíza", 910324, "Avenida Dr. Chucri Zaidan, 999 - Vila Cordeiro, São Paulo", 912345678),
("Marcelo", 184753, "Rua das Azaléias, 1111 - Laranjeiras, Rio de Janeiro", 321987654),
("Maria", 732546, "Avenida Juscelino Kubitschek, 1212 - Vila Nova Conceição, São Paulo", 789912345),
("Mariana", 279461, "Rua das Margaridas, 1313 - Leme, Rio de Janeiro", 654456789),
("Mateus", 646139, "Avenida Santos Dumont, 1414 - Santana, São Paulo", 123654987),
("Natália", 793520, "Rua das Violetas, 1515 - Botafogo, Rio de Janeiro", 987789123),
("Paulo", 528976, "Avenida Francisco Matarazzo, 1616 - Água Branca, São Paulo", 456654321),
("Rafael", 302645, "Rua dos Cravos, 1717 - Jardim Guanabara, Rio de Janeiro", 21123789),
("Renata", 915683, "Avenida Brasil, 1818 - Jardim América, São Paulo", 789234567),
("Rodrigo", 178420, "Rua das Hortênsias, 1919 - Flamengo, Rio de Janeiro", 654876543),
("Samuel", 654328, "Avenida Rebouças, 2020 - Cerqueira César, São Paulo", 123345678),
("Sara", 357021, "Rua das Margaridas, 2121 - Tijuca", 987321654),
("Carlos", 127843, "Rua das Flores, 123 - Centro, São Paulo", 456789912),
("Camila", 983017, "Avenida do Sol, 456 - Jardim América, Rio de Janeiro", 321654456),
("Daniel", 456789, "Rua das Palmeiras, 789 - Vila Madalena, São Paulo", 789123654),
("Débora", 236514, "Avenida das Américas, 1010 - Barra da Tijuca, Rio de Janeiro", 654987789),
("Eduardo", 758049, "Rua do Céu, 234 - Alto da Lapa, São Paulo", 123456654),
("Fernanda", 614832, "Avenida Atlântica, 567 - Copacabana, Rio de Janeiro", 987789234),
("Felipe", 824960, "Rua dos Pinheiros, 890 - Pinheiros, São Paulo", 456654876),
("Gabriela", 389027, "Avenida Paulista, 1111 - Bela Vista, São Paulo", 321123345),
("Gustavo", 550162, "Rua das Mangueiras, 222 - Tijuca, Rio de Janeiro", 789234321),
("Isabela", 716903, "Avenida Brigadeiro Faria Lima, 333 - Itaim Bibi, São Paulo", 654876789),
("João", 932781, "Rua dos Lírios, 444 - Vila Isabel, Rio de Janeiro", 123345654),
("Julia", 247590, "Avenida Engenheiro Luís Carlos Berrini, 555 - Brooklin, São Paulo", 987321789),
("Juliana", 605318, "Rua das Orquídeas, 666 - Jardim Botânico, Rio de Janeiro", 456789345),
("Karen", 812764, "Avenida Nove de Julho, 777 - Jardim Paulista, São Paulo", 321654123),
("Lucas", 370291, "Rua dos Girassóis, 888 - Flamengo, Rio de Janeiro", 789123789),
("Luíza", 910324, "Avenida Dr. Chucri Zaidan, 999 - Vila Cordeiro, São Paulo", 654987456),
("Marcelo", 184753, "Rua das Azaléias, 1111 - Laranjeiras, Rio de Janeiro", 123456321),
("Maria", 732546, "Avenida Juscelino Kubitschek, 1212 - Vila Nova Conceição, São Paulo", 987789789),
("Mariana", 279461, "Rua das Margaridas, 1313 - Leme, Rio de Janeiro", 456654456),
("Mateus", 646139, "Avenida Santos Dumont, 1414 - Santana, São Paulo", 321123123),
("Natália", 793520, "Rua das Violetas, 1515 - Botafogo, Rio de Janeiro", 789234789),
("Paulo", 528976, "Avenida Francisco Matarazzo, 1616 - Água Branca, São Paulo", 654876654),
("Rafael", 302645, "Rua dos Cravos, 1717 - Jardim Guanabara, Rio de Janeiro", 123345321),
("Renata", 915683, "Avenida Brasil, 1818 - Jardim América, São Paulo", 987789234),
("Rodrigo", 178420, "Rua das Hortênsias, 1919 - Flamengo, Rio de Janeiro", 456654876),
("Samuel", 654328, "Avenida Rebouças, 2020 - Cerqueira César, São Paulo", 321123345),
("Sara", 357021, "Rua das Margaridas, 2121 - Tijuca", 789234321),
("Carlos", 127843, "Rua das Flores, 123 - Centro, São Paulo", 654876789),
("Camila", 983017, "Avenida do Sol, 456 - Jardim América, Rio de Janeiro", 123345654),
("Daniel", 456789, "Rua das Palmeiras, 789 - Vila Madalena, São Paulo", 987321789),
("Débora", 236514, "Avenida das Américas, 1010 - Barra da Tijuca, Rio de Janeiro", 456789345);

insert into livros(titulo_livro, autor_livro, Editora_livro, Ano_publicacao, categoria)
values 
("A Aventura na Floresta", "Lucas Mendes", "Editora Aventura", "20210213", "Aventura"),
("O Mistério do Castelo Assombrado", "Carolina Silva", "Editora Mistério", "20210325", "Mistério"),
("Viagem ao Centro da Terra", "André Rodrigues", "Editora Exploração", "20210502", "Aventura"),
("O Enigma do Quadro Perdido", "Marina Santos", "Editora Enigmas", "20210610", "Mistério"),
("A Busca pelo Tesouro Escondido", "Rafaela Ferreira", "Editora Aventura", "20210718", "Aventura"),
("O Caso do Crime Sem Solução", "João Almeida", "Editora Mistério", "20210826", "Mistério"),
("O Segredo do Vale Proibido", "Gabriel Souza", "Editora Aventura", "20210903", "Aventura"),
("O Mistério do Relógio Antigo", "Lara Lima", "Editora Enigmas", "20211015", "Mistério"),
("A Descoberta no Fundo do Mar", "Pedro Santos", "Editora Exploração", "20211122", "Aventura"),
("O Roubo na Exposição de Arte", "Mariana Fernandes", "Editora Enigmas", "20211230", "Mistério"),
("A Busca pelo Tesouro Perdido", "Luana Oliveira", "Editora Aventura", "20220205", "Aventura"),
("O Segredo da Mansão Assombrada", "Arthur Silva", "Editora Mistério", "20220315", "Mistério"),
("O Mistério da Ilha Deserta", "Clara Santos", "Editora Aventura", "20220422", "Aventura"),
("O Enigma do Código Secreto", "Gustavo Almeida", "Editora Enigmas", "20220530", "Mistério"),
("Aventuras no Mundo Perdido", "Sofia Rodrigues", "Editora Exploração", "20220707", "Aventura"),
("O Caso do Roubo na Galeria de Arte", "Pedro Lima", "Editora Enigmas", "20220815", "Mistério"),
("A Busca pelo Templo Esquecido", "Ana Ferreira", "Editora Aventura", "20220922", "Aventura"),
("O Mistério da Floresta Sombria", "Mariana Alves", "Editora Mistério", "20221030", "Mistério"),
("A Descoberta na Caverna Secreta", "Rafael Oliveira", "Editora Exploração", "20221207", "Aventura"),
("O Roubo do Diamante Azul", "Lara Fernandes", "Editora Enigmas", "20230115", "Mistério"),
("A Busca pela Relíquia Perdida", "Gustavo Souza", "Editora Aventura", "20230222", "Aventura");

select * from Usuarios; 

select * from livros;


