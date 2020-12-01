create table departamento(
	codigo int,
	nome varchar(100) not null,
	primary key (codigo)
);
create table funcionario(
	matricula int not null,
	nome varchar(100) not null,
	codigo int,
	salario decimal(100) not null,
	gerente int unique,
	departamento int not null unique,
	foreign key (gerente) references funcionario(gerente),
	foreign key (departamento) references funcionario(departamento),
	foreign key (codigo) references departamento(codigo),
	primary key (matricula)
);