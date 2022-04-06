create table filme(
	idFilme int not null auto_increment,
    titulo varchar(100),
    duracao time,
    ano date,
    capa longblob,
    trailer varchar(260),
    origem_idorigem int not null,
    primary key(idFilme),
    constraint fk_filme_origem
		foreign key(origem_idorigem)
        references origem (idorigem)
    
)
engine = InnoDB;

create table elenco(
	idElenco int not null auto_increment,
    ator_nome varchar(70),
    ator_idade tinyint(3),
    ator_pais varchar(45),
    primary key(idElenco)
)
engine = InnoDB;

create table diretor(
	idDiretor int not null auto_increment,
    nome varchar(70) not null,
    primary key(idDiretor)
)
engine = InnoDB;

create table genero(
	idGenero int not null auto_increment,
    tipo varchar(100),
    primary key(idGenero)
)
engine = InnoDB;

create table origem(
	idorigem int not null auto_increment,
    nome_pais varchar(70) not null,
    primary key(idorigem)
)
engine = InnoDB;

create table filme_Elenco(
	 filme_idFilme int not null,
     Elenco_idElenco int not null,
     primary key (filme_idFilme, Elenco_idElenco),
	 constraint fk_filme_Filme
		foreign key (filme_idFilme)
		references filme (idFilme),
	 constraint fk_filme_Elenco
		foreign key (Elenco_idElenco)
		references Elenco (idElenco)
)
engine = InnoDB;

create table filme_Diretor(
	 Diretor_idDiretor int not null,
     filme_idFilme int not null,
     primary key (Diretor_idDiretor, filme_idFilme),
	 constraint fk_filme_Diretor
		foreign key (Diretor_idDiretor)
		references Diretor (idDiretor),
	 constraint fk_filme_Filme2
		foreign key (filme_idFilme)
		references filme (idFilme)
)
engine = InnoDB;

create table filme_Genero(
	 filme_idFilme int not null,
     Genero_idGenero int not null,
     primary key (filme_idFilme, Genero_idGenero),
	 constraint fk_filme_Filme
		foreign key (filme_idFilme)
		references filme (idFilme),
	 constraint fk_filme_Genero
		foreign key (Genero_idGenero)
		references Genero (idGenero)
)
engine = InnoDB;