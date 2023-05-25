/* L�gico_1: */

CREATE TABLE jogador (
    id varchar(100) PRIMARY KEY,
    nome varchar(100),
    foto varchar(100)
);

CREATE TABLE jogos (
    id int PRIMARY KEY,
    htlb varchar(50),
    nome varchar(100),
    valor varchar(20),
    tempo varchar(20),
    plataforma varchar(50),
    progresso varchar(50),
    multiplayer varchar(50),
    fk_jogador_id varchar(100)
);
 
ALTER TABLE jogos ADD CONSTRAINT FK_jogos_2
    FOREIGN KEY (fk_jogador_id)
    REFERENCES jogador (id)
    ON DELETE RESTRICT;