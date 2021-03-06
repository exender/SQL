﻿USE LOS

-- CHAMPSTATS 
CREATE TABLE CHAMPSTATS
(CHAMP_ID INT primary key,
HEALTH INT not null,
HEALTH_REGEN FLOAT not null,
AD INT not null,
RESSOURCE BIT not null,
ARMOR INT not null,
MR INT not null,
MVT_SPEED INT not null,
CAC BIT not null)

-- GAMEPLAYSTATS
CREATE TABLE GAMEPLAYSTATS
(HIGHEST_RANKED_PLAYER VARCHAR(15) primary key,
CHAMP_ID INT not null,
FOREIGN KEY(CHAMP_ID) REFERENCES CHAMPSTATS(CHAMP_ID),
META BIT not null,
RUNES VARCHAR(25) not null,
FIRST_SPELL_TAKEN CHAR not null,
FIRST_BLOOD FLOAT not null,
BEST_WIN_TIME VARCHAR(6) not null,
SUMMONER_SPELL VARCHAR(15) not null,
KDA FLOAT not null,
WIN_RATE FLOAT not null,
BAN_RATE FLOAT not null,
PICK_RATE FLOAT not null,
POST VARCHAR(8) not null)

-- METASTATS
CREATE TABLE METASTATS
(CHAMP_ID INT not null,
FOREIGN KEY(CHAMP_ID) REFERENCES CHAMPSTATS(CHAMP_ID),
HIGHEST_RANKED_PLAYER VARCHAR(15) not null,
FOREIGN KEY(HIGHEST_RANKED_PLAYER) REFERENCES GAMEPLAYSTATS(HIGHEST_RANKED_PLAYER),
RELEASE_DATE DATE not null,
CHAMP_TYPE VARCHAR(10) primary key,
DIFFICULTY INT not null,
EB_COST INT not null,
RP_COST INT not null,
NBR_SKIN INT not null,
PRO_PLAY INT null,
TOTAL_GAMES_PLAYED INT not null)

-- LORESTATS
CREATE TABLE LORESTATS
(CHAMP_ID INT not null,
FOREIGN KEY(CHAMP_ID) REFERENCES CHAMPSTATS(CHAMP_ID),
CHAMP_NAME VARCHAR(20) not null,
FULL_CHAMP_NAME VARCHAR(40) not null,
REGION VARCHAR(15) not null,
CHAMP_TYPE VARCHAR(10) not null,
FOREIGN KEY(CHAMP_TYPE) REFERENCES METASTATS(CHAMP_TYPE))

-- ITEMS
CREATE TABLE ITEMS
(CHAMP_ID INT not null,
FOREIGN KEY(CHAMP_ID) REFERENCES CHAMPSTATS(CHAMP_ID),
FIRST_ITEM_BUILT VARCHAR(40) not null,
FIRST_BOOTS_BUILT VARCHAR(40) null,
TOTAL_GP INT not null,
TOTAL_CS INT null) 

-- OBJECTIVES
CREATE TABLE OBJECTIVES
(DRAGONS_TAKEN INT null,
HEARLD_TAKEN INT null,
NASHOR_TAKEN INT null,
ELDER_DRAKE_TAKEN INT null,
RED_BUFF_TAKEN_FIRST BIT not null)



-- Alistar
INSERT CHAMPSTATS
VALUES(000, 600, 8.5, 62, 1, 44, 32, 330, 1)

INSERT GAMEPLAYSTATS
VALUES('Yokitch', 000, 1, 'Après-coup', 'Q', 0.15, 'Mid', 'Ignite', 6.16, 50.3, 0.5, 4.3, 'Support')

INSERT METASTATS
VALUES(000, 'Yokitch', '2009-02-21', 'Vanguard', 1, 1350, 585, 14, 50, 338268)

INSERT LORESTATS
VALUES(000, 'Alistar', 'The Minotaur', 'Noxus', 'Vanguard')

INSERT ITEMS
VALUES(000, 'Convergence de Zeke', 'Bottes de mobilité',  7697, 34)



-- Annie
INSERT CHAMPSTATS
VALUES(001, 524, 5.5, 50, 1, 19, 30, 335, 0)

INSERT GAMEPLAYSTATS
VALUES('Meliodas Verde', 001, 0, 'Électrocution', 'Q', 0.30, 'Late', 'Ignite', 6.36, 52.0, 0.3, 1.8, 'Middle')

INSERT METASTATS
VALUES(001, 'Meliodas Verde', '2009-02-21', 'Burst', 1, 450, 260, 13, NULL, 286381) 

INSERT LORESTATS
VALUES(001, 'Annie', 'The Dark Child', 'Noxus' , 'Burst') 

INSERT ITEMS
VALUES(001, 'Écho de Luden', 'Chaussures de sorcier', 10744, 136) 



-- Ashe
INSERT CHAMPSTATS
VALUES(002, 539, 3.5, 61, 1, 26, 30, 325, 0)

INSERT GAMEPLAYSTATS
VALUES('Ganador', 002, 1, 'Tempo mortel', 'W', 0.40, 'Late', 'Heal', 6.43, 49.9, 0.5, 7.9, 'Bottom')

INSERT METASTATS
VALUES(002, 'Ganador', '2009-02-21', 'Marksman', 1, 450, 260, 12, 6, 987441)

INSERT LORESTATS
VALUES(002, 'Ashe', 'The Frost Archer', 'Freljord', 'Marksman')

INSERT ITEMS
VALUES(002, 'Lame du roi déchu', 'Jambière du berzerker',  11317, 160)



-- Fiddlesticks
INSERT CHAMPSTATS
VALUES(003, 580, 5.5, 55, 1, 34, 30, 335, 0)

INSERT GAMEPLAYSTATS
VALUES('Ferrari Fiddle', 003, 0, 'Prédateur', 'W', 0.56, 'Late', 'Smite', 6.63, 48.4, 23.5, 10.1, 'Jungle')

INSERT METASTATS
VALUES( 003, 'Ferrari Fiddle', '2009-02-21',  'Specialist', 2, 1350, 585, 9, NULL, 636653)

INSERT LORESTATS
VALUES( 003, 'Fiddlesticks', 'The Ancient Fear', 'Demacia' , 'Specialist')

INSERT ITEMS
VALUES( 003, 'Enchantement : Écho runiques', 'Chaussures de sorcier', 9914, 110)



-- Jax
INSERT CHAMPSTATS
VALUES(004, 592, 8.5, 68, 1, 36, 32, 350, 1)

INSERT GAMEPLAYSTATS
VALUES('B1GBOPPA', 004, 1, 'Conquérant', 'E', 0.60, 'Mid', 'Teleport', 5.26, 48.8, 7.8, 10.5, 'Top')

INSERT METASTATS
VALUES(004, 'B1GBOPPA', '2009-02-21', 'Skirmisher', 1, 1350, 585, 11, 13, 1088482)

INSERT LORESTATS
VALUES(004, 'Jax', 'Grandmaster At Arms',  'Icathia' , 'Skirmisher')

INSERT ITEMS
VALUES(004, 'Lame du roi déchu', 'Tabi ninja',  11506, 164)



-- Kayle
INSERT CHAMPSTATS
VALUES(005, 600, 5, 50, 1, 26, 34, 335, 1)

INSERT GAMEPLAYSTATS
VALUES('kayle 1v9', 005, 1, 'Jeu de jambes', 'E', 0.30, 'Mid', 'Teleport', 5.2, 49.8, 0.3, 2.9, 'Top')

INSERT METASTATS
VALUES(005, 'kayle 1v9', '2009-02-21', 'Dual Range', 2, 450, 260, 10, NULL, 324180)

INSERT LORESTATS
VALUES(005, 'Kayle', 'The Righteous', 'Targon', 'Dual Range')

INSERT ITEMS
VALUES(005, 'Pistolame Hextech', 'Jambière du berzerker', 11547, 187)



-- Maître Yi
INSERT CHAMPSTATS
VALUES(006, 598, 7.5, 66, 1, 33, 32, 355, 1)

INSERT GAMEPLAYSTATS
VALUES('Zαpdo', 006, 1, 'Conquérant', 'Q', 0.35, 'Late', 'Smite', 6.2, 48.3, 25.2, 7.2, 'Jungle')

INSERT METASTATS
VALUES(006, 'Zαpdo', '2009-02-21', 'Cut throat', 1, 450, 260, 11, NULL, 1063720)

INSERT LORESTATS
VALUES(006, 'Maître Yi', 'The Wuju Bladesman',  'Ionia', 'Cut throat')

INSERT ITEMS
VALUES(006, 'Enchantement : Rasoir sanglant', 'Tabi ninja', 11916, 159)



-- Morgana
INSERT CHAMPSTATS
VALUES(007, 560, 5.5, 56, 1, 25, 30, 335, 0)

INSERT GAMEPLAYSTATS
VALUES('Skylandz', 007, 1, 'Invocation d"Aery', 'W', 0.15, 'Mid', 'Ignite', 6.66, 51.0, 40.0, 10.5, 'Middle')

INSERT METASTATS
VALUES(007, 'Skylandz', '2009-02-21', 'Catcher', 1, 1350, 585, 11, 5, 1191670)

INSERT LORESTATS
VALUES(007, 'Morgana', 'The Fallen', 'Targon', 'Catcher')

INSERT ITEMS
VALUES(007, 'Sablier de Zhonya', 'Bottes de mobilité',  8934, 51)



-- Nunu & Willump
INSERT CHAMPSTATS
VALUES(008, 570, 5, 61, 1, 32, 32, 345, 1)

INSERT GAMEPLAYSTATS
VALUES('Kesha', 008, 1, 'Prédateur', 'Q', 0.20, 'Early', 'Smite', 6.6, 50.8, 0.6, 3.3, 'Jungle')

INSERT METASTATS
VALUES(008, 'Kesha', '2009-02-21', 'Yeti Style', 1, 450, 260, 9, 3, 253795)

INSERT LORESTATS
VALUES(008, 'Nunu & Willump', 'The Boy And His Yeti', 'Freljord', 'Yeti Style')

INSERT ITEMS
VALUES(008, 'Enchantement : Titan cendré', 'Sandales de Mercure',  10161, 139)



-- Ryze
INSERT CHAMPSTATS
VALUES(009, 570, 8, 55, 1, 21, 34, 340, 0)

INSERT GAMEPLAYSTATS
VALUES('bruv machine', 009, 0, 'Rush phasique', 'W', 0.05, 'Late', 'Teleport', 5.33, 46.2, 0.9, 4.5, 'Middle')

INSERT METASTATS
VALUES(009, 'bruv machine', '2009-02-21', 'Battlemage', 2, 450, 260, 14, 37, 404851)

INSERT LORESTATS
VALUES(009, 'Ryze', 'The Rune Mage',  'Runeterra', 'Battlemage')

INSERT ITEMS
VALUES(009, 'Bâton séculaire', 'Chaussures de sorcier', 11386, 195)



-- Sion
INSERT CHAMPSTATS
VALUES(010, 545, 7.5, 68, 1, 32, 32, 345, 1)

INSERT GAMEPLAYSTATS
VALUES('Thebausffs', 010, 0, 'Poigne de l"immortel', 'Q', 0.30, 'Late', 'Teleport', 5.9, 50.4, 0.1, 2.7, 'Top')

INSERT METASTATS
VALUES(010, 'Thebausffs', '2009-02-21', 'GigaZombie', 1, 1350, 585, 7, 37, 243949)

INSERT LORESTATS
VALUES(010, 'Sion', 'The Undead Juggernaut', 'Noxus', 'GigaZombie')

INSERT ITEMS
VALUES(010,  'Cape solaire', 'Tabi ninja', 10809, 162)



--Sivir 
INSERT CHAMPSTATS 
VALUES(011, 532, 3.25, 63, 1, 26, 30, 335, 0)

INSERT GAMEPLAYSTATS
VALUES('Zenterleft', 011, 0, 'Tempo Mortel', 'Q', 0.45, 'Late', 'Heal', 5.6, 50.6, 2.3,3.4,'Bottom')

INSERT METASTATS
VALUES(011, 'Zenterleft','2009-02-21', 'LivreuUber', 2, 450, 260, 6, 24, 355596)

INSERT LORESTATS
VALUES(011,'Sivir', 'Battle Mistress', 'Shurima','LivreuUber')

INSERT ITEMS
VALUES(011, 'Faux Spectrale', 'Jambière du berzerker', 19613, 196)



--Soraka
INSERT CHAMPSTATS
VALUES(012, 535, 2.5, 50, 1, 32, 30, 325, 0)

INSERT GAMEPLAYSTATS
VALUES('my adc 2 good', 012, 0, 'Invocation d"Aery', 'W', 0.45, 'Mid', 'Heal', 15, 49, 0.15, 1.4, 'Bottom')

INSERT METASTATS
VALUES(012, 'my adc 2 good','2009-02-21','Licorne', 1, 450, 260, 10, 1, 421848)

INSERT LORESTATS
VALUES(012, 'Soraka','THE STARCHILD', 'Ionia', 'Licorne')

INSERT ITEMS
VALUES(012,'Graal impie d"Athene','Bottes de mobilité',  7373,18)



--Teemo
INSERT CHAMPSTATS
VALUES(013, 528, 5.5, 54, 1, 24, 30, 330, 0)

INSERT GAMEPLAYSTATS
VALUES('Korvmannen', 013, 1, 'Poigne de l"immortel', 'Q', 0.60, 'Mid', 'Ignite', 6.66, 51, 0.20, 6.3, 'Top')

INSERT METASTATS
VALUES(013,'Korvmannen','2009-02-21', 'Diable', 1, 1350, 585, 7, NULL, 762101)

INSERT LORESTATS
VALUES(013, 'Teemo','Swift Scout', 'Bandle City', 'Diable')

INSERT ITEMS
VALUES(013, 'Tourment de Liandry', 'Chaussures de sorcier', 11508, 161)



--Tristana
INSERT CHAMPSTATS
VALUES(014, 559, 4, 61, 1, 26, 30, 325, 0)

INSERT GAMEPLAYSTATS
VALUES('Asves', 014, 0, 'Attaque Soutenue', 'E', 0.20, 'Late', 'Heal', 5.2, 53, 0.21, 0.25, 'Bottom')

INSERT METASTATS
VALUES(014,'Asves', '2009-02-21', 'Destruc', 1, 1350, 585, 7, 8, 910675)

INSERT LORESTATS
VALUES(014,'Tristana', 'Yordle Gunner','Yordle', 'Destruc')

INSERT ITEMS
VALUES(014, 'Lame Tempete','Jambière du berzerker', 11943, 170)



--Twisted Fate
INSERT CHAMPSTATS
VALUES(015, 534, 5.5, 50, 1, 20, 30, 335, 0)

INSERT GAMEPLAYSTATS
VALUES('imsåma', 015, 1, 'Grimoire Déchainé', 'Q', 0.10, 'Mid', 'Teleport', 5.6, 50, 1.3, 7.38, 'Mid')

INSERT METASTATS
VALUES(015, 'imsåma', '2009-02-21', 'Hearth', 2, 1350, 585, 11, NULL, 317452)

INSERT LORESTATS
VALUES(015,'Twisted Fate','Card Master','Freljord', 'Hearth')

INSERT ITEMS
VALUES(015,'Baton Seculaire','Sandale de Mercure', 11376, 158)



--Warwick 
INSERT CHAMPSTATS
VALUES(016, 550, 4, 65, 1, 33, 32, 335, 1)

INSERT GAMEPLAYSTATS
VALUES('Corona WW', 016, 1, 'Attaque Soutenue', 'Q', 0.20, 'Early', 'Smite', 5.8, 52, 0.26, 2.62, 'Jungle')

INSERT METASTATS
VALUES(016, 'Corona WW','2009-02-21', 'Loup', 1, 450, 260, 10, NULL, 932934)

INSERT LORESTATS
VALUES(016,'Warwick', 'Uncaged Wrath of Zaun','Zaun', 'Loup')

INSERT ITEMS
VALUES(016,'Tiamat','Tabi ninja',11345,145)



--Singed
INSERT CHAMPSTATS
VALUES(017, 580, 9, 63, 1, 34, 33, 345, 1)

INSERT GAMEPLAYSTATS
VALUES( 'SlNGED', 017, 1, 'Conquérant', 'Q', 0.15, 'Late', 'Teleport', 5.4, 51, 0.31, 1.95, 'Top')

INSERT METASTATS
VALUES(017, 'SlNGED', '2009-04-18', 'Empoiso', 2, 450, 260, 10, NULL, 202692)

INSERT LORESTATS
VALUES(017,'Singed', 'Mad Chemist','Zaun','Empoiso')

INSERT ITEMS
VALUES(017,'Sceptre de Rilay','Tabi ninja', 11152,175)



--Zilean
INSERT CHAMPSTATS
VALUES(018, 504, 5.5, 51, 1, 24, 30, 335, 0)

INSERT GAMEPLAYSTATS
VALUES('WF Dylean', 018, 1, 'Invocation d"Aery', 'Q', 0.20, 'Mid', 'Ignite', 5.4, 53, 3.12,  6.12, 'Support')

INSERT METASTATS
VALUES(018, 'WF Dylean', '2009-04-18', 'Maratho', 3, 1350, 585, 8, 17, 296860)

INSERT LORESTATS
VALUES(018,'Zilean', 'Chronokeeper','Zaun','Maratho')

INSERT ITEMS
VALUES(018,'Ombre Jumelles','Bottes de mobilité', 8810,68)



--Evelynn
INSERT CHAMPSTATS
VALUES(019,    572, 8.5, 61, 1, 37, 32, 335, 1)

INSERT GAMEPLAYSTATS
VALUES('TRUEINVIS', 019, 0, 'Électrocution', 'Q', 0.10, 'Early', 'Smite' , 4.9, 49, 1.99, 2.41, 'Jungle')

INSERT METASTATS
VALUES(019, 'TRUEINVIS', '2009-05-01', 'ElDiabless', 2, 1350, 585, 9, 1, 330999)

INSERT LORESTATS
VALUES(019,'Evelynn','Agony s Embrace','Runeterra','ElDiabless')

INSERT ITEMS
VALUES(019,'Enchantement : écho runique','Chaussures de sorcier', 11086, 132)



--Twitch
INSERT CHAMPSTATS
VALUES(020, 582 , 3, 59, 1, 27, 30, 330, 1)

INSERT GAMEPLAYSTATS
VALUES('M0SbR1cKA', 020, 0, 'Attaque Soutenue', 'E', 0.35, 'Mid','Heal', 4.8, 50, 0.07, 1.05, 'Bottom')

INSERT METASTATS
VALUES(020, 'M0SbR1cKA', '2009-05-01','Le rat', 1, 3150, 790, 11, 1, 418724)

INSERT LORESTATS
VALUES(020,'Twitch','Plague Rat','Zaun','Le rat')

INSERT ITEMS
VALUES(020,'Lame du roi déchu','Jambière du berzerker', 11887,158)



-- Tryndamere
INSERT CHAMPSTATS
VALUES(021, 625, 8.5, 69, 1, 33, 32, 345, 1)

INSERT GAMEPLAYSTATS
VALUES('Lumerion', 021, 0, 'Tempo mortel', 'E', 0.40, 'Early', 'Ignite', 4.9, 50.9, 4.5, 4.9, 'Top')

INSERT METASTATS
VALUES(021, 'Lumerion', '2009-05-01', 'Invincible', 1, 1350, 585, 11, NULL, 679008)

INSERT LORESTATS
VALUES(021, 'Tryndamere', 'The barbarian king', 'Freljord' , 'Invincible') 

INSERT ITEMS
VALUES(021,  'Lame du roi déchu', 'Jambière du berzerker', 12203, 213)



-- KARTHUS
INSERT CHAMPSTATS
VALUES(022, 528, 6.5, 46, 1, 30, 20, 335, 0)

INSERT GAMEPLAYSTATS
VALUES('Falarinn', 022, 1, 'Moisson Noire', 'Q', 0.02, 'Late', 'Smite', 7.1, 48.8, 4.3, 4.5, 'Jungle')

INSERT METASTATS
VALUES(022, 'Falarinn', '2009-06-12', 'press R', 2, 3150, 790, 5, 19, 216063)

INSERT LORESTATS
VALUES(022, 'Karthus', 'The Deathsinger', 'Shadow Isles' , 'press R') 

INSERT ITEMS
VALUES(022,  'Enchantement : Écho runiques', 'Chaussures de sorcier', 12067, 188)



-- AMUMU
INSERT CHAMPSTATS
VALUES(023, 613, 9, 53, 1, 33, 32, 335, 1)

INSERT GAMEPLAYSTATS
VALUES('El Löto', 023, 0, 'Après-coup', 'W', 0.5, 'Late', 'Smite', 6.5, 50.9, 0.7, 3.8, 'Jungle')

INSERT METASTATS
VALUES(023, 'El Löto', '2009-06-25', 'pleuré', 1, 450, 260, 10, NULL, 666102)

INSERT LORESTATS
VALUES(023, 'Amumu', 'The Sad Mummy', 'Shurima' , 'pleuré') 

INSERT ITEMS
VALUES(023,  'Enchantement : Écho runiques', 'Chaussures de sorcier', 10442, 152)



-- CHO'GATH
INSERT CHAMPSTATS
VALUES(024, 574, 9, 69, 1, 38, 32, 345, 1)

INSERT GAMEPLAYSTATS
VALUES(' João', 024, 0, 'Optimisation Glacial', 'Q', 0.10, 'Late', 'Teleport', 5.5, 48.9, 0.5, 3.0, 'Top')

INSERT METASTATS
VALUES(024, 'João', '2009-06-25', 'Nomnom', 1, 1350, 585, 8, 1, 398125)

INSERT LORESTATS
VALUES(024, 'Cho gath', 'The Terror of the Void', 'Void' , 'Nomnom') 

INSERT ITEMS
VALUES(024,  'GLP Hextech 800 ', 'Sandales de Mercure', 10709, 165)



-- ANIVIA
INSERT CHAMPSTATS
VALUES(025, 480, 5.5, 53, 1, 21, 30, 325, 0)

INSERT GAMEPLAYSTATS
VALUES(' Bridge111', 025, 0, 'Optimisation Glacial', 'Q', 0.10, 'Late', 'Ignite', 5.6, 51, 0.9, 2.6, 'Middle')

INSERT METASTATS
VALUES(025, 'Bridge111', '2009-07-10', 'Omelette', 2, 3150, 790, 9, 1, 225159)

INSERT LORESTATS
VALUES(025, 'Anivia', 'The Cryophoenix', 'Freljord' , 'Omelette') 

INSERT ITEMS
VALUES(025,  'Bâton séculaire', 'Chaussures de sorcier', 11173, 182)



-- RAMMUS 
INSERT CHAMPSTATS
VALUES(026, 568, 8, 36, 1, 36, 32, 335, 1)

INSERT GAMEPLAYSTATS
VALUES(' owker', 026, 1, 'Après-coup', 'W', 0.10, 'Late', 'Smite', 5.5, 49, 4.1, 2.9, 'Jungle')

INSERT METASTATS
VALUES(026, 'owker', '2009-07-10', 'Toupie', 1, 1350, 585, 10, NULL, 342682)

INSERT LORESTATS
VALUES(026, 'Rammus', 'The Armordillo', 'Shurima' , 'TOUPIE') 

INSERT ITEMS
VALUES(026,  'Enchantement : Titan cendré', 'Tabi ninja', 10139, 139)



-- VEIGAR
INSERT CHAMPSTATS
VALUES(027, 505, 6.5, 52, 1, 23, 30, 340, 0)

INSERT GAMEPLAYSTATS
VALUES(' Calmlands', 027, 0, 'Optimisation Glacial', 'Q', 0.13, 'Late', 'Teleport', 6.5, 49, 1.7, 5.4, 'Middle')

INSERT METASTATS
VALUES(027, 'Calmlands', '2009-07-24', '1M ap', 2, 1350, 585, 12, NULL, 932148) 

INSERT LORESTATS
VALUES(027, 'Veigar', 'THE TINY MASTER OF EVIL', 'Bandle City' , '1M ap') 

INSERT ITEMS
VALUES(027,  'GLP Hextech 800', 'Chaussures de sorcier', 11275, 169)



--KASSADIN
INSERT CHAMPSTATS
VALUES(028, 576, 6, 58, 1, 19, 30, 335, 1)

INSERT GAMEPLAYSTATS
VALUES(' MrJoystik', 028, 1, 'Jeu de jambes', 'Q', 0.15, 'Late', 'Teleport', 6.5, 50.3, 24.8, 7.6, 'Middle')

INSERT METASTATS
VALUES(028, 'MrJoystik', '2009-08-07', '1xxxx dash', 2, 3150, 790, 7, 2, 558526) 

INSERT LORESTATS
VALUES(028, 'Kassadin', 'The Void Walker', 'Void' , '1xxxx dash') 

INSERT ITEMS
VALUES(028,  'Bâton séculaire', 'Chaussures de sorcier', 11321, 176)



--GANGPLANK
INSERT CHAMPSTATS
VALUES(029, 540, 6, 64, 1, 35, 32, 345, 1)

INSERT GAMEPLAYSTATS
VALUES('Hansplank', 029, 1, 'Poigne de l"immortel', 'Q', 0.22, 'Late', 'Teleport', 4.9, 48.3, 1.5, 4, 'Top')

INSERT METASTATS
VALUES(029, 'Hansplank', '2009-08-19', 'Orange', 3, 3150, 790, 10, 5, 262798) 

INSERT LORESTATS
VALUES(029, 'Gangplank', 'The Saltwater Scourge', 'Bilgewater' , 'Orange') 

INSERT ITEMS
VALUES(029,  'Force de la Trinité', 'Tabi ninja', 12167, 196)



--TARIC
INSERT CHAMPSTATS
VALUES(030, 575, 6, 55, 1, 40, 32, 340, 1)

INSERT GAMEPLAYSTATS
VALUES('Varaxo', 030, 1, 'Gardien', 'E', 0.05, 'Late', 'Ignite', 3.5 , 53, 1.5, 4, 'Support')

INSERT METASTATS
VALUES(030, 'Varaxo', '2009-08-19', 'le gay', 2, 1350, 585, 6, NULL, 304424)

INSERT LORESTATS
VALUES(030, 'Taric', 'The Shield of Valoran', 'Targon' , 'le gay')

INSERT ITEMS
VALUES(030,  'Convergence de Zeke', 'Bottes de mobilité', 7365, 37)



-- Malphite
INSERT CHAMPSTATS
VALUES(031, 574, 7, 61, 1, 37, 32, 335, 1)

INSERT GAMEPLAYSTATS
VALUES('Pidin', 031, 1, 'Comète arcanique', 'Q', 0.20, 'Mid', 'Teleport', 5.25, 51.2, 2.9, 5.7, 'Top')

INSERT METASTATS
VALUES(031, 'Pidin', '2009-08-19', 'Teleport', 5, 1650, 585, 6, NULL, 304324)

INSERT LORESTATS
VALUES(031, 'Malphite', 'The Shield of Malphite', 'Comète arcanique' , 'Teleport')

INSERT ITEMS
VALUES(031,  'Gantelet givrant', 'Coeur gelé', 2700, 35)



-- Janna
INSERT CHAMPSTATS
VALUES(032, 500, 5, 46, 1, 28, 30, 315, 0)

INSERT GAMEPLAYSTATS
VALUES('NAsFinest', 032, 1, 'Comète arcanique', 'W', 0.10, 'Early', 'Ignite', 6.4, 52.4, 0.4, 5.7, 'Support')

INSERT METASTATS
VALUES(032, 'NAsFinest', '2010-10-19', 'SuperNami', 5, 1350, 575, 4, NULL, 302644)

INSERT LORESTATS
VALUES(032, 'Janna', 'Comète arcanique', 'Janna' , 'SuperNami')

INSERT ITEMS
VALUES(032,  'L encencoir Ardent', 'La Redemption', 1885, 32)



-- BLITZCRANK
INSERT CHAMPSTATS
VALUES(033, 582, 8, 61, 1, 37, 32, 325, 1)

INSERT GAMEPLAYSTATS
VALUES('besni leptir', 033, 1, 'Après-coup', 'Q', 0.50, 'Early', 'Ignite', 5.25, 51.6, 16.4, 5.7, 'Support')

INSERT METASTATS
VALUES(033, 'besni leptir', '2009-08-19', 'besni', 2, 1350, 585, 6, NULL, 310424)

INSERT LORESTATS
VALUES(033, 'BLITZCRANK', 'Après-coup', 'BLITZCRANK' , 'besni')

INSERT ITEMS
VALUES(033,  'Convergence de Zeke', 'Médaillon de l iron Solari', 7365, 100)



-- DR. MUNDO
INSERT CHAMPSTATS
VALUES(034, 582, 8, 61, 0, 36, 32, 345, 1) 

INSERT GAMEPLAYSTATS
VALUES('Hyperdawn', 034, 1, 'Poigne de l"immortel', 'Q', 0.3, 'Late', 'Teleport', 2.47, 50.2, 0.6, 4, 'Top')

INSERT METASTATS
VALUES(034, 'Hyperdawn', '2009-08-19', 'le gay', 2, 1350, 585, 6, NULL, 304424)

INSERT LORESTATS
VALUES(034, 'DR. MUNDO', 'Poigne de l"immortel', 'DR. MUNDO' , 'Hyperdown')

INSERT ITEMS
VALUES(034,  'Visage Spirituel', 'Cape Solaire', 155, 30)



-- Katarina
INSERT CHAMPSTATS
VALUES(035, 602, 7, 58, 0, 27, 32, 340, 1)

INSERT GAMEPLAYSTATS
VALUES('Myeong Ju', 035, 1, 'Conquérant', 'Q', 0.6, 'Early', 'Ignite', 6.7, 51.4, 11.5, 5.7, 'Mid')

INSERT METASTATS
VALUES(035, 'Myeong Ju', '2009-08-19', 'le gay', 2, 1350, 585, 6, NULL, 304424)

INSERT LORESTATS
VALUES(035, 'Katarina', 'Conquérant', 'Katarina' , 'MJ')

INSERT ITEMS
VALUES(035,  'Pistolame Hextech', 'Sablier de Zhonya', 1265, 40)



-- Corki
INSERT CHAMPSTATS
VALUES(036, 518, 5, 55, 1, 28, 30, 325, 0)

INSERT GAMEPLAYSTATS
VALUES('LunchYz', 036, 1, 'Jeu de jambes', 'Q', 0.3, 'Late', 'Teleport', 2.44, 47.5, 0.2, 5.7, 'Mid')

INSERT METASTATS
VALUES(036, 'LunchYz', '2009-08-19', 'LunchYz', 2, 1350, 585, 6, NULL, 300824)

INSERT LORESTATS
VALUES(036, 'Corki', 'Jeu de jambes', 'Corki' , 'LunchYz')

INSERT ITEMS
VALUES(036,  'Force de la Trinité', 'Canon ultra-rapide', 3520, 42)



-- Nasus
INSERT CHAMPSTATS
VALUES(037, 561, 9, 67, 1, 34, 32, 350, 1)

INSERT GAMEPLAYSTATS
VALUES('Sebekx', 037, 1, 'Grimoire Déchainé', 'Q', 0.2, 'Late', 'Teleport', 4.9, 50.3, 5, 5.7, 'Top')

INSERT METASTATS
VALUES(037, 'Sebekx', '2009-08-19', 'Sebekx', 2, 1350, 585, 6, NULL, 304424)

INSERT LORESTATS
VALUES(037, 'Nasus', 'Grimoire Déchainé', 'Nasus' , 'Sebekx')

INSERT ITEMS
VALUES(037,  'Force de la Trinité', 'Cottes Epineuse', 3255, 56)



-- HEIMERDINGER
INSERT CHAMPSTATS
VALUES(038, 488, 7, 55, 1, 19, 30, 340, 0)

INSERT GAMEPLAYSTATS
VALUES('AuFault', 038, 1, 'Comète arcanique', 'W', 0.3, 'Late', 'Teleport', 4.2, 48.1, 2.1, 5.7, 'Top')

INSERT METASTATS
VALUES(038, 'AuFault', '2009-08-19', 'AuFault', 2, 1310, 585, 6, NULL, 300124)

INSERT LORESTATS
VALUES(038, 'HEIMERDINGER', 'Comète arcanique', 'HEIMERDINGER' , 'AuFault')

INSERT ITEMS
VALUES(038,  'Echo de Luden', 'Coiffe de Rabadon', 5243, 62)



-- Shaco
INSERT CHAMPSTATS
VALUES(039, 587, 8, 63, 1, 30, 32, 350, 1)

INSERT GAMEPLAYSTATS
VALUES('Binh Ly', 039, 1, 'Déluge de lames', 'E', 0.4, 'Late', 'Smite', 6.6, 50.7, 8.9, 5.7, 'Jungle')

INSERT METASTATS
VALUES(039, 'Binh Ly', '2011-08-19', 'Binh Ly', 2, 1350, 585, 6, NULL, 304052)

INSERT LORESTATS
VALUES(039, 'Shaco', 'Déluge de lame', 'Shaco' , 'Binh Ly')

INSERT ITEMS
VALUES(039,  'Sabre de l escarmoucheur', 'Lame Spectre de Youmuu', 6465, 28)



-- Udyr
INSERT CHAMPSTATS
VALUES(040, 593, 6, 66, 1, 34, 32, 345, 1)

INSERT GAMEPLAYSTATS
VALUES('Pingon', 040, 1, 'Conquérant', 'Q', 0.25, 'Early', 'Smite', 5.4, 50.8, 0.3, 5.7, 'Jungle')

INSERT METASTATS
VALUES(040, 'Pingon', '2009-12-02', 'Pingon', 2, 1350, 585, 6, NULL, 304424)

INSERT LORESTATS
VALUES(040, 'Udyr', 'Conquérant', 'Udyr' , 'Pingon')

INSERT ITEMS
VALUES(040,  'Lame du Traqueur', 'Plaque du mort', 5265, 64)



-- Table OBJECTIVES

INSERT OBJECTIVES
VALUES(5, 2, 2, 1, 1)

INSERT OBJECTIVES
VALUES(4, 1, 3, 1, 0)

INSERT OBJECTIVES
VALUES(1, 3, 1, 0, 1)

INSERT OBJECTIVES
VALUES(10, 1, 0, 0, 1)

INSERT OBJECTIVES
VALUES(3, 1, 2, 2, 1)

INSERT OBJECTIVES
VALUES(0, 0, 0, 0, 0)



SELECT * FROM CHAMPSTATS
ORDER BY CHAMP_ID ASC
SELECT * FROM GAMEPLAYSTATS
ORDER BY CHAMP_ID ASC
SELECT * FROM METASTATS
ORDER BY CHAMP_ID ASC
SELECT * FROM LORESTATS
ORDER BY CHAMP_ID ASC
SELECT * FROM ITEMS
ORDER BY CHAMP_ID ASC
SELECT * FROM OBJECTIVES
