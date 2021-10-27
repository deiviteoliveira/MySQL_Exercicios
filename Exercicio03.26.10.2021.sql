create database db_farmacia_do_bem;
use db_farmacia_do_bem;


create table tb_categoria(
id_categoria bigint auto_increment,
tipo varchar(30) not null,
efeito varchar(30) not null,
tarja varchar(30), 

primary key (id_categoria)
);

insert into tb_categoria(tipo, efeito, tarja)
values("Homeopatico", "Via Respiratoria", "sem tarja"); -- 1
insert into tb_categoria(tipo, efeito, tarja) 
values("Vasodilatadores", "Arteria e Veia", "tarja vermelha"); -- 2
insert into tb_categoria(tipo, efeito, tarja)
values("Inotrópicos", "ContraçãoMuscular", "tarja vermelha"); -- 3
insert into tb_categoria(tipo, efeito, tarja)
values("Analgésicos", "CombateADor", "sem tarja"); -- 4
insert into tb_categoria(tipo, efeito, tarja)
values("Anticoagulantes", "Sanguineo", "tarja preta"); -- 5

select * from tb_categoria;

create table tb_produto(
id_produto bigint auto_increment,
nome varchar(30) not null,
qnt_estoque int(4) not null,
fabricante varchar(40),
preco decimal(8,2),

fk_categoria bigint,  -- declarando a chave primaria e secundaria
primary key(id_produto),
foreign key(fk_categoria) references tb_categoria(id_categoria)

);

select * from tb_produto;

insert into tb_produto(nome, qnt_estoque, fabricante, preco, fk_categoria)
                values("Astinoide", "10", "Intensis", "119.00", "5");
insert into tb_produto(nome, qnt_estoque, fabricante, preco, fk_categoria)
                values("Caloifenis", "26", "Rionni", "189.00", "4");
insert into tb_produto(nome, qnt_estoque, fabricante, preco, fk_categoria)
                values("Neosalin", "43", "GMED", "29.00", "1");
insert into tb_produto(nome, qnt_estoque, fabricante, preco, fk_categoria)
                values("Busrretolil", "34", "NeoMed", "89.00", "2");
insert into tb_produto(nome, qnt_estoque, fabricante, preco, fk_categoria)
                values("Leticoisino", "4", "Ilustride", "123.90", "3");
insert into tb_produto(nome, qnt_estoque, fabricante, preco, fk_categoria)
                values("Assistilfo", "13", "NeoMed", "19.90", "1");
insert into tb_produto(nome, qnt_estoque, fabricante, preco, fk_categoria)
                values("Aliscantide", "89", "MedStr", "56.90", "4");       
insert into tb_produto(nome, qnt_estoque, fabricante, preco, fk_categoria)
                values("Biorretinol", "45", "PASantos", "13.90", "3");
                
 select * from tb_produto;        
 
 select * from tb_produto where preco > 50.00;
 select * from tb_produto where preco < 30.00;
 select * from tb_produto where nome like "%B%";
 select * from tb_produto where preco between 3 and 60;
 
 select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_categoria 
	order by tb_produto.fabricante;
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_categoria 
	where tb_categoria.tarja ="tarja vermelha";    
    
 
                
                