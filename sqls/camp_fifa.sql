CREATE TABLE Jogador (
    id_jogador INTEGER PRIMARY KEY AUTOINCREMENT,
  
  	nome VARCHAR(48) NOT NULL,
  	curso VARCHAR(84) not NULL,
  	matricula CHAR(9) UNIQUE NOT NULL,
  
  	tel_contato CHAR(11) UNIQUE,
  	-- ou -- 
  	email VARCHAR(40) UNIQUE	
);

CREATE TABLE Partida (
	id_partida INTEGER PRIMARY KEY AUTOINCREMENT,
  	data_partida DATE,
  
  	p1_id INTEGER NOT NULL,
  	p2_id INTEGER NOT NULL,
  	
  	--gols_p1 INTEGER DEFAULT 0,
  	--gols_p2 INTEGER DEFAULT 0,
  
  	FOREIGN KEY (p1_id)
  		REFERENCES Jogador(id_jogador),
  	FOREIGN KEY (p2_id)
  		REFERENCES Jogador(id_jogador)
);