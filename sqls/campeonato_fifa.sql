CREATE TABLE Jogador (
    id_jogador INTEGER PRIMARY KEY AUTOINCREMENT,
  
  	nome VARCHAR(48) NOT NULL,
  	curso VARCHAR(84) not NULL,
  
  	tel_contato CHAR(11) UNIQUE,
  	-- ou -- 
  	email VARCHAR(40) UNIQUE	
);

CREATE TABLE Partida (
	id_partida INTEGER PRIMARY KEY AUTOINCREMENT,
  	data_partida DATE,
  
  	p1_id INTEGER NOT NULL,
  	p2_id INTEGER NOT NULL,
  	
  	gols_p1 INTEGER DEFAULT 0,
  	gols_p2 INTEGER DEFAULT 0,
  
  	FOREIGN KEY (p1_id)
  		REFERENCES Jogador(id_jogador),
  	FOREIGN KEY (p2_id)
  		REFERENCES Jogador(id_jogador)
);

INSERT 
	INTO Jogador 
    	(nome, curso, tel_contato)
			VALUES
                ('Fulano', 'Direito', '61981231221'),
                ('Cicrano', 'Educação Física', '61981232112');

INSERT 
    INTO Partida 
    	(data_partida, p1_id, p2_id)
        	VALUES
          		('2026-06-15', 1, 2);
                
--CREATE TABLE PartidasVisu AS
SELECT
    p.id_partida,
    p.data_partida,

    j1.nome AS jogador1,
    j2.nome AS jogador2,

    p.gols_p1,
    p.gols_p2

FROM Partida p

INNER JOIN Jogador j1
    ON p.p1_id = j1.id_jogador

INNER JOIN Jogador j2
    ON p.p2_id = j2.id_jogador;
