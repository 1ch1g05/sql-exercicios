CREATE DATABASE Biblioteca;
USE Biblioteca;

CREATE TABLE Autores (
  id_autor INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  data_nascimento DATE,
  nacionalidade VARCHAR(50)
  );

CREATE TABLE Livros (
  id_livro INT AUTO_INCREMENTE PRIMARY KEY,
  titulo VARCHAR(100) NOT NULL,
  isbn VARCHAR(20) UNIQUE NOT NULL,
  data_publicacao DATE,
  id_autor INT,
  FOREIGN KEY (id_autor) REFERENCES Autores(id_autor)
  );

CREATE TABLE Usuario (
  id_usuairo INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(200) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  telefone VARCHAR(15),
  endereco VARCHAR(200)
  );

CREATE TABLE Emprestimo (
  id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
  data_emprestimo DATE NOT NULL,
  data_devolucao DATE,
  id_livro INT,
  id_usuario INT,
  FOREIGN KEY (id_livro) REFERENCES Livros(id_livro)
  );
