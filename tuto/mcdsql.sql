create table eleve 
(
id_eleve int primary key auto_increment not null,
name_eleve varchar(50),
first_name_eleve varchar(50)
)engine=InndoDB;
create table seance
(
id_seance int primary key auto_increment not null,
name_seance varchar(50),
date_seance date ,
creneaux_seance varchar(2),
duree_seance int 
) ;
create table utilisateur 
(
id_utilisateur int primary key auto_increment not null,
name_eleve varchar(50),
first_name_eleve varchar(50),
login_utilisateur varchar(50),
mdp_utilisateur varchar(50)
);

create table detail
(
id_detail int primary key auto_increment not null,
commentaire_detail text,
mat_oublie_detail bool,
note_detail int
);

create table participer
(
id_eleve int,
id_seance int
);

create table classe
(
id_classe int primary key auto_increment not null,
nom_classe varchar(50)
);
 
 create table typess
(
id_typess int primary key auto_increment not null,
nom_typess varchar(50)
);

create table matiere
(
id_matiere int primary key auto_increment not null,
nom_matiere varchar(50)
);

create table droit
(
id_droit int primary key auto_increment not null,
id_droit varchar(50)
);

alter table eleve 
add constraint fk_appartenir_classe
foreign key (id_classe)
references classe(id_classe);

alter table seance
add constraint fk_categoriser_typess
foreign key (id_typess)
references typess(id_typess);

alter table seance
add constraint fk_diriger_utilisateur 
foreign key (id_utilisateur)
references utilisateur(id_utilisateur);

alter table detail
add constraint fk_completer_seance
foreign key(id_seance)
references seance(id_seance);

alter table detail
add constraint fk_noter_eleve
foreign key(id_eleve)
references eleve(id_eleve);

alter table detail
add constraint fk_travailler_matiere
foreign key(id_matiere)
references matiere(id_matiere);

alter table utilisateur
add constraint fk_posseder_droit
foreign key(id_droit)
references droit(id_droit);

alter table eleve
add column id_classe int ;

alter table seance
add column id_typess int ;

alter table seance
add column id_utilisateur int ;

alter table detail
add column id_eleve int ;

alter table detail
add column id_seance int ;

alter table detail
add column id_maitere int ;

alter table utilisateur
add column id_droit int ;