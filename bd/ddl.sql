CREATE SCHEMA `biblioteca_pessoal`;
CREATE USER 'bibliotecario'@'127.0.0.1' IDENTIFIED BY "b1bl10t3c@r10";
GRANT ALL PRIVILEGES ON biblioteca_pessoal.* TO 'bibliotecario'@'127.0.0.1';
CREATE USER 'app_biblioteca'@'127.0.0.1' IDENTIFIED BY "@pp_b1bl10t3c@";
GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE ON biblioteca_pessoal.* TO 'app_biblioteca'@'127.0.0.1';

use `biblioteca_pessoal`;


CREATE TABLE IF NOT EXISTS livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    dataPublicacao DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Autores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    autor VARCHAR(255) NOT NULL,
    biografia VARCHAR(255) NOT NULL,
    dataNascimento DATE
);
CREATE TABLE IF NOT EXISTS Editora (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nomeE VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    telefone DATE
);

