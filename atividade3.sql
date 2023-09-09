CREATE DATABASE Departamentos;

SHOW DATABASES;

USE Departamentos;

CREATE TABLE Departamentos (
    DepartamentoID INT PRIMARY KEY,
    NomeDepartamento VARCHAR(255)
);

CREATE TABLE Funcionários (
    FuncionarioID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Cargo VARCHAR(100),
    Salario DECIMAL(10, 2),
    DepartamentoID INT,
    FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
);

INSERT INTO Departamentos (DepartamentoID, NomeDepartamento)
VALUES
    (1, 'RH'),
    (2, 'Vendas'),
    (3, 'TI'),
    (4, 'Marketing'),
    (5, 'Contabilidade');

INSERT INTO Funcionários (FuncionarioID, Nome, Cargo, Salario, DepartamentoID)
VALUES
    (101, 'Selena Gomez', 'Analista de RH', 6500.00, 1),
    (102, 'Danilo Douglas', 'Vendedor', 1600.00, 2),
    (103, 'Gabriel Basto', 'Desenvolvedor Web', 8500.00, 3),
    (104, 'Carlos Anderson', 'Analista de Marketing', 5600.00, 4),
    (105, 'Jessica Souza', 'Contador', 3200.00, 5);