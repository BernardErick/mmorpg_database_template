use jogo;
INSERT INTO `Jogador`
(`Id`,
`Nome`,
`Email`)
VALUES
(1,'DuduzinGamerxd','dudureidelasxd@gmail.com'),
(2,'YagoCam81', 'yaguito@hotmail.com'),
(3,'AlanDosBDTop','AlanzokaBDGamer@gmail.com');

INSERT INTO `Clan`
(`Id`,
`Nome`,
`Sigla`)
VALUES
(1,'Apreciadores do Dudu','ADD'),
(2,'Grupo de Adoração ao Yves','GAY'),
(3,'Clan dos Alanzokas','CDA'),
(4,'Destruidores de Pipoca','DDP'),
(5,'Odiamos o pedro','OOP');

INSERT INTO `Vendedor`
(`Codigo`,
`Nome`,
`Raca`)
VALUES
(1,'Vendedor Boris','Troll'),
(2,'Vendedor Alan','Humano'),
(3,'Vendedor Dudu','Anão'),
(4,'Vendedor Trundle','Troll'),
(5,'Vendedor Gilson Pereira','Humano');

INSERT INTO `Item`
(`Codigo`,
`Nome`,
`Descricao`,
`Valor`,
`Nivel`)
VALUES
(1,'Machado de navori','Um machado bom para derrotar seus inimigos.',2200.0,5),
(2,'QuimioTanqueTurbo','Vai uma corridinha ai?',1000.0,5),
(3,'Hidra Raivosa','Seu veneno é uma faca de dois gumes.',2000.0,5),
(4,'Armadura de Warmog','Se você é cauteloso, esse item é para você',1780.80,5),
(5,'Hidra Titanica','Seu veneno é bem potente.',4100.0,5),
(6,'Cajado do vazio','Nada pode ser melhor que o vazio do seu coração.',3800.50,5),
(7,'Foco do Horizonte','Nada melhor que atacar seus inimigos de longe né?',1000.0,5),
(8,'Capa de fogo solar','Quente,quente,quente!',2800.0,5),
(9,'Vendaval','primeira viagem no mar..',1000.0,5),
(10,'Mata Kraken','Caçadora de monstros marinhos.',1500.0,5);

INSERT INTO `Personagem`
(`Codigo`,
`Id_Jogador`,
`Nome`,
`Classe`,
`Nivel`,
`Ataque`,
`Defesa`,
`Magia`,
`Espirito`)
VALUES
(545661,1,'SavieGolry','Monge',50,50,40,10,60), 
(159846,1,'Tedioustrom','Guerreiro',49,40,70,10,40), 
(989842,1,'Cocovski','Paladino',75,30,80,50,200), 
(315969,2,'DevilishCoco','Mago',67,11,43,89,09), 
(989522,3,'Nijinskysan','Programador',20,09,29,97,11);

INSERT INTO `Bolsa`
(`Codigo`,
`Codigo_Personagem`,
`Nome`,
`Tamanho_slot`,
`Qtd_por_slot`,
`Moeda`,
`Qtd_Itens`)
VALUES 
(1,545661,'SavieGolry-1',50,64,124,1),
(2,545661,'SavieGolry-2',25,32,145,1),
(3,159846,'Tedioustrom-1',50,64,122,1),
(4,989842,'Cocovski-1',50,64,120,1),
(5,989842,'Cocovski-2',40,50,175,1),
(6,989842,'Cocovski-3',20,20,149,1),
(7,315969,'Feotedious-1',50,64,128,1),
(8,315969,'Feotedious-2',60,5,321,1),
(9,989522,'Nijinskysan-1',50,64,150,1),
(10,989522,'Nijinskysan-2',40,50,100,1);


INSERT INTO `bolsa_contem_item`
(`Codigo`,
`Codigo_Bolsa`,
`Codigo_Item`)
VALUES 
(100,1,1),
(200,2,2),
(300,3,3),
(400,4,4),
(500,5,5),
(600,6,6),
(700,7,7),
(800,8,8),
(900,9,9),
(1000,10,10);

INSERT INTO `Vendedor_vende_Item`
(`Codigo_Venda`,
`Codigo_Item`,
`Codigo_Vendedor`,
`Qtd_Max_Itens`,
`Preco_Produto`,
`Nivel_produto`)

VALUES
(1,1,1,1,2300.0,5),
(2,2,1,1,1100.0,7),
(3,3,2,1,2100.0,9),
(4,4,3,1,1280.80,11),
(5,5,4,1,4200.0,13),
(6,6,5,1,3900.0,15),
(7,7,5,1,1100.0,17);

INSERT INTO `Personagem_negocia_Vendedor_vende_Item`
(`Codigo`,
`Codigo_venda`,
`Codigo_personagem`,
`Qtd_itens_comprados`,
`Data_compra`,
`Valor_compra`)

VALUES 
(333,1,545661,6,'10/03/9087',2300.0),
(444,2,159846,7,'09/06/9087',1100.0),
(555,3,159846,8,'07/07/9087',2100.0);