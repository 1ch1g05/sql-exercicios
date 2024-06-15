-- Livros
SELECT Livros.titulo, Autores.nome AS autor
FROM Livros
JOIN Autores ON Livros.id_autor = Autores.id_autor;
-- Emprestimos
SELECT Usuarios.nome AS usuario, Livros.titulo AS livro, Emprestimos.data_emprestimo
FROM Emprestimos
JOIN Livros ON Emprestimos.id_livro = Livros.id_livro
JOIN Usuarios ON Emprestimos.id_usuario = Usuarios.id_usuario
WHERE Emprestimos.data_devolucao IS NULL;
-- Todos os livros
SELECT Usuarios.nome AS usuario, Livros.titulo AS livro, Emprestimos.data_emprestimo, Emprestimos.data_devolucao
FROM Emprestimos
JOIN Livros ON Emprestimos.id_livro = Livros.id_livro
JOIN Usuarios ON Emprestimos.id_usuario = Usuarios.id_usuario;
-- considerações de segurança e otimização
CREATE INDEX idx_livros_titulo ON Livros(titulo);
CREATE INDEX idx_usuarios_nome ON Usuarios(nome);
GRANT SELECT, INSERT, UPDATE ON Livros TO 'usuario1'@'localhost';
REVOKE DELETE ON Livros FROM 'usuario1'@'localhost';
