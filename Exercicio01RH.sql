/*
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionaries desta empresa. 

Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.

Popule esta tabela com até 5 dados;

Faça um select que retorne os funcionaries com o salário maior do que 2000.

Faça um select que retorne os funcionaries com o salário menor do que 2000.

Ao término atualize um dado desta tabela através de uma query de atualização.

salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compa

*/

create database rh_35;
use rh_35;


create table func_35(
id_func35 bigint(4) auto_increment,
nome varchar(40) not null,
dt_nasc date,
sexo_func varchar(40),
chapa_func real,
ult_salario decimal(8,2) not null,

primary key(id_func35)

);
desc func_35;

insert into func_35(nome, dt_nasc, sexo_func, chapa_func, ult_salario)
        value ("Deivite", "1992-10-30", "M", "111", "2000.00"),
              ("Marcos", "1982-08-03", "M", "268", "1789.00"),
              ("Luiza", "1972-01-12", "F", "478", "2800.00"),
              ("Kaleb", "2000-06-11", "M", "001", "1500.00"),
              ("Liliane", "1996-12-09", "F", "020", "3074.00");
              
select * from func_35;
select * from func_35 where ult_salario > 2000;
select * from func_35 where ult_salario < 2000;

update func_35 set ult_salario = 7000.00 where chapa_func=478;



        
			
            
        
        











          


          










