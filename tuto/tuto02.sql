use newdatabasetuto;
create table article 
(
id_article int primary key auto_increment not null,
name_article varchar(50),
prix_article float
)engine=InnoDB;

create table ticket
(
id_ticket int primary key auto_increment not null,
date_ticket date  
);

create table ajouter
(
id_ticket int,
id_article int,
primary key (id_ticket,id_article),
qtx int
)engine=InnoDB;

create table vendeur
(
id_vendeur int primary key auto_increment not null,
name_vendeur varchar(50),
first_name_vendeur varchar(50)
)engine=InnoDB;

alter table ajouter
add constraint fk_ajouter_ticket
foreign key(id_ticket)
references ticket(id_ticket);

alter table ajouter
add constraint fk_ajouter_article 
foreign key(id_article)
references categorie(id_article);

alter table ticket
add constraint fk_vendre_vendeur 
foreign key(id_vendeur)
references vendeur(id_vendeur);

alter table ticket 
add num_caisse_ticket int ;

alter table ticket 
modify column num_caisse_ticket varchar(50);

alter table ticket 
drop column num_caisse_ticket;

alter table ticket 
drop foreign key fk_vendre_vendeur;

alter table ticket
drop column id_vendeur;

alter table ticket
drop column id_ticket;

create database mcdsql;
use mcdsql;

create database tpdatabase;

