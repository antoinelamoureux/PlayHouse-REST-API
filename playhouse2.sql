#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: user
#------------------------------------------------------------

CREATE TABLE user(
        id_user    Int  Auto_increment  NOT NULL ,
        last_name  Varchar (50) NOT NULL ,
        first_name Varchar (50) NOT NULL ,
        email      Varchar (50) NOT NULL ,
        password   Binary (64) NOT NULL
	,CONSTRAINT user_PK PRIMARY KEY (id_user)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: platform
#------------------------------------------------------------

CREATE TABLE platform(
        id_platform   Int  Auto_increment  NOT NULL ,
        platform_type Enum ("Computer","Arcade","Console") NOT NULL
	,CONSTRAINT platform_PK PRIMARY KEY (id_platform)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: computer
#------------------------------------------------------------

CREATE TABLE computer(
        id_platform   Int NOT NULL ,
        plateform     Enum ("PC","Mac","MS DOS","Commodore64","Amiga","Atari ST","ZX Spectrum") NOT NULL ,
        platform_type Enum ("Computer","Arcade","Console") NOT NULL
	,CONSTRAINT computer_PK PRIMARY KEY (id_platform)

	,CONSTRAINT computer_platform_FK FOREIGN KEY (id_platform) REFERENCES platform(id_platform)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: arcade
#------------------------------------------------------------

CREATE TABLE arcade(
        id_platform   Int NOT NULL ,
        platform      Enum ("JAMMA","MVS","Sega Model 2","Naomi","CP System","CP System II","Atomikwave","Hyper NeoGeo 64","PGM") NOT NULL ,
        platform_type Enum ("Computer","Arcade","Console") NOT NULL
	,CONSTRAINT arcade_PK PRIMARY KEY (id_platform)

	,CONSTRAINT arcade_platform_FK FOREIGN KEY (id_platform) REFERENCES platform(id_platform)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: console
#------------------------------------------------------------

CREATE TABLE console(
        id_platform   Int NOT NULL ,
        platform      Enum ("Playstation","Playstation 2","Playstation 3","Playstation 4","Playstation 5","Nintendo Entertainement System","Super Nintendo","Nintendo 64","Game Cube","Wii","Wii U","Switch","Sega Model 1","Master System","Mega Drive","Mega CD","32X","Saturn","Dreamcast","FM Towns","Atari 2600","Atari 7800","Jaguar","3DO","CDI","Pc Engine","Pc Engine CD-Rom","SuperGrafX","PC-FX","Neo Geo","Neo Geo CD","Neo Geo X") NOT NULL ,
        platform_type Enum ("Computer","Arcade","Console") NOT NULL
	,CONSTRAINT console_PK PRIMARY KEY (id_platform)

	,CONSTRAINT console_platform_FK FOREIGN KEY (id_platform) REFERENCES platform(id_platform)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: editor
#------------------------------------------------------------

CREATE TABLE editor(
        id_editor Int  Auto_increment  NOT NULL ,
        name      Varchar (50) NOT NULL ,
        history   TinyText NOT NULL ,
        country   Varchar (50) NOT NULL
	,CONSTRAINT editor_PK PRIMARY KEY (id_editor)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: developper
#------------------------------------------------------------

CREATE TABLE developper(
        id_developper Int  Auto_increment  NOT NULL ,
        name          Varchar (50) NOT NULL ,
        history       TinyText NOT NULL ,
        country       Varchar (255) NOT NULL
	,CONSTRAINT developper_PK PRIMARY KEY (id_developper)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: games
#------------------------------------------------------------

CREATE TABLE games(
        id_game        Int  Auto_increment  NOT NULL ,
        title          Varchar (50) NOT NULL ,
        description    TinyText NOT NULL ,
        editor         Int NOT NULL ,
        developper     Int NOT NULL ,
        add_date       timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
        release_date   timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
        note           Enum ("0","0,5","1","1,5","2","2,5","3","3,5","4","4,5","5") NOT NULL ,
        category       Enum ("Action","Plateform","Action/PlateForm","Action/RPG","RPG","JRPG","MMORPG","Kids","Arcade","Puzzle/Reflexion","Simulation","Driving","Sports","Flipper","Shooter","FPS","RTS","Strategy","Party game","Music/Dance","Horror","Infiltration/Spying") NOT NULL ,
        state          Enum ("New","Mint","Very Good","Good","Correct","Gamer") NOT NULL ,
        classification Enum ("PEGI 3","PEGI 7","PEGI 12","PEGI 16","PEGI 18") NOT NULL ,
        id_editor      Int NOT NULL ,
        id_developper  Int NOT NULL
	,CONSTRAINT games_PK PRIMARY KEY (id_game)

	,CONSTRAINT games_editor_FK FOREIGN KEY (id_editor) REFERENCES editor(id_editor)
	,CONSTRAINT games_developper0_FK FOREIGN KEY (id_developper) REFERENCES developper(id_developper)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: tags
#------------------------------------------------------------

CREATE TABLE tags(
        id_tag Int  Auto_increment  NOT NULL ,
        title  Varchar (255) NOT NULL
	,CONSTRAINT tags_PK PRIMARY KEY (id_tag)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: games_tags
#------------------------------------------------------------

CREATE TABLE games_tags(
        id_tag  Int NOT NULL ,
        id_game Int NOT NULL
	,CONSTRAINT games_tags_PK PRIMARY KEY (id_tag,id_game)

	,CONSTRAINT games_tags_tags_FK FOREIGN KEY (id_tag) REFERENCES tags(id_tag)
	,CONSTRAINT games_tags_games0_FK FOREIGN KEY (id_game) REFERENCES games(id_game)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: games_user
#------------------------------------------------------------

CREATE TABLE games_user(
        id_game Int NOT NULL ,
        id_user Int NOT NULL
	,CONSTRAINT games_user_PK PRIMARY KEY (id_game,id_user)

	,CONSTRAINT games_user_games_FK FOREIGN KEY (id_game) REFERENCES games(id_game)
	,CONSTRAINT games_user_user0_FK FOREIGN KEY (id_user) REFERENCES user(id_user)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: games_platform
#------------------------------------------------------------

CREATE TABLE games_platform(
        id_platform Int NOT NULL ,
        id_game     Int NOT NULL
	,CONSTRAINT games_platform_PK PRIMARY KEY (id_platform,id_game)

	,CONSTRAINT games_platform_platform_FK FOREIGN KEY (id_platform) REFERENCES platform(id_platform)
	,CONSTRAINT games_platform_games0_FK FOREIGN KEY (id_game) REFERENCES games(id_game)
)ENGINE=InnoDB;

#------------------------------------------------------------
# ALTER TABLE
#------------------------------------------------------------

ALTER TABLE editor MODIFY history text;
ALTER TABLE developper MODIFY history text;
ALTER TABLE games MODIFY description text;
ALTER TABLE games DROP editor;
ALTER TABLE games DROP developper;

#------------------------------------------------------------
# INSERT
#------------------------------------------------------------

INSERT INTO editor (name, history, country) VALUES ('SNK', "SNK Corporation est une entreprise japonaise fondée en 1973 et domiciliée à Ōsaka, dont l'activité est la planification, le développement et l'édition de jeux vidéo et de systèmes de jeu vidéo, ainsi que la création et la gestion de centres de divertissement.", 'Japan');

INSERT INTO editor (name, history, country) VALUES ('Sony Interactive Entertainment', "Sony Interactive Entertainment est une filiale japonaise de Sony spécialisée dans l'industrie vidéoludique et basée à San Mateo, en Californie. La compagnie développe, produit et commercialise des consoles de jeu et des jeux vidéo. Le succès de la gamme PlayStation en fait l'un des principaux acteurs du marché.", 'Japan');

INSERT INTO developper (name, history, country) VALUES ('Nazca', "Nazca Corporation est une entreprise japonaise fondée en 1994. Son domaine d'activité s'établit dans le développement de jeux vidéo.", 'Japan');

INSERT INTO developper (name, history, country) VALUES ('Polyphony Digital', "Polyphony Digital est un studio japonais de développement de jeu vidéo fondé en 1998 et basé à Tokyo. Filiale de Sony Interactive Entertainment, la société est connue pour développer les jeux de course de la série Gran Turismo, dont les ventes s'élèvent à plus de 80 millions d'exemplaires. Le studio est dirigé par Kazunori Yamauchi.", 'Japan');

INSERT INTO games (title, description, add_date, release_date, note, category, state, classification, id_editor, id_developper) VALUES ('Metal Slug', "Metal Slug est un jeu vidéo d'arcade, de type shoot 'em up ou qui peut également être désigné par run and gun, paru à l'origine sur Neo-Geo MVS. Le jeu est similaire dans son principe à Contra et mêle humour décalé et action.",
CURRENT_TIMESTAMP, '1996-04-19', '5', 'Shooter', 'Mint', 'PEGI16', 1, 1);

INSERT INTO games (title, description, add_date, release_date, note, category, state, classification, id_editor, id_developper) VALUES ('Gran Turismo', "Gran Turismo est une série de jeux vidéo de course automobile conçue par le studio japonais Polyphony Digital, dirigée par Kazunori Yamauchi et produite par Sony Computer Entertainment sur les consoles de la gamme PlayStation. Débutée en 1997, la série comprend sept épisodes principaux et cinq déclinaisons. Réputée pour le réalisme visuel et la profondeur des sensations de pilotage, c'est l'une des séries de jeux vidéo plus populaires du genre avec plus de 80 millions d'exemplaires vendus (en mai 2018).",
CURRENT_TIMESTAMP, '1997-01-01', '4', 'Shooter', 'Mint', 'PEGI12', 2, 2);

INSERT INTO tags (title) VALUES ('Cult'), ('Family'), ('Bad'), ('Oldies'), ('Babes'), ('Cars'), ('Weird'), ('Gangsta'), ('Fun'), ('Nerdy'), ('Boring'), ('Gore'), ('Great'), ('Homebrew'), ('Poetic'), ('Cartoon');

INSERT INTO games_tags VALUES (1, 1), (1, 2), (2, 3), (2, 4), (2, 5);