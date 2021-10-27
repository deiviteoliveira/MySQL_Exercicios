create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
id_categoria bigint auto_increment,
tipo enum ("Suino","Bovino","Aves"),
estado enum("Congelados", "Fresco"),
primary key(id_categoria)
);

create table tb_produto(
id_produto bigint auto_increment,
nome varchar(30) not null,
preco real not null,
date_valid date,
tipo_corte varchar(30) not null,

fk_categoria bigint, -- declaração de chave estrangeira 

primary key(id_produto),
foreign key(fk_categoria) references tb_categoria(id_categoria)
);

insert into tb_categoria(tipo, estado)
      values("Bovino","Congelados"), -- 1
			("Bovino","Fresco"), -- 2
			("Suino","Congelados"), -- 3
			("Suino","Fresco"), -- 4
		    ("Aves","Congelados"), -- 5
			("Aves","Fresco"); -- 6
            
 select * from tb_categoria;
 
 insert into tb_produto(nome, preco, date_valid, tipo_corte, fk_categoria)
        values("Picanha", 90.00, "2021-10-31", "Postas", "1"),
			  ("Fraldinha", 59.00, "2021-10-30", "Bife", "2"),
              ("Bisteca", 28.90, "2021-10-29", "Postas", "3"),
              ("Linguiça", 18.90, "2021-11-01", "Tradicional", "4"),
              ("Cocha", 19.90, "2021-11-02", "Tradicional", "5"),
              ("PeitoDeFrango", 12.90, "2021-11-10", "Tradicional", "6"),
              ("Lagarto", 39.90, "2021-10-31", "Peça", "1"),
              ("Pernil", 42.90, "2021-11-02", "Inteiro", "2");
              
select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%C%";
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_categoria 
	order by tb_produto.date_valid;
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_categoria 
	where tb_categoria.tipo ="Bovino";    
    
