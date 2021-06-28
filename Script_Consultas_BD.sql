use jogo;

#Item 1
SELECT personagem.codigo,personagem.nome,personagem.nivel,avg(Item.nivel) FROM Personagem join Bolsa On(personagem.codigo = bolsa.Codigo_Personagem)
join bolsa_contem_item on (bolsa_contem_item.Codigo_Bolsa = Bolsa.Codigo)
join Item on (Item.Codigo = bolsa_contem_item.codigo_item)
group by Bolsa.codigo_personagem;

#Item 2
SELECT personagem.codigo,personagem.nome,Bolsa.moeda, Bolsa.qtd_itens FROM Personagem join Bolsa On(personagem.codigo = bolsa.Codigo_Personagem)
join bolsa_contem_item on (bolsa_contem_item.Codigo_Bolsa = Bolsa.Codigo)
join Item on (Item.Codigo = bolsa_contem_item.codigo_item)
group by bolsa_contem_item.codigo_item;

#Item 3
select vendedor.nome, item.nome, Personagem_negocia_vendedor_vende_item.Qtd_itens_comprados,
Personagem_negocia_vendedor_vende_item.valor_compra, Personagem_negocia_vendedor_vende_item.data_compra, 
Personagem.nome
from Vendedor_vende_item join Vendedor on(Vendedor_vende_item.codigo_vendedor = Vendedor.codigo)
join Item on (Vendedor_vende_item.codigo_item = item.codigo)
join Personagem_negocia_vendedor_vende_item on (Vendedor_vende_item.codigo_venda = Personagem_negocia_vendedor_vende_item.codigo_venda)
join Personagem on (Personagem.codigo = Personagem_negocia_vendedor_vende_item.Codigo_personagem);

#Item 4
SELECT personagem.codigo,personagem.nome, Item.Codigo,Item.nome, Item.valor,Item.nivel  FROM Personagem join Bolsa On(personagem.codigo = bolsa.Codigo_Personagem)
join bolsa_contem_item on (bolsa_contem_item.Codigo_Bolsa = Bolsa.Codigo)
join Item on (Item.Codigo = bolsa_contem_item.codigo_item);