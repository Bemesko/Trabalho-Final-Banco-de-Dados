-- mostra tudo de tudo
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

-- Mostrar quantos jogadores são bardos
SELECT COUNT(jogadores.jog_ID) from jogadores 
	inner join classes ON classes.cla_id = jogadores.fk_classe_id
    WHERE classes.cla_id = 7;
    
-- Mostrar algumas informações do jogador
SELECT jogadores.jog_nome, jogadores.jog_xp, jogadores.jog_chicletes, 
turminhas.tur_nome, turminhas.tur_slogan, classes.cla_nome, classes.cla_tipo_chapeu 
	FROM jogadores
	INNER JOIN turminhas ON jogadores.fk_turminhas_ID = turminhas.tur_id
	INNER JOIN classes ON jogadores.fk_classe_ID = classes.cla_id;
