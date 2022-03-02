create database tpsql;
use tpsql;
create table utilisateur
(
id_utilisateur int primary key auto_increment not null,
name_utilisateur varchar(50),
first_name_utililsateur varchar(50),
login_utilisateur varchar(50),
mdp_utilisateur varchar(50),
id_role int
)engine=InnoDB;
create table article 
(
id_article int primary key auto_increment not null ,
name_article varchar(50),
date_article varchar(50),
id_utilisateur int,
id_categorie int
);

create table commentaire
(
id_commentaire int primary key auto_increment not null,
com_commentaire text ,
date_commentaire date ,
id_utilisateur int ,
id_article int 
);

create table role 
(
id_role int primary key auto_increment not null,
nom_role varchar(50)
);

create table categorie
(
id_categorie int primary key auto_increment not null,
nom_categorie varchar(50)
 );
 
 create table ajouter 
 (
 id_image int, 
 id_article int
 );
 
 create table image 
 (
id_image int primary key auto_increment not null,
nom_image varchar(50),
url_image varchar(100)
 );
 
 alter table utilisateur 
 add constraint fk_posseder_role
 foreign key (id_role) 
 references role(id_role) ;
 
 alter table commentaire 
 add constraint fk_commenter_utilisateur 
 foreign key (id_utilisateur)
 references utilisateur(id_utilisateur);
 
 alter table commentaire 
 add constraint fk_completer_article
 foreign key (id_article)
 references article(id_article);
 
 alter table article 
 add constraint  fk_rediger_utilisateur 
 foreign key (id_utilisateur)
 references utilisateur(id_utilisateur);
 
  alter table article 
 add constraint  fk_filtrer_categorie
 foreign key (id_categorie)
 references categorie(id_categorie);
 
alter table ajouter 
add constraint fk_ajouter_image
foreign key (id_image)
references image(id_image);

alter table ajouter 
add constraint fk_ajouter_article
foreign key (id_article)
references article(id_article);

 
 
 
 
 


