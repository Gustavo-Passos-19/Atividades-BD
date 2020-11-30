create table pessoa(
	id int not null,
	nome varchar(100) not null,
	primary key(id)
);
create table fisica(
	id int not null,
	sexo char(1),
	cpf char(11) not null,
	primary key(id), 
	foreign key(id) references pessoa(id)
);
create table juridica(
	id int not null,
	sexo char(1),
	cnpj char(14) not null,
	primary key(id),
	foreign key(id) references pessoa(id)
);
create table endereco(
	id int not null,
	logradouro varchar(100),
	numero int default 0,
	cep char(10) not null,
	cidade varchar(30),
	uf char(2) not null,
	primary key(id),
	foreign key(id) references pessoa(id)
);