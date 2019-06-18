CREATE DATABASE biblioteca;

use biblioteca;

CREATE TABLE categoria (
id_categoria INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
categoria varchar(100)
);

CREATE TABLE livro(
id_livro INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
titulo varchar(200),
id_categoria INTEGER,
CONSTRAINT fk_livro
FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);


CREATE TABLE aluno(
id__aluno INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome varchar (50)
);

CREATE TABLE emprestimo(
id_emprestimo INTEGER NOT NULL,
id_aluno INTEGER NOT NULL,
id_livro INTEGER NOT NULL UNIQUE,
data_emprestimo DATE NOT NULL,
data_devolucao DATE, 
PRIMARY KEY (id_emprestimo),
CONSTRAINT uk_emprestimo
UNIQUE KEY (id_aluno, id_livro, data_emprestimo),
CONSTRAINT fk_livro_emprestimo
FOREIGN KEY (id_livro)
REFERENCES livro (id_livro),
CONSTRAINT fk_aluno_emprestimo
FOREIGN KEY (id_aluno)
REFERENCES livro (id_livro)
);
