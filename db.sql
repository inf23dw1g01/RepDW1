USE `Filmes`;

CREATE TABLE `Filme`(
	`id` bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    `description` varchar(1000) DEFAULT NULL, 
    `ano` varchar(4) DEFAULT NULL, 
    PRIMARY KEY (`id`)
)	ENGINE =Innodb;


CREATE TABLE `Diretores`(
	`id` bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    `date_of_birth` varchar(10) DEFAULT NULL, 
    PRIMARY KEY (`id`)
)	ENGINE =Innodb;


CREATE TABLE `Atores`(
	`id` bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    `date_of_birth` varchar(10) DEFAULT NULL, 
    PRIMARY KEY (`id`)
)	ENGINE =Innodb;


CREATE TABLE `Personagens`(
	`id` bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    `role` varchar(45) NOT NULL, 
    PRIMARY KEY (`id`)
)	ENGINE =Innodb;

INSERT INTO Filme (name, description, ano) VALUES ('Star Wars: Revenge Of The Sith', 'Plot. Orbiting above Coruscant, Obi-Wan Kenobi and Anakin Skywalker lead a mission to rescue Supreme Chancellor Palpatine from the cyborg Separatist commander General Grievous. After infiltrating Grievous'' flagship, Obi-Wan and Anakin battle the Sith Lord Count Dooku, whom Anakin decapitates.', '2005');
INSERT INTO Filme (name, description, ano) VALUES ('Cars', 'Ao viajar para a Califórnia, o famoso carro de corridas Relâmpago McQueen se perde e vai parar em Radiator Springs, uma cidadezinha na Rota 66. Ele conhece novos amigos e aprende lições que mudam sua forma de encarar a vida.', '2006');
INSERT INTO Filme (name, description, ano) VALUES ('Cars 2', 'Após ganhar a Copa Pistão pela quarta vez, Relâmpago McQueen (Owen Wilson) e sua equipe retornam a Radiator Springs para descansar.', '2011');
INSERT INTO Filme (name, description, ano) VALUES ('Cars 3', 'McQueen está determinado a provar a uma nova geração de corredores que ele ainda é o melhor carro de corrida do mundo.', '2013');
INSERT INTO Filme (name, description, ano) VALUES ('Toy Story', 'O aniversário de Andy está chegando e os brinquedos estão nervosos. Afinal de contas, eles temem que um novo brinquedo possa substituí-los. ', '1992');
INSERT INTO Filme (name, description, ano) VALUES ('Toy Story 2', 'Em Toy Story 2, Woody tenta salvar um brinquedo que acaba indo parar num bazar de usados e termina por ser sequestrado por um colecionador de brinquedos, que pretende vendê-lo a um museu japonês.', '1999');
INSERT INTO Filme (name, description, ano) VALUES ('Toy Story 3', 'Em Toy Story 3, Andy tem 17 anos e está prestes a ir para a faculdade.', '2013');
INSERT INTO Filme (name, description, ano) VALUES ('Toy Story 4', 'Agora morando na casa da pequena Bonnie, Woody apresenta aos amigos o novo brinquedo construído por ela', '2009');
INSERT INTO Filme (name, description, ano) VALUES ('Frozen', 'A caçula Anna (Kristen Bell/Gabi Porto) adora sua irmã Elsa (Idina Menzel/Taryn Szpilman), mas um acidente envolvendo os poderes especiais da mais velha, durante a infância, fez com que os pais as mantivessem afastadas.', '2003');
INSERT INTO Filme (name, description, ano) VALUES ('Frozen 2', ' Livre Na trama de Frozen 2, de volta à infância de Elsa e Anna, as duas irmãs descobrem uma história do pai, quando ainda era príncipe de Arendelle.', '2004');
INSERT INTO Filme (name, description, ano) VALUES ('Mean Girls', 'A nova aluna Cady Heron é recebida no topo da cadeia alimentar social, pelo grupo de elite das raparigas mais populares, apelidadas de “As Plásticas”', '2002');
INSERT INTO Filme (name, description, ano) VALUES ('The Beekeeper', 'Em uma perigosa conspiração, Clay tem seu passado exposto para o mundo e, entre outros efeitos colaterais, acaba perdendo uma pessoa muito querida. ', '2023');
INSERT INTO Filme (name, description, ano) VALUES ('Saltburn', 'A trama se passa nos anos 2000 e acompanha o estudante universitário Oliver Quick , que tem dificuldades para se encaixar na Universidade de Oxford.', '2021');
INSERT INTO Filme (name, description, ano) VALUES ('Society of the Snow', 'Em 1972, um avião fretado para levar um time de rúgbi do Uruguai ao Chile sofre um acidente nos Andes.', '2023');
INSERT INTO Filme (name, description, ano) VALUES ('Inception', 'Um ladrão especializado em roubar segredos corporativos pelo uso de compartilhamento de sonhos é oferecido a oportunidade de ter sua sentença reduzida se ele realizar a tarefa inversa: implantar uma ideia na mente de uma pessoa.', '2010');
INSERT INTO Filme (name, description, ano) VALUES ('The Shawshank Redemption', 'Um banqueiro é condenado à prisão por um crime que não cometeu e faz amizade com outros prisioneiros durante duas décadas enquanto tenta provar sua inocência.', '1994');
INSERT INTO Filme (name, description, ano) VALUES ('Pulp Fiction', 'Várias histórias interligadas exploram o mundo do crime em Los Angeles.', '1994');
INSERT INTO Filme (name, description, ano) VALUES ('The Dark Knight', 'Batman enfrenta o Coringa, um criminoso psicopata que busca criar o caos em Gotham City.', '2008');
INSERT INTO Filme (name, description, ano) VALUES ('Forrest Gump', 'A história de um homem com baixo QI que testemunha e influencia várias décadas da história dos Estados Unidos.', '1994');
INSERT INTO Filme (name, description, ano) VALUES ('The Godfather', 'A saga de uma família mafiosa siciliana nos Estados Unidos, liderada pelo patriarca Vito Corleone.', '1972');
INSERT INTO Filme (name, description, ano) VALUES ('Schindlers List', 'A história real de Oskar Schindler, um empresário alemão que salva a vida de mais de mil refugiados judeus durante o Holocausto.', '1993');
INSERT INTO Filme (name, description, ano) VALUES ('The Matrix', 'Um hacker é recrutado para se juntar a uma rebelião contra máquinas que controlam a realidade simulada em que vivemos.', '1999');
INSERT INTO Filme (name, description, ano) VALUES ('The Silence of the Lambs', 'Uma agente do FBI busca a ajuda de um psiquiatra canibal para capturar um assassino em série.', '1991');
INSERT INTO Filme (name, description, ano) VALUES ('Fight Club', 'Um homem desiludido forma um clube secreto violento com um carismático saboneteiro.', '1999');
INSERT INTO Filme (name, description, ano) VALUES ('The Lord of the Rings: The Fellowship of the Ring', 'Um grupo de personagens embarca em uma jornada épica para destruir um anel maligno e salvar a Terra Média.', '2001');
INSERT INTO Filme (name, description, ano) VALUES ('The Avengers', 'Os super-heróis da Marvel se unem para enfrentar uma ameaça global.', '2012');
INSERT INTO Filme (name, description, ano) VALUES ('Eternal Sunshine of the Spotless Mind', 'Um homem decide apagar as memórias de um relacionamento doloroso, apenas para perceber que as lembranças têm um valor especial.', '2004');
INSERT INTO Filme (name, description, ano) VALUES ('The Grand Budapest Hotel', 'Um gerente de hotel e seu jovem protegido se envolvem em uma série de aventuras em um elegante hotel europeu.', '2014');
INSERT INTO Filme (name, description, ano) VALUES ('Blade Runner', 'No futuro distópico, um detetive caça androides que se rebelaram contra seus criadores humanos.', '1982');
INSERT INTO Filme (name, description, ano) VALUES ('Inglourious Basterds', 'Durante a Segunda Guerra Mundial, um grupo de soldados judeus americanos planeja assassinar líderes nazistas.', '2009');
INSERT INTO Filme (name, description, ano) VALUES ('The Great Gatsby', 'A história de um homem misterioso e rico e seu envolvimento com a socialite Daisy Buchanan na década de 1920.', '2013');
INSERT INTO Filme (name, description, ano) VALUES ('Interstellar', 'Exploradores espaciais buscam um novo lar para a humanidade enquanto enfrentam desafios científicos e emocionais.', '2014');
INSERT INTO Filme (name, description, ano) VALUES ('The Revenant', 'Um caçador é deixado para morrer por seus colegas e luta por sobrevivência em condições adversas.', '2015');
INSERT INTO Filme (name, description, ano) VALUES ('The Departed', 'Dois homens, um policial disfarçado e um espião, tentam identificar e eliminar o outro enquanto infiltrados em organizações criminosas rivais.', '2006');
INSERT INTO Filme (name, description, ano) VALUES ('La La Land', 'Um músico e uma aspirante a atriz se apaixonam enquanto tentam alcançar seus sonhos em Los Angeles.', '2016');
INSERT INTO Filme (name, description, ano) VALUES ('The Social Network', 'A criação e ascensão da rede social Facebook, destacando as disputas legais e pessoais entre os fundadores.', '2010');


INSERT INTO Diretores (name, date_of_birth) VALUES ('Quentin Tarantino', '1963');
INSERT INTO Diretores (name, date_of_birth) VALUES ('John Krasinski', '1979');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Steven Spielberg', '1967');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Jean Luc Godard', '1950');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Stanley Kubrick', '1959');
INSERT INTO Diretores (name, date_of_birth) VALUES ('François Truffaut', '1954');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Agnès Varda', '1952');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Francis Ford Coppola', '1964');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Pedro Almodóvar', '1964');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Kathryn Bigelow', '2000');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Orson Welles', '1976');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Sofia Coppola', '1934');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Martin Scorsese', '1954');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Akira Kurosawa', '1971');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Ingmar Bergman', '1985');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Kléber Mendonça Filho', '1984');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Federico Fellini', '1961');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Jean Renoir', '1973');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Luis Buñuel', '1954');
INSERT INTO Diretores (name, date_of_birth) VALUES ('George Cukor', '1931');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Zhang Yimou', '1946');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Bong Joon-ho', '1974');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Vincente Minnelli', '1994');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Lars von Trier', '1962');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Gus Van Sant', '1948');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Billy Wilder', '1949');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Walter Salles', '1974');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Pier Paolo Pasolini', '1962');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Charles Chaplin', '1934');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Juan José Campanella', '1933');
INSERT INTO Diretores (name, date_of_birth) VALUES ('Satyajit Ray', '1989');



INSERT INTO Atores (name, date_of_birth) VALUES ('Paul Walker', '1973');
INSERT INTO Atores (name, date_of_birth) VALUES ('Owen Wilson', '1968');
INSERT INTO Atores (name, date_of_birth) VALUES ('Boe Jiden', '1948');
INSERT INTO Atores (name, date_of_birth) VALUES ('Jack Nicholson', '1956');
INSERT INTO Atores (name, date_of_birth) VALUES ('Robert De Niro', '1968');
INSERT INTO Atores (name, date_of_birth) VALUES ('Al Pacino', '1958');
INSERT INTO Atores (name, date_of_birth) VALUES ('Denzel Washington', '1978');
INSERT INTO Atores (name, date_of_birth) VALUES ('Sean Connery', '1965');
INSERT INTO Atores (name, date_of_birth) VALUES ('Harrison Ford', '1942');
INSERT INTO Atores (name, date_of_birth) VALUES ('Tom Hanks', '1958');
INSERT INTO Atores (name, date_of_birth) VALUES ('Leonardo DiCaprio', '1967');
INSERT INTO Atores (name, date_of_birth) VALUES ('Kevin Spacey', '1942');
INSERT INTO Atores (name, date_of_birth) VALUES ('Morgan Freeman', '1951');
INSERT INTO Atores (name, date_of_birth) VALUES ('Clint Eastwood', '1956');
INSERT INTO Atores (name, date_of_birth) VALUES ('Anthony Hopkins', '1937');
INSERT INTO Atores (name, date_of_birth) VALUES ('Edward Norton', '1947');
INSERT INTO Atores (name, date_of_birth) VALUES ('Russell Crowe', '1998');
INSERT INTO Atores (name, date_of_birth) VALUES ('Ricardo Darín', '1937');
INSERT INTO Atores (name, date_of_birth) VALUES ('Jack Lemmon', '1957');
INSERT INTO Atores (name, date_of_birth) VALUES ('Gene Hackman', '1965');
INSERT INTO Atores (name, date_of_birth) VALUES ('Charles Chaplin', '1959');
INSERT INTO Atores (name, date_of_birth) VALUES ('Paul Newman', '1983');
INSERT INTO Atores (name, date_of_birth) VALUES ('Sean Penn', '1961');
INSERT INTO Atores (name, date_of_birth) VALUES ('Humphrey Bogart', '1929');
INSERT INTO Atores (name, date_of_birth) VALUES ('Samuel L. Jackson', '1956');
INSERT INTO Atores (name, date_of_birth) VALUES ('Gary Oldman', '1948');
INSERT INTO Atores (name, date_of_birth) VALUES ('Tommy Lee Jones', '1957');
INSERT INTO Atores (name, date_of_birth) VALUES ('Michael Caine', '1990');
INSERT INTO Atores (name, date_of_birth) VALUES ('Woody Harrelson', '1947');
INSERT INTO Atores (name, date_of_birth) VALUES ('Max von Sydow', '1978');
INSERT INTO Atores (name, date_of_birth) VALUES ('Brad Pitt', '1932');


INSERT INTO Personagens (name, role) VALUES ('Otavio', 'Leading Director');
INSERT INTO Personagens (name, role) VALUES ('Diogo', 'Actor');
INSERT INTO Personagens (name, role) VALUES ('Otavio', 'Secondary actor');
INSERT INTO Personagens (name, role) VALUES ('Goncalo', 'Secondary actor');
INSERT INTO Personagens (name, role) VALUES ('Scooby-Doo', 'Actor');
INSERT INTO Personagens (name, role) VALUES ('Gumball', 'Actor');
INSERT INTO Personagens (name, role) VALUES ('Tom', 'Actor');
INSERT INTO Personagens (name, role) VALUES ('Jerry', 'Actor');
INSERT INTO Personagens (name, role) VALUES ('Bart Simpson', 'Actor');
INSERT INTO Personagens (name, role) VALUES ('Mickey Mouse', 'Leading Director');
INSERT INTO Personagens (name, role) VALUES ('Garfield', 'Actor');
INSERT INTO Personagens (name, role) VALUES ('Ladybug', 'Leading Director');
INSERT INTO Personagens (name, role) VALUES ('Snoopy', 'Secondary actor');
INSERT INTO Personagens (name, role) VALUES ('Steven Universe', 'Actor');
INSERT INTO Personagens (name, role) VALUES ('James Bond', 'Leading Director');
INSERT INTO Personagens (name, role) VALUES ('Bugs Bunny', 'Actor');
INSERT INTO Personagens (name, role) VALUES ('Dorothy Gale', 'Leading Director');
INSERT INTO Personagens (name, role) VALUES ('Darth Vader', 'Secondary actor');
INSERT INTO Personagens (name, role) VALUES ('The Tramp', 'Actor');
INSERT INTO Personagens (name, role) VALUES ('Indiana Jones', 'Secondary actor');
INSERT INTO Personagens (name, role) VALUES ('Rocky Balboa', 'Leading Director');
INSERT INTO Personagens (name, role) VALUES ('Vito Corleone', 'Actor');
INSERT INTO Personagens (name, role) VALUES ('Han Solo', 'Secondary actor');
INSERT INTO Personagens (name, role) VALUES ('Homer Simpson', 'Leading Director');
INSERT INTO Personagens (name, role) VALUES ('Lucy Ricardo', 'Secondary actor');
INSERT INTO Personagens (name, role) VALUES ('Archie Bunker', 'Leading Director');
INSERT INTO Personagens (name, role) VALUES ('King Kong', 'Secondary actor');
INSERT INTO Personagens (name, role) VALUES ('Spiderman', 'Actor');
INSERT INTO Personagens (name, role) VALUES ('Spock', 'Leading Director');
INSERT INTO Personagens (name, role) VALUES ('Godzilla', 'Secondary actor');
INSERT INTO Personagens (name, role) VALUES ('Winnie-the-Pooh', 'Actor');
