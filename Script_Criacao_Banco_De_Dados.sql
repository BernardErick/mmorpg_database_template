create database jogo
default character set utf8
default collate utf8_general_ci;

use jogo;

create table Jogador(
	Id int key not null,
	Nome varchar(30) not null,
    Email varchar(50) not null
);

create table Personagem(
	Codigo int primary key not null,
    Id_Jogador int not null,
    Nome varchar(30) not null,
	Classe varchar(20) not null,
    Nivel int not null,
    Ataque double not null,
    Defesa double not null,
    Magia double not null,
    Espirito double not null,
	Posicao_x double,
    Posicao_y double,
    Posicao_z double
);

create table Bolsa(
	Codigo int primary key not null,
    Codigo_Personagem int not null,
    Nome varchar(30) not null,
    Tamanho_slot int not null,
    Qtd_por_slot int not null,
	Moeda double not null,
    Qtd_Itens int not null
);

create table Item(
    Codigo int primary key not null,
    Nome varchar(30) not null,
    Descricao varchar(50) not null,
    Valor double not null,
    Nivel int not null
);

create table Vendedor(
	Codigo int primary key not null,
	Nome varchar(30) not null,
    Raca varchar(20) not null,
	Posicao_x double,
    Posicao_y double,
    Posicao_z double
);
create table Clan(
	Id int primary key not null,
    Nome varchar(30) not null,
    Sigla varchar(5) not null
);

create table Personagem_possui_Clan(
	Codigo int primary key not null, 
	Codigo_Personagem int not null,
    Id_Clan int not null,
    Cargo varchar(20)
);

create table Bolsa_contem_Item(
	Codigo int primary key not null,
	Codigo_Bolsa int not null,
    Codigo_Item int not null
);

create table Vendedor_vende_Item(
    Codigo_Venda int primary key not null,
    Codigo_Item int not null,
    Codigo_Vendedor int not null,
    Qtd_Max_Itens int not null,
    Preco_Produto double not null,
    Nivel_Produto int not null
);

create table Personagem_negocia_Vendedor_vende_Item(
	Codigo int primary key not null,
	Codigo_Venda int not null,
    Codigo_Personagem int not null,
	Qtd_Itens_Comprados int not null,
    Data_Compra varchar(20) not null,
    Valor_Compra double not null
);

ALTER TABLE Personagem
ADD constraint foreign key (Id_Jogador) references Jogador(Id);

ALTER TABLE Bolsa
ADD constraint foreign key (Codigo_Personagem) references Personagem(Codigo);

ALTER TABLE Personagem_possui_Clan
ADD constraint foreign key (Codigo_Personagem) references Personagem(Codigo),
ADD constraint foreign key (Id_Clan) references Clan(Id);

ALTER TABLE Bolsa_contem_Item
ADD constraint foreign key (Codigo_Bolsa) references Bolsa(Codigo),
ADD constraint foreign key (Codigo_Item) references Item(Codigo);

ALTER TABLE Vendedor_vende_Item
ADD constraint foreign key(Codigo_Vendedor) references Vendedor(Codigo),
ADD constraint foreign key(Codigo_Item) references Item(Codigo);

ALTER TABLE Personagem_negocia_Vendedor_vende_Item
ADD constraint foreign key(Codigo_Venda) references Vendedor_vende_Item(Codigo_Venda),
ADD constraint foreign key(Codigo_Personagem) references Personagem(Codigo);
