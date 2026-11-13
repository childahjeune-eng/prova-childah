create database escola;

use escola;

create table cursos(
    id_curso int primary key auto_increment,
    nome varchar(50) not null,
    carga_horaria int not null
);

create table alunos(
    id_aluno int primary key auto_increment,
    nome varchar(50) not null,
    nota int not null,
    id_curso int,
    foreign key (id_curso) references cursos(id_curso)
);

create table matriculas(
    id_matricula int primary key auto_increment,
    id_aluno int,
    id_curso int,
    foreign key (id_aluno) references alunos(id_aluno),
    foreign key (id_curso) references cursos(id_curso)
);

insert into cursos(nome, carga_horaria) values
('enfermagem', 60),
('culinária', 45),
('administração', 30);

insert into alunos(nome, nota, id_curso) values
('João', 85, 1),
('Maria', 90, 2),
('Pedro', 75, 3);

insert into matriculas(id_aluno, id_curso) values
(1, 1),
(2, 2),
(3, 3);

select * from cursos;

select * from alunos;

select * from matriculas;