USE CarrosDB2;

CREATE TABLE Carros (
    Placa CHAR(7) PRIMARY KEY,
    Modelo VARCHAR(20) NOT NULL,
    Fabricante VARCHAR(20) NOT NULL,
    Ano INT NOT NULL,
    Cor VARCHAR(20) NOT NULL,
    Combustível VARCHAR(20) NOT NULL,
    Preço NUMERIC(10,2) NOT NULL
);

INSERT into Carros VALUES 
('SAO1930', 'Dodge Charger', 'Chrysler', 1970, 'Preto', 'híbrido', 390000.00),
('HNC1999', 'A3', 'Audi', 2025, 'Azul marinho', 'híbrido', 500000.99),
('BRX2024', 'Civic', 'Honda', 2005, 'Prata', 'gasolina', 130000.00),
('MZT1234', 'Hilux', 'Toyota', 2021, 'Branco', 'diesel', 220000.00),
('JRL9876', 'Mustang', 'Ford', 2007, 'Vermelho', 'gasolina', 270000.00),
('QWE4567', 'Ferrari Spider', 'Ferrari ', 2018, 'Vermelho', 'flex', 6000000.00),
('MMO554', 'Fusca', 'VolksWagen', 2021, 'Azul', 'Gasolina', 15000.00),
('PLM3456', 'Uno', 'Fiat', 2007, 'Branco', 'híbrido', 150000.00),
('KJL7654', 'Camaro', 'GM', 2022, 'Amarelo', 'diesel', 250000.00),
('MNO6654', 'Corvette', 'GM', 2021, 'Preto', 'diesel', 255000.00);

SELECT * FROM Carros;

SELECT * FROM Carros WHERE Modelo LIKE 'f%';

SELECT * FROM Carros WHERE Ano BETWEEN 2000 AND 2008;

SELECT * FROM Carros WHERE Combustível = 'flex';

SELECT * FROM Carros WHERE Fabricante = 'GM' AND Ano > 2001;

SELECT AVG(Preço) AS MediaPreco FROM Carros;

SELECT MAX(Preço) AS PrecoMaisCaro FROM Carros;

SELECT MIN(Preço) AS PrecoMaisBarato FROM Carros;

SELECT * FROM Carros WHERE Fabricante IN ('GM', 'FORD', 'TOYOTA');

UPDATE Carros SET Preço = Preço * 1.10 WHERE Fabricante = 'FIAT';

SELECT * FROM Carros WHERE Fabricante = 'Fiat';

SELECT * FROM Carros WHERE Cor = 'prata';

SELECT SUM(Preço) AS Soma FROM Carros;

DELETE FROM Carros WHERE Ano < 1985;

SELECT * FROM Carros;

SELECT DISTINCT Fabricante FROM Carros;
