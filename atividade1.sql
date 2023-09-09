CREATE DATABASE Clientes;

SHOW DATABASES;

USE Clientes;


CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Email VARCHAR(255),
    Telefone VARCHAR(22)
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    ValorTotal DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
    );
    
INSERT INTO Clientes (ClienteID, Nome, Email, Telefone) 
VALUES (1, 'Selena', 'selena@gmail.com', '(71) 96325-7452'),
(2, 'Daniel', 'dani@gmail.com', '(71) 99658-3336'),
(3, 'Kaua', 'kaua@gmail.com', '(71) 94452-2210'),
(4, 'Sttiven', 'sttivenlindo@gmail.com', '(71) 98854-3324'),
(5, 'Carlos', 'carlosprof@gmail.com', '(71) 95525-6666');

INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido, ValorTotal)
VALUES
    (101, 5, '31/08/2023', 75.00),
    (102, 1, '31/08/2023', 2000.00),
    (103, 2, '01/09/2023', 36.10),
    (104, 3, '01/09/2023', 600.90),
    (105, 4, '01/09/2023', 140.00);

