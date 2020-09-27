CREATE TABLE IF NOT EXISTS jogadores (
	jog_id int not null auto_increment,
	jog_nome VARCHAR(50),
	jog_senha VARCHAR(50),
	jog_xp int,
	jog_horas int,
	jog_chicletes int,
	jog_pontuação int,
	fk_classe_id int,
	fk_turminhas_id int,
  primary key (jog_id)
);

CREATE TABLE IF NOT EXISTS armas (
	arm_id int not null auto_increment,
	arm_nome VARCHAR(50),
	arm_dano int,
	arm_tipo VARCHAR(50),
	arm_velocidade_ataque int,
	arm_velocidade_carregamento int,
	arm_peso int,
  primary key (arm_id)
);

CREATE TABLE IF NOT EXISTS classes (
	cla_id int not null auto_increment,
	cla_nome VARCHAR(50),
	cla_tipo_chapeu VARCHAR(50),
	cla_velocidade tinyint,
	cla_inteligencia tinyint,
	cla_forca tinyint,
	primary key (cla_id)
);

CREATE TABLE IF NOT EXISTS turminhas (
	tur_id int not null auto_increment,
	tur_nome VARCHAR(50),
	tur_date DATE,
	tur_slogan VARCHAR(50),
	tur_bandeira int,
	primary key (tur_id)
);

CREATE TABLE IF NOT EXISTS arsenal (
	fk_jogador_id int,
	fk_arma_id int
);
ALTER TABLE jogadores ADD CONSTRAINT jogador_classe
	FOREIGN KEY (fk_classe_id) REFERENCES classes(cla_id);

ALTER TABLE jogadores ADD CONSTRAINT jogador_turminhas
	FOREIGN KEY (fk_turminhas_id) REFERENCES turminhas(tur_id);
    
ALTER TABLE arsenal ADD CONSTRAINT arsenal_jogador
	FOREIGN KEY (fk_jogador_id) REFERENCES jogadores(jog_id);

ALTER TABLE arsenal ADD CONSTRAINT arsenal_arma
	FOREIGN KEY (fk_arma_id) REFERENCES armas(arm_id);

INSERT INTO armas VALUES 
(1,"varinha",20,"distância",10,20,2),
(2,"espada grande",15,"corpo a corpo",10,7,15),
(3,"adaga",6,"corpo a corpo",8,3,4),
(4, "cetro", 22, "disância", 10, 11, 15),
(5,"arco e flecha",13,"distância",8,12,8),
(6,"lança",30,"distância",7,30,8),
(7,"machado",16,"corpo a corpo",11,8,10);

INSERT INTO classes VALUES 
(1,"mago","pontudo",5,10,5),
(2,"barbaro","capacete chifrudo",4,1,20),
(3,"druida","toca",6,9,1),
(4,"guerreiro","capacete aberto",4,2,15),
(5,"paladino","capacete fechado",5,7,2),
(6,"mendigo",NULL,2,1,3),
(7,"bardo","toca do link",8,5,3);

INSERT INTO turminhas VALUES 
(1,"Badalados","2015-12-17","brunos alowed",5),
(2,"Os topzera","2015-12-17","Desce pro play",1),
(3,"Anjos diurnos","2015-12-17","Noite, eca",7),
(4,"ruan","2015-12-17","Ninguém aqui",3),
(5,"Os Pepinos Fritos","2015-12-17","Ricardo picles",15),
(6,"Da Mônica","2015-12-17","Vem turminha",2),
(7,"A melhor","2015-12-17","The best",7);

INSERT INTO jogadores VALUES
(1,"ruan","1234",50,2,2,200,1,4),
(2,"frena","senha",7,5,90,600,2,6),
(3,"Ricardo picles","@A$ebt45",6058,584,20354,3905,6,3),
(4,"Romulo","******",843,24,42,106,5,2),
(5,"bruno","ervilha",123,321,2000,0,7,1),
(6,"bruno2","Ervilha123",860,1200,5,0,7,1),
(7,"Bruno","SenhaNova",2,34,35,362,7,1);
 
INSERT INTO arsenal VALUES 
(1, 2),
(3, 5),
(5, 4),
(1, 5),
(2, 3),
(5, 6),
(3, 1);
