create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint(8) auto_increment,
alimento varchar(20) not null,
tipo varchar(20) not null, 
quantid_saida int not null,

primary key (id)
);
insert into tb_categoria(alimento, tipo, quantid_saida) values("PizzaPequena", "Mussarela", "12"); -- 1
insert into tb_categoria(alimento, tipo, quantid_saida) values("PizzaMedia", "Chocolate", "19"); -- 2
insert into tb_categoria(alimento, tipo, quantid_saida) values("PizzaGrande", "Ricotta", "09"); -- 3
insert into tb_categoria(alimento, tipo, quantid_saida) values("Refrigerante", "Coca", "23"); -- 4
insert into tb_categoria(alimento, tipo, quantid_saida) values("MilkShake", "Morango", "07"); -- 5

select * from tb_categoria;

create table tb_pizza(
id_pizza bigint(8) auto_increment,
nome varchar(30) not null,
sabor varchar(30) not null,
categ_alimento varchar(30),
data_validade date,
preco decimal(10,2) check (preco > 0),

fk_categoria bigint(8),
primary key(id_pizza),
foreign key(fk_categoria) references tb_categoria(id)

);

insert into tb_pizza(nome, sabor, categ_alimento, data_validade, preco, fk_categoria) 
			  values("LaPizzaPequenina", "Salgado", "Massas", "2021-10-27", "32.90","1");
insert into tb_pizza(nome, sabor, categ_alimento, data_validade, preco, fk_categoria) 
              values("SonhoDeMilk", "Doce", "Bebida", "2021-10-27", "19.90", "5");
insert into tb_pizza(nome, sabor, categ_alimento, data_validade, preco, fk_categoria) 
		      values("ChocoPizza", "Doce", "Massas", "2021-10-27", "79.90", "2");
insert into tb_pizza(nome, sabor, categ_alimento, data_validade, preco, fk_categoria) 
              values("Coca-Cola", "Doce", "Bebida", "2022-12-12", "22.90", "4");
insert into tb_pizza(nome, sabor, categ_alimento, data_validade, preco, fk_categoria) 
			  values("LaFrancessa", "Salgada", "Massa", "2021-10-27", "49.90", "3");
insert into tb_pizza(nome, sabor, categ_alimento, data_validade, preco, fk_categoria) 
              values("Marnirita", "Salgado", "Massa", "2021-10-27", "39.90", "1");
insert into tb_pizza(nome, sabor, categ_alimento, data_validade, preco, fk_categoria) 
              values("Dolly", "Doce", "Bebida", "2022-12-09", "40.00", "4");
insert into tb_pizza(nome, sabor, categ_alimento, data_validade, preco, fk_categoria) 
              values("PizzaShocol", "Doce", "Massa", "2021-10-27", "79.00", "2");
              
select * from tb_pizza;

select * from tb_pizza where preco < 45.00;
select * from tb_pizza where preco between 29.00 and 60.00;
select * from tb_pizza where sabor like "%C%";
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_pizza and tb_pizza.categ_alimento = "Bebida"
order by tb_pizza.id_pizza;

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_pizza
	and tb_categoria.alimento = "PizzaGrande";










			








          
            

