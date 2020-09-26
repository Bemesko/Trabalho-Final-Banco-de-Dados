-- Mostrar todas as coisas de tudo
SELECT * FROM armas;
SELECT * FROM jogadores;
SELECT * FROM classes;
SELECT * FROM turminhas;

-- Mostra todos os jogadores de uma turminha
SELECT jogadores.jog_nome, turminhas.tur_nome FROM jogadores
	INNER JOIN turminhas ON jogadores.fk_turminhas_id = turminhas.tur_id;

-- Mostrar todas as armas de um jogador de ID específico
SELECT arsenal.*, armas.*
FROM arsenal INNER JOIN armas
ON arsenal.fk_arma_id = armas.arm_id
WHERE arsenal.fk_jogador_id = 1;

-- Mostrar quantos jogadores têm em cada classe
SELECT COUNT(jogadores.jog_ID)
	FROM jogadores
	WHERE jogadores.jog_ID = 7;

-- Mostrar o máximo possível de coisas de um jogador
SELECT jogadores.jog_nome, jogadores.jog_xp, jogadores.jog_chicletes, turminhas.tur_nome, turminha.tur_slogan, classes.cla_nome, classes.cla_tipo_chapeu 
	FROM jogadores
	INNER JOIN turminhas ON jogadores.fk_turminhas_ID = turminhas.tur_id
	INNER JOIN classes ON jogadores.fk_classes_ID = classes.cla_id;