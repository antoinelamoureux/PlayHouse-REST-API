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