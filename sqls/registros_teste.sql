INSERT 
	INTO Jogador 
    	(nome, matricula, curso, tel_contato)
			VALUES
                ('Fulano', '261001234', 'Direito', '61981231221'),
                ('Cicrano', '251000305', 'Educação Física', '61981232112'),
                ('Beltrano', '241001234', 'Biologia', '61981232100'),
                ('Fulana', '232000310', 'Medicina', '61981232101');
                
INSERT 
    INTO Partida 
    	(data_partida, p1_id, p2_id)
        	VALUES
          		('2026-06-15', 1, 3),
                ('2026-06-15', 2, 4);
                
--CREATE TABLE visualizacao_partidas AS
SELECT
    p.id_partida,
    p.data_partida,

    j1.nome AS jogador1,
    j2.nome AS jogador2

--    p.gols_p1,
--    p.gols_p2

FROM Partida p

INNER JOIN Jogador j1
    ON p.p1_id = j1.id_jogador

INNER JOIN Jogador j2
    ON p.p2_id = j2.id_jogador;
    
--SELECT * FROM visualizacao_partidas;

