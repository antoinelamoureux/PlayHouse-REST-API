#------------------------------------------------------------
# INSERT
#------------------------------------------------------------

ALTER TABLE `platform` DROP FOREIGN KEY `FKiofk5ce0vcd5y48jwmwlftkak`;

INSERT INTO roles (name) VALUES ('ROLE_ADMIN'), ('ROLE_USER');

INSERT INTO category (name) VALUES ('Action'), ('Plateform'), ('Action/PlateForm'), ('Action/RPG'), ('RPG'), ('JRPG'), ('MMORPG'), ('Kids'), ('Arcade'), ('Puzzle/Reflexion"'), ('Simulation'), ('Driving'), ('Sport'), ('Flipper'), ('Shooter'), ('FPS'), ('RTS'), ('Strategy'), ('Party Game'), ('Music/Dance'), ('Horror'), ('Infiltration/Spying');

INSERT INTO platform_type (name) VALUES ('Computer'), ('Arcade'), ('Console');

INSERT INTO platform (name, id_platform_type) VALUES ('Playstation', 3), ('Playstation 2', 3), ('Playstation 3', 3), ('Playstation 4', 3), ('Playstation 5', 3), ('Nintendo Entertainement System', 3), ('Super Nintendo', 3), ('Nintendo 64', 3), ('Game Cube', 3), ('Wii', 3), ('Wii U', 3), ('Switch', 3), ('Sega Model 1', 3), ('Master System', 3), ('Mega Drive', 3), ('Mega CD', 3), ('32X', 3), ('Saturn', 3), ('Dreamcast', 3), ('FM Towns', 3), ('Atari 2600', 3), ('Atari 7800', 3), ('Jaguar', 3), ('3DO', 3), ('CDI', 3), ('Pc Engine', 3), ('Pc Engine CD-Rom', 3), ('SuperGrafX', 3), ('PC-FX', 3), ('Neo Geo', 3), ('Neo Geo CD', 3), ('Neo Geo X', 3);

INSERT INTO classification (name) VALUES ('PEGI3'), ('PEGI7'), ('PEGI12'), ('PEGI16'), ('PEGI18');

INSERT INTO notes (note) VALUES (1), (2), (3), (4), (5);

INSERT INTO state (name) VALUES ("New"), ("Mint"), ("VeryGood"), ("Good"), ("Correct"), ("Gamer");

INSERT INTO tags (title) VALUES ('Cult'), ('Family'), ('Bad'), ('Oldies'), ('Babes'), ('Cars'), ('Weird'), ('Gangsta'), ('Fun'), ('Nerdy'), ('Boring'), ('Gore'), ('Great'), ('Homebrew'), ('Poetic'), ('Cartoon');

INSERT INTO editor (name, history, country) VALUES ('SNK', "SNK Corporation est une entreprise japonaise fondée en 1973 et domiciliée à Ōsaka, dont l'activité est la planification, le développement et l'édition de jeux vidéo et de systèmes de jeu vidéo, ainsi que la création et la gestion de centres de divertissement.", 'Japan');

INSERT INTO editor (name, history, country) VALUES ('Sony Interactive Entertainment', "Sony Interactive Entertainment est une filiale japonaise de Sony spécialisée dans l'industrie vidéoludique et basée à San Mateo, en Californie. La compagnie développe, produit et commercialise des consoles de jeu et des jeux vidéo. Le succès de la gamme PlayStation en fait l'un des principaux acteurs du marché.", 'Japan');

INSERT INTO editor (name, history, country) VALUES ('Nintendo', "Nintendo est une entreprise multinationale japonaise fondée en 1889 par Fusajirō Yamauchi3 près de Kyoto au Japon. Elle est spécialisée dans la fabrication de consoles de jeu vidéo, comme la Nintendo Entertainment System (NES), la Nintendo 64, la Wii et la Nintendo DS, ainsi que dans la conception de jeux vidéo tels que Super Mario ou The Legend of Zelda.", 'Japan');

INSERT INTO developper (name, history, country) VALUES ('Nazca', "Nazca Corporation est une entreprise japonaise fondée en 1994. Son domaine d'activité s'établit dans le développement de jeux vidéo.", 'Japan');

INSERT INTO developper (name, history, country) VALUES ('Polyphony Digital', "Polyphony Digital est un studio japonais de développement de jeu vidéo fondé en 1998 et basé à Tokyo. Filiale de Sony Interactive Entertainment, la société est connue pour développer les jeux de course de la série Gran Turismo, dont les ventes s'élèvent à plus de 80 millions d'exemplaires. Le studio est dirigé par Kazunori Yamauchi.", 'Japan');

INSERT INTO developper (name, history, country) VALUES ('Nintendo', "Nintendo est une entreprise multinationale japonaise fondée en 1889 par Fusajirō Yamauchi3 près de Kyoto au Japon. Elle est spécialisée dans la fabrication de consoles de jeu vidéo, comme la Nintendo Entertainment System (NES), la Nintendo 64, la Wii et la Nintendo DS, ainsi que dans la conception de jeux vidéo tels que Super Mario ou The Legend of Zelda.", 'Japan');

INSERT INTO games (title, description, add_date, release_date, id_category, id_classification, id_editor, id_developper, id_note, id_state) VALUES ('Metal Slug', "Metal Slug est un jeu vidéo d'arcade, de type shoot 'em up ou qui peut également être désigné par run and gun, paru à l'origine sur Neo-Geo MVS. Le jeu est similaire dans son principe à Contra et mêle humour décalé et action.",
CURRENT_TIMESTAMP, '1996-04-19', 1, 4, 1, 1, 4, 2);

INSERT INTO games (title, description, add_date, release_date, id_category, id_classification, id_editor, id_developper, id_note, id_state) VALUES ('Gran Turismo', "Gran Turismo est une série de jeux vidéo de course automobile conçue par le studio japonais Polyphony Digital, dirigée par Kazunori Yamauchi et produite par Sony Computer Entertainment sur les consoles de la gamme PlayStation. Débutée en 1997, la série comprend sept épisodes principaux et cinq déclinaisons. Réputée pour le réalisme visuel et la profondeur des sensations de pilotage, c'est l'une des séries de jeux vidéo plus populaires du genre avec plus de 80 millions d'exemplaires vendus (en mai 2018).",
CURRENT_TIMESTAMP, '1997-01-01', 2, 3, 2, 2, 2, 5);

INSERT INTO tags (title) VALUES ('Cult'), ('Family'), ('Bad'), ('Oldies'), ('Babes'), ('Cars'), ('Weird'), ('Gangsta'), ('Fun'), ('Nerdy'), ('Boring'), ('Gore'), ('Great'), ('Homebrew'), ('Poetic'), ('Cartoon');

INSERT INTO games_tags VALUES (1, 1), (1, 2), (2, 3), (2, 4), (2, 5);

INSERT INTO editor (name, history, country) VALUES ('Warner Bros', "Warner Bros. Interactive Entertainment (WBIE) est une filiale de Warner Bros. Entertainment spécialisée dans l'édition, la conception et la distribution de jeux vidéo. Sous l'égide de WBIE c'est la division Warner Bros. Games qui se charge de la création, du développement et de la production des jeux dits « first-party » des studios internes.", 'USA');

INSERT INTO editor (name, history, country) VALUES ('Ubisoft', "Ubisoft (anciennement Ubi Soft Entertainment) est une entreprise française de développement, d'édition et de distribution de jeux vidéo, créée en mars 1986 par les cinq frères Guillemot, originaires de Carentoir dans le Morbihan, en France.", 'France');

INSERT INTO editor (name, history, country) VALUES ('Epic Games', "Epic Games, anciennement Epic MegaGames (aussi connue sous le nom Epic), est un studio américain de développement et un distributeur de jeux vidéo basé à Cary, en Caroline du Nord. Le studio est détenu à 40 % par le géant chinois de l'internet Tencent mais le fondateur du studio, Tim Sweeney, conserve le plein contrôle du studio avec 51% des actions.", 'USA');

INSERT INTO editor (name, history, country) VALUES ('Xbox Game Studios', "Xbox Game Studios, créée en 1994 sous la dénomination Microsoft Game Studios (aussi appelée Microsoft Games puis Microsoft Studios), est une société détenue par Microsoft qui développe et édite des jeux vidéo pour les plates-formes estampillées Microsoft Windows ou les consoles Xbox, Xbox 360 et Xbox One.", 'USA');

INSERT INTO editor (name, history, country) VALUES ('Electronic Arts', "Electronic Arts ou EA est une société américaine fondée le 28 mai 1982 et dont le siège se situe à Redwood City en Californie1. EA est l'un des principaux développeurs et producteurs mondiaux de jeux vidéo.", 'USA');

INSERT INTO editor (name, history, country) VALUES ('Rockstar Games', "Rockstar Games est un développeur et éditeur de jeux vidéo basé à New York aux États-Unis, appartenant à Take-Two Interactive depuis le rachat en 1998 de l'éditeur britannique de jeux vidéo BMG Interactive.", 'Scotland');

INSERT INTO editor (name, history, country) VALUES ('Sega', "Sega Corporation (Kabushiki kaisha Sega, abréviation de Service Games, couramment stylisé SEGA) est une société japonaise de développement et d'édition de jeux vidéo, ainsi qu'un fabricant de bornes et systèmes d'arcade.", 'Japan');

INSERT INTO editor (name, history, country) VALUES ('Konami', "Konami Holdings Corporation (Konami Hōrudingusu Kabushiki-gaisha) est une société japonaise de développement et d'édition de jeux vidéo, l'une des plus importantes et célèbres du secteur. Son siège social est basé à Tokyo (Japon). Les activités de la compagnie s'étendent au domaine du jouet, de l'animation ainsi qu'à ceux du fitness, de la santé et des machines à sous. Son chiffre d'affaires en 2019 était de 2,1 milliard d'euros1.", 'Japan');

INSERT INTO developper (name, history, country) VALUES ('Rocksteady Studios', "Rocksteady Studios is a multi-award winning video-game developer based in London, England. Located in a spacious, purpose built converted factory, with full motion capture and audio studio capabilities, consisting of an energetic company formed by a core team of senior industry professionals.", 'England');

INSERT INTO developper (name, history, country) VALUES ('NetherRealm Studios', "NetherRealm Studios est un studio américain de développement de jeu vidéo basé à Chicago dans l'Illinois, dirigé par Ed Boon2. Ce studio était à l'origine Midway Studios Chicago, studio d'original de Midway Manufacturing Company. À la suite de son acquisition par Warner Bros. lors de la faillite de Midway Games en 2009, le studio est devenu une partie de WB Games Chicago.", 'USA');

INSERT INTO developper (name, history, country) VALUES ('Ubisoft', "Ubisoft (anciennement Ubi Soft Entertainment) est une entreprise française de développement, d'édition et de distribution de jeux vidéo, créée en mars 1986 par les cinq frères Guillemot, originaires de Carentoir dans le Morbihan, en France.", 'France');

INSERT INTO developper (name, history, country) VALUES ('Insomniac Games', "Insomniac Games est une société américaine de développement de jeu vidéo fondée en 1994 et basée à Burbank en Californie. L'entreprise est notamment créatrice des franchises Spyro the Dragon, Ratchet and Clank et Resistance.", 'USA');

INSERT INTO developper (name, history, country) VALUES ('Epic Games', "Epic Games, anciennement Epic MegaGames (aussi connue sous le nom Epic), est un studio américain de développement et un distributeur de jeux vidéo basé à Cary, en Caroline du Nord. Le studio est détenu à 40 % par le géant chinois de l'internet Tencent mais le fondateur du studio, Tim Sweeney, conserve le plein contrôle du studio avec 51% des actions.", 'USA');

INSERT INTO developper (name, history, country) VALUES ('343 Industries', "343 Industries est un studio de développement de jeux vidéo créé par Microsoft Studios avec pour objectif de superviser le développement et la continuité de la franchise Halo, qui comprend des jeux vidéo, romans, bandes dessinées, et des contenus multimédia. Le nom du studio est inspiré du personnage 343 Guilty Spark.", 'USA');

INSERT INTO developper (name, history, country) VALUES ('Electronic Arts', "Electronic Arts ou EA est une société américaine fondée le 28 mai 1982 et dont le siège se situe à Redwood City en Californie1. EA est l'un des principaux développeurs et producteurs mondiaux de jeux vidéo.", 'USA');

INSERT INTO developper (name, history, country) VALUES ('Rockstar North', "Rockstar North, anciennement appelé DMA Design entre 1988 et 2002, est un studio britannique de développement de jeu vidéo basé à Édimbourg (Ecosse) appartenant à Rockstar Games depuis 1999. Le studio est l'auteur de Lemmings et s'est spécialisé depuis 2001 avec le succès de Grand Theft Auto III, dans le jeu vidéo en monde ouvert et le jeu d'action avec une composante violente et licencieuse.", 'Scotland');

INSERT INTO developper (name, history, country) VALUES ('BioWare', "BioWare Corp. est une société canadienne de développement de jeux vidéo basée à Edmonton et fondée en 1995. Elle est principalement connue pour avoir développé plusieurs séries de jeux vidéo de rôle : Baldur's Gate, Neverwinter Nights, Star Wars: Knights of the Old Republic, Dragon Age et Mass Effect.", 'Canada');

INSERT INTO developper (name, history, country) VALUES ('Sumo Digital', "Sumo Digital est un studio de développement de jeux vidéo basé à Sheffield dans le Nord de l'Angleterre.", 'England');

INSERT INTO developper (name, history, country) VALUES ('Konami', "Konami Holdings Corporation (Konami Hōrudingusu Kabushiki-gaisha) est une société japonaise de développement et d'édition de jeux vidéo, l'une des plus importantes et célèbres du secteur. Son siège social est basé à Tokyo (Japon). Les activités de la compagnie s'étendent au domaine du jouet, de l'animation ainsi qu'à ceux du fitness, de la santé et des machines à sous. Son chiffre d'affaires en 2019 était de 2,1 milliard d'euros1.", 'Japan');

INSERT INTO developper (name, history, country) VALUES ('Amusement Vision', "Amusement Vision, Ltd. était un studio de développement japonais de jeux vidéo fondé en 2000 et anciennement connu sous le nom de Sega AM4.", 'Japan');

INSERT INTO developper (name, history, country) VALUES ('Naughty Dog', "Naughty Dog est une société américaine de développement de jeu vidéo domiciliée à Santa Monica, fondée en 1984 par Andy Gavin et Jason Rubin sous le nom de Jam Software, et repris par RR Celestin en 1989 sous le nom de Naughty Dog.", 'USA');

INSERT INTO platform (name, id_platform_type) VALUES ('Xbox', 3), ('Xbox 360', 3), ('Xbox One', 3);





