CREATE TABLE tbl_estatus (
	id_estatus int(11) primary key auto_increment,
	estatus varchar(255) unique not null
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_spanish_ci;

insert into tbl_estatus (id_estatus,estatus) values ('1','activo'),('2','Inactivo');

CREATE TABLE tbl_nivel_user (
	id_nivel_user int(11) primary key auto_increment,
	nivel_user varchar(255) unique not null
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_spanish_ci;
insert into tbl_nivel_user (id_nivel_user,nivel_user) values ('1','administrador'),('2','operador'),('3','participante');

CREATE TABLE tbl_paises (
	id_paises int(11) primary key auto_increment,
	paises varchar(255)  not null,
	cod_pais varchar(255) not null
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_spanish_ci;

CREATE TABLE tbl_user (
	id_user int(11) primary key auto_increment,	
	firstname varchar(255) not null,
	lastname varchar(255) not null,
	email varchar(255) unique,
	alias varchar(255) unique,
	password varchar(255) not null,
	id_codigo varchar(255) not null,
	key_status int(11) not null,
	key_nivel int(11) not null,
	passport int(11) not null
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_spanish_ci;

INSERT INTO tbl_user  VALUES ("1","usuario","administrador","admin@gmail.com","admin123","123","0000000000","1","1","1");

CREATE TABLE tbl_participants (
	id_participants int(11) primary key auto_increment,
	phone varchar(255) not null,
	key_country int(11) not null,
	id_sponsor varchar(255) not null,
	key_user int(11),
	foreign key (key_user) references tbl_user(id_user) on delete cascade on update cascade
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_spanish_ci;

CREATE TABLE tbl_membrecia (
	id_membrecia int(11) primary key auto_increment,
	f_pago varchar(255) not null,
	referencia varchar(255) not null,
	key_user int(11) not null,
	monto varchar(255) not null,
	cod_ref varchar(255) not null,
	validado int(11) not null
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_spanish_ci;

CREATE TABLE tbl_tableros (
	id_tablero int(11) primary key auto_increment,
	nom_trablero varchar(255) not null,
	mnt_tablero varchar(255) not null,
	sts_tablero int(11) not null,
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_spanish_ci;

insert into tbl_tableros (id_tablero,nom_trablero,mnt_tablero,sts_tablero) values ("1","Tablero de 25","200","1");
insert into tbl_tableros (id_tablero,nom_trablero,mnt_tablero,sts_tablero) values ("2","Tablero de 100","800","0");
insert into tbl_tableros (id_tablero,nom_trablero,mnt_tablero,sts_tablero) values ("3","Tablero de 500","400","0");
insert into tbl_tableros (id_tablero,nom_trablero,mnt_tablero,sts_tablero) values ("4","Tablero de 1000","8000","0");
insert into tbl_tableros (id_tablero,nom_trablero,mnt_tablero,sts_tablero) values ("5","Tablero de 3000","24000","0");

CREATE TABLE tbl_posiciones (
	id_posicion int(11) primary key auto_increment,
	posicion varchar(255) not null,
	desc_posicion varchar(255) not null
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_spanish_ci;

insert into tbl_posiciones (id_posicion,posicion,desc_posicion) values ("1","1","Lider de Piramide");
insert into tbl_posiciones (id_posicion,posicion,desc_posicion) values ("2","2","Nivel Alto lider de Piramide");
insert into tbl_posiciones (id_posicion,posicion,desc_posicion) values ("3","4","Nivel intermedio de la Primaride");
insert into tbl_posiciones (id_posicion,posicion,desc_posicion) values ("4","4","Nuevo ingreso base de Piramide");
