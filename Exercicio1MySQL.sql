create database db_acervo35;
drop database db_acervo35;

use db_acervo35;
create table tb_usuario(
 id_usuario bigint auto_increment,
 nome varchar(255) not null,
 email varchar(244) not null,
 nascimento_data date,
 senha varchar(255) not null,
 primary key (id_usuario)
);
select * from db_acervo35.tb_usuario;


insert into tb_usuario (nome, email, nascimento_data, senha)
values ("Deivite", "deiviteoliveira03@gmail.com", "1992-10-07", "122344");
delete from tb_usuario where id_usuario=1;
update `db_acervo35`.`tb_usuario` set  `senha`='333' where (`id_usuario`='2');

alter table tb_usuario add livro varchar(30);







