CREATE TABLE autor (
Id int auto_increment,
Nome Varchar(255) not null,
Data_Nascimento Date not null,
CPF Char(11) not null,
PRIMARY KEY(Id)
);

CREATE TABLE categoria (
Id int auto_increment,
Descricao Varchar(100) not null,
PRIMARY KEY (Id)
);

CREATE TABLE livro (
Id int auto_increment ,
Id_Categoria int not null,
Titulo varchar(255) not null,
Editora varchar(150) not null,
Ano Year not null,
Isbn varchar(100) not null,
PRIMARY KEY (Id),
FOREIGN KEY (Id_Categoria) REFERENCES Categoria(Id)
);

CREATE TABLE aluno (
Id int auto_increment,
Nome varchar(150),
RA int,
Curso varchar(150),
PRIMARY KEY(Id)
);

CREATE TABLE usuario (
Id int auto_increment,
Nome varchar(150),
Email varchar(150),
Senha varchar(100),
PRIMARY KEY(Id)
);

CREATE TABLE livro_autor_assoc (
Id_Livro int not null,
Id_Autor int not null,
FOREIGN KEY(Id_Livro) REFERENCES Livro (Id),
FOREIGN KEY(Id_Autor) REFERENCES Autor (Id),
PRIMARY KEY(Id_Livro, Id_Autor)
);

CREATE TABLE emprestimo (
Id int auto_increment,
Data_Emprestimo Date not null,
Data_Devolucao Date not null,
Id_Usuario int not null,
Id_Aluno int not null,
Id_Livro int not null,
PRIMARY KEY(Id),
FOREIGN KEY(Id_Usuario) REFERENCES Usuario (Id),
FOREIGN KEY(Id_Livro) REFERENCES Livro (Id),
FOREIGN KEY(Id_Aluno) REFERENCES Aluno (Id)
);
