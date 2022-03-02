
create table ticket 
(
id_ticket int primary key auto_increment not null,
date_ticket date,
id_vendeur int 
)engine=InnoDB;

create table vendeur 
(
id_vendeur int primary key auto_increment not null ,
name_vendeur varchar(50),
first_name_vendeur varchar(50)
)engine=InnoDB;

create table article 
(
id_article int primary key auto_increment not null ,
name_article varchar(50),
prix_article float
);

create table ajouter 
(
id_article int,
id_ticket int,
qtx int
);

alter table posseder 
add constraint fk_posseder_ticket
foreign key(id_ticket)
references ticket(id_ticket);

alter table posseder 
add constraint fk_posseder_article
foreign key(id_article)
references article(id_article);

alter table ticket
add constraint fk_ticket_vendeur
foreign key(id_vendeur)
references ticket(id_vendeur);


