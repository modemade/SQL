create database tp01;
use tp01;
create table ticket
(
    id_ticket int primary key auto_increment not null,
    date_ticket datetime,
    id_vendeur int
)engine=InnoDB;

create table article
(
    id_article int primary key auto_increment not null,
    name_article varchar(50),
    prix_article float
)engine=InnoDB;

create table vendeur
(
    id_vendeur int primary key auto_increment not null,
    name_vendeur varchar(50),
    first_name_vendeur varchar(50)
)engine=InnoDB;

create table ajouter
(
    id_ticket int,
    id_article int,
    qtx int,
    primary key(id_ticket, id_article)
)engine=InnoDB;

alter table ticket
add constraint fk_vendre_vendeur
foreign key(id_vendeur)
references vendeur(id_vendeur);

alter table ajouter
add constraint fk_ajouter_ticket
foreign key(id_ticket)
references ticket(id_ticket);

alter table ajouter
add constraint fk_ajouter_article
foreign key(id_article)
references article(id_article);

insert into article(name_article,prix_article) values
("clavier2",90),
("clavier3",90),
("clavier4",90),
("clavier5",90);


insert into vendeur(name_vendeur,first_name_vendeur) values
("vendeur1","fire"),
("vendeur2","fir");

insert ticket(name_ticket,date_ticket) values
("ticket7",2022-03-02),
("ticket2",2022-03-05),
("ticket3",2022-03-07);

update vendeur 
set first_name_vendeur ="Paul"
where id_vendeur = "I" ;


insert into vendeur(name_vendeur,first_name_vendeur) values 
("pat","pastare");

update vendeur
set first_name_vendeur ="mot"
where id_vendeur =1 or id_vendeur=3;

update article
set prix_article ="article"
where id_article >=1 or id_article <=2 
