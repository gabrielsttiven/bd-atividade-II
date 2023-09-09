CREATE DATABASE Artigos;

SHOW DATABASES;

USE Artigos;

CREATE TABLE Artigos (
    ArtigoID INT PRIMARY KEY,
    Título VARCHAR(255),
    Conteúdo TEXT,
    DataPublicação DATE
);

CREATE TABLE Comentários (
    ComentarioID INT PRIMARY KEY,
    ArtigoID INT,
    Autor VARCHAR(100),
    Texto TEXT,
    DataComentario DATE,
    FOREIGN KEY (ArtigoID) REFERENCES Artigos(ArtigoID)
);

INSERT INTO Artigos (ArtigoID, Título, Conteúdo, DataPublicação)
VALUES
    (1, 'O sucesso da Selena Gomez', 'A cantora e a atriz ultrapassou barreiras e se consagrou no mercado.', '08/09/2023'),
    (2, 'A Pequena Sereia flopou!', 'A Bilheteria do live-action da Disney trará prejuízo para a empresa.', '08/09/2023'),
    (3, 'O momento do Torrent', 'A pirataria está presente em diversos lugares da internet.', '08/09/2023'),
    (4, 'Os filmes estão fazendo bem?', 'O cinema trás beneficios e riqueza de entretenimento para a sociedade.', '08/09/2023'),
    (5, 'Bilheteria define sequências.', 'Filmes blockbusters necessitam de uma bilheteria grande para ter sua sequência garantida.', '08/09/2023');
    
INSERT INTO Comentários (ComentarioID, ArtigoID, Autor, Texto, DataComentario)
VALUES
    (101, 5, 'Daniel', 'Ela arrasa!', '09/09/2023'),
    (102, 1, 'Kaua', 'É a coisa mais patética que já li...', '09/09/2023'),
    (103, 2, 'Carlos', 'Acho que não gostei de uma citação.', '09/09/2023'),
    (104, 3, 'Ana', 'Injusto em diversos pontos, é um ótimo filme!', '09/09/2023'),
    (105, 4, 'Jessica', 'Amei o artigo!!!!!', '09/09/2023');


