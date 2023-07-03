create schema conferences

create  table conferences.artigos_cientificos(
titulo			varchar(30) not null,
numero_registo	int not null,
primary key(numero_registo)
)

create table conferences.instituiçao(
nome		varchar(30) not null,
endereço	int not null,
primary key(nome)
)

create table conferences.autor(
email	varchar(30) not null,
nome	varchar(30) not null,
instituição	varchar(30) not null,
primary key(email)
)

create table conferences.apresenta(
n_registo int not null,
foreign key(n_registo) references artigos_cientificos(numero_registo)
)

create table conferences.participantes(
email		varchar(30) not null,
nome		varchar(30) not null,
instituiçao	varchar(30) not null,
data_insc	date not null,
morada		varchar(30) not null,
primary key(email)
)

create table conferences.estudante(
email		varchar(30) not null,
nome		varchar(30) not null,
est_instituicao varchar(30) not null,
data_insc	varchar(30) not null,
morada		varchar(30) not null,
foreign key(email) references participantes(email),
foreign key (est_instituicao) references instituiçao(nome)
)

create table conferences.nao_estudante(
email			varchar(30) not null,
nome			varchar(30) not null,
ref_transaçao	int not null,
data_insc		date not null,
morada			varchar(30) not null,
foreign key(email) references participantes(email)
)

create table conferences.tem(
email_autor				varchar(30) not null,
registo_art_cientifico	varchar(30) not null
foreign key(email_autor) references autor(email)
)

