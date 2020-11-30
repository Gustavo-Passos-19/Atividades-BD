create table curso(
	id_curso int,
	nome_curso varchar(100) not null,
	carga_horaria smallint,
	constraint id_curso primary key (id_curso)
);
create table professor(
	id_professor int not null,
	nome_professor varchar(100) not null,
	titulacao_professor char(3),
	constraint id_professor primary key (id_professor)
);
create table aluno(
	id_aluno int not null,
	nome_aluno varchar(100) not null,
	email_aluno varchar(100),
	fone_contato char(14),
	constraint id_aluno primary key (id_aluno)
);
create table turma(
	id_turma int not null,
	id_curso int not null,
	id_professor int not null,
	id_aluno int not null,
	data_matricula date not null,
	foreign key(id_curso) references curso(id_curso),
	foreign key(id_professor) references professor(id_professor),
	foreign key(id_aluno) references aluno(id_aluno),
	constraint id_turma primary key (id_turma)
);