create database loja_tech;
use loja_tech;


create database loja_tech;
use loja_tech;

create table tb_product(
id_prod bigint auto_increment,
nome_prod varchar(200) not null,
ramo_prod varchar(200) not null,
qnt_estoque int (300) not null,
cor_prod varchar (233) not null,
preco_prod decimal(8,2) not null,

primary key (id_prod)
);
insert into tb_product(nome_prod, ramo_prod, qnt_estoque, cor_prod, preco_prod)
                values ("Iphone", "Telefonia", "16", "Cinza", "3499.90");
insert into tb_product(nome_prod, ramo_prod, qnt_estoque, cor_prod, preco_prod)
				value("FoneBluetooth", "Audio", "37", "Branco", "299.99");
insert into tb_product(nome_prod, ramo_prod, qnt_estoque, cor_prod, preco_prod)
                value("RelógioDigital", "Acessorio", "30", "Azul", "150.00");
insert into tb_product(nome_prod, ramo_prod, qnt_estoque, cor_prod, preco_prod)
                value("Tablet", "Telefonia", "12", "Rosa", "999.90");
insert into tb_product(nome_prod, ramo_prod, qnt_estoque, cor_prod, preco_prod)
                value("ControlePs4", "Games", "80", "Branco", "589.00");



select * from tb_product where preco_prod >500;
select * from tb_product where preco_prod <500;

update tb_product set cor_prod = 'Azul Bebe' where id_prod = 2;

