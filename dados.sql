-- Inserção de dados na tabela de Autores
INSERT INTO Autores (nome, data_nascimento, nacionalidade) VALUES
('J.K. Rowling', '1965-07-31', 'Britânica'),
('George R.R. Martin', '1948-09-20', 'Americano');

-- Inserção de dados na tabela de Livros
INSERT INTO Livros (titulo, isbn, data_publicacao, id_autor) VALUES
('Harry Potter e a Pedra Filosofal', '978-3-16-148410-0', '1997-06-26', 1),
('A Game of Thrones', '978-0-553-10354-0', '1996-08-06', 2);

-- Inserção de dados na tabela de Usuarios
INSERT INTO Usuarios (nome, email, telefone, endereco) VALUES
('Ana Silva', 'ana.silva@example.com', '123456789', 'Rua A, 123'),
('João Souza', 'joao.souza@example.com', '987654321', 'Rua B, 456');

-- Inserção de dados na tabela de Emprestimos
INSERT INTO Emprestimos (data_emprestimo, data_devolucao, id_livro, id_usuario) VALUES
('2024-06-10', NULL, 1, 1),
('2024-06-11', '2024-06-20', 2, 2);
