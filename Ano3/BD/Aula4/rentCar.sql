create schema rentCar

create table rentCar.Cliente(
nome		varChar(30) not null,
endereço	int not null,
num_carta	int not null,
nif			int not null,
primary key(nif)
)

create table rentCar.Balcao(
nome		varchar(30) not null,
numero		int not null,
endereço	int not null,
primary key(numero),
)

create table rentCar.Veiculo(
matricula	int not null,
ano			int not null,
marca		varchar(30) not null,
tipo		int not null,
primary key(matricula)
)

create table rentCar.tipoVeiculo(
codigo			int not null,
designaçao		varchar(30) not null,
ar_condicionado	char(2) not null,
primary key(codigo),
)

create table rentCar.Similaridade(
tipo1	int not null,
tipo2	int not null,
foreign key(tipo1) references tipoVeiculo(codigo),
foreign key(tipo2) references tipoVeiculo(codigo),
)

create table rentCar.ligeiro(
tipo		int not null,
num_lugares int not null,
portas		int not null,
combustivel int not null,
foreign key(tipo) references tipoVeiculo(codigo)

)

create table rentCar.Pesado(
tipo		int not null,
peso		int not null,
passageiros int not null,
foreign key(tipo) references tipoVeiculo(codigo),
)


create table rentcar.Aluguer(
numero		int not null,
duraçao		int not null,
dataAluguer date not null,
nif_cliente int not null,
matriculaV	int not null,
n_balcao	int not null,
primary key(numero),
foreign key(n_balcao) references Balcao(numero),
foreign key(nif_cliente) references Cliente(nif),
foreign key(matriculaV) references Veiculo(matricula)
)

