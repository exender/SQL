USE LOS

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

-- OBJECTIVES
CREATE TABLE OBJECTIVES
(DRAGONS_TAKEN INT null,
HEARLD_TAKEN INT null,
NASHOR_TAKEN INT null,
ELDER_DRAKE_TAKEN INT null,
RED_BUFF_TAKEN_FIRST BIT not null)

-- ITEMS
CREATE TABLE ITEMS
(CHAMP_ID INT not null,
FOREIGN KEY(CHAMP_ID) REFERENCES CHAMPSTATS(CHAMP_ID),
FIRST_ITEM_BUILT VARCHAR(40) not null,
FIRST_BOOTS_BUILT VARCHAR(40) null,
TOTAL_GP INT not null,
TOTAL_CS INT null) 

-- Alistar
INSERT CHAMPSTATS
VALUES(000, 600, 8.5, 62, 1, 44, 32, 330, 1)

-- Annie
INSERT CHAMPSTATS
VALUES(001, 524, 5.5, 50, 1, 19, 30, 335, 0)

-- Ashe
INSERT CHAMPSTATS
VALUES(002, 539, 3.5, 61, 1, 26, 30, 325, 0)

-- Fiddlesticks
INSERT CHAMPSTATS
VALUES(003, 580, 5.5, 55, 1, 34, 30, 335, 0)

-- Jax
INSERT CHAMPSTATS
VALUES(004, 592, 8.5, 68, 1, 36, 32, 350, 1)

-- Kayle
INSERT CHAMPSTATS
VALUES(005, 600, 5, 50, 1, 26, 34, 335, 1)

-- Maître Yi
INSERT CHAMPSTATS
VALUES(006, 598, 7.5, 66, 1, 33, 32, 355, 1)

-- Morgana
INSERT CHAMPSTATS
VALUES(007, 560, 5.5, 56, 1, 25, 30, 335, 0)

-- Nunu & Willump
INSERT CHAMPSTATS
VALUES(008, 570, 5, 61, 1, 32, 32, 345, 1)

-- Ryze
INSERT CHAMPSTATS
VALUES(009, 570, 8, 55, 1, 21, 34, 340, 0)

-- Sion
INSERT CHAMPSTATS
VALUES(010, 545, 7.5, 68, 1, 32, 32, 345, 1)

--Sivir 
INSERT CHAMPSTATS 
VALUES(011, 532, 3.25, 63, 1, 26, 30, 335, 0)

--Soraka
INSERT CHAMPSTATS
VALUES(012, 535, 2.5, 50, 1, 32, 30, 325, 0)

--Teemo
INSERT CHAMPSTATS
VALUES(013, 528, 5.5, 54, 1, 24, 30, 330, 0)

--Tristana
INSERT CHAMPSTATS
VALUES(014, 559, 4, 61, 1, 26, 30, 325, 0)

--Twisted Fate
INSERT CHAMPSTATS
VALUES(015, 534, 5.5, 50, 1, 20, 30, 335, 0)

--Warwick 
INSERT CHAMPSTATS
VALUES(016, 550, 4, 65, 1, 33, 32, 335, 1)

--Singed
INSERT CHAMPSTATS
VALUES(017, 580, 9, 63, 1, 34, 33, 345, 1)

--Zilean
INSERT CHAMPSTATS
VALUES(018, 504, 5.5, 51, 1, 24, 30, 335, 0)

--Evelyn 
INSERT CHAMPSTATS
VALUES(019,    572, 8.5, 61, 1, 37, 32, 335, 1)

--Twitch
INSERT CHAMPSTATS
VALUES(020, 582 , 3, 59, 1, 27, 30, 330, 1)

-- Tryndamere
INSERT CHAMPSTATS
VALUES(021, 625, 8.5, 69, 1, 33, 32, 345, 1)

-- KARTHUS
INSERT CHAMPSTATS
VALUES(022, 528, 6.5, 46, 1, 30, 20, 335, 0)

-- AMUMU
INSERT CHAMPSTATS
VALUES(023, 613, 9, 53, 1, 33, 32, 335, 1)

-- CHO'GATH
INSERT CHAMPSTATS
VALUES(024, 574, 9, 69, 1, 38, 32, 345, 1)

-- ANIVIA
INSERT CHAMPSTATS
VALUES(025, 480, 5.5, 53, 1, 21, 30, 325, 0)
-- RAMMUS 
INSERT CHAMPSTATS
VALUES(026, 568, 8, 36, 1, 36, 32, 335, 1)

-- VEIGAR
INSERT CHAMPSTATS
VALUES(027, 505, 6.5, 52, 1, 23, 30, 340, 0)

--KASSADIN
INSERT CHAMPSTATS
VALUES(028, 576, 6, 58, 1, 19, 30, 335, 1)

--GANGPLANK
INSERT CHAMPSTATS
VALUES(029, 540, 6, 64, 1, 35, 32, 345, 1)

--TARIC
INSERT CHAMPSTATS
VALUES(030, 575, 6, 55, 1, 40, 32, 340, 1)

-- Malphite
INSERT CHAMPSTATS
VALUES(031, 574, 7, 61, 1, 37, 32, 335, 1)

-- Janna
INSERT CHAMPSTATS
VALUES(032, 500, 5, 46, 1, 28, 30, 315, 0)

-- BLITZCRANK
INSERT CHAMPSTATS
VALUES(033, 582, 8, 61, 1, 37, 32, 325, 1)

-- DR. MUNDO
INSERT CHAMPSTATS
VALUES(034, 582, 8, 61, 0, 36, 32, 345, 1) 

-- Katarina
INSERT CHAMPSTATS
VALUES(035, 602, 7, 58, 0, 27, 32, 340, 1)

-- Corki
INSERT CHAMPSTATS
VALUES(036, 518, 5, 55, 1, 28, 30, 325, 0)

-- Nasus
INSERT CHAMPSTATS
VALUES(037, 561, 9, 67, 1, 34, 32, 350, 1)

-- HEIMERDINGER
INSERT CHAMPSTATS
VALUES(038, 488, 7, 55, 1, 19, 30, 340, 0)

-- Shaco
INSERT CHAMPSTATS
VALUES(039, 587, 8, 63, 1, 30, 32, 350, 1)

-- Udyr
INSERT CHAMPSTATS
VALUES(040, 593, 6, 66, 1, 34, 32, 345, 1)

SELECT * FROM CHAMPSTATS


-- Alistar
INSERT GAMEPLAYSTATS
VALUES('Yokitch', 000, 1, 'Après-coup', 'Q', 0.15, 'Mid', 'Ignite', 6.16, 50.3, 0.5, 4.3, 'Support')

-- Annie
INSERT GAMEPLAYSTATS
VALUES('Meliodas Verde', 001, 0, 'Électrocution', 'Q', 0.30, 'Late', 'Ignite', 6.36, 52.0, 0.3, 1.8, 'Middle')

-- Ashe
INSERT GAMEPLAYSTATS
VALUES('Ganador', 002, 1, 'Tempo mortel', 'W', 0.40, 'Late', 'Heal', 6.43, 49.9, 0.5, 7.9, 'Bottom')

-- Fiddlesticks
INSERT GAMEPLAYSTATS
VALUES('Ferrari Fiddle', 003, 0, 'Prédateur', 'W', 0.56, 'Late', 'Smite', 6.63, 48.4, 23.5, 10.1, 'Jungle')

-- Jax
INSERT GAMEPLAYSTATS
VALUES('B1GBOPPA', 004, 1, 'Conquérant', 'E', 0.60, 'Mid', 'Teleport', 5.26, 48.8, 7.8, 10.5, 'Top')

-- Kayle
INSERT GAMEPLAYSTATS
VALUES('kayle 1v9', 005, 1, 'Jeu de jambes', 'E', 0.30, 'Mid', 'Teleport', 5.2, 49.8, 0.3, 2.9, 'Top')

-- Maître Yi
INSERT GAMEPLAYSTATS
VALUES('Zαpdo', 006, 1, 'Conquérant', 'Q', 0.35, 'Late', 'Smite', 6.2, 48.3, 25.2, 7.2, 'Jungle')

-- Morgana
INSERT GAMEPLAYSTATS
VALUES('Skylandz', 007, 1, 'Invocation d"Aery', 'W', 0.15, 'Mid', 'Ignite', 6.66, 51.0, 40.0, 10.5, 'Middle')

-- Nunu & Willump
INSERT GAMEPLAYSTATS
VALUES('Kesha', 008, 1, 'Prédateur', 'Q', 0.20, 'Early', 'Smite', 6.6, 50.8, 0.6, 3.3, 'Jungle')

-- Ryze
INSERT GAMEPLAYSTATS
VALUES('bruv machine', 009, 0, 'Rush phasique', 'W', 0.05, 'Late', 'Teleport', 5.33, 46.2, 0.9, 4.5, 'Middle')

-- Sion
INSERT GAMEPLAYSTATS
VALUES('Thebausffs', 010, 0, 'Poigne de l"immortel', 'Q', 0.30, 'Late', 'Teleport', 5.9, 50.4, 0.1, 2.7, 'Top')

--Sivir
INSERT GAMEPLAYSTATS
VALUES('Zenterleft', 011, 0, 'Tempo Mortel', 'Q', 0.45, 'Late', 'Heal', 5.6, 50.6, 2.3,3.4,'Bottom')

--Soraka
INSERT GAMEPLAYSTATS
VALUES('my adc 2 good', 012, 0, 'Invocation d"Aery', 'W', 0.45, 'Mid', 'Heal', 15, 49, 0.15, 1.4, 'Bottom')

--Teemo
INSERT GAMEPLAYSTATS
VALUES('Korvmannen', 013, 1, 'Poigne de l"immortel', 'Q', 0.60, 'Mid', 'Ignite', 6.66, 51, 0.20, 6.3, 'Top')

--Tristana
INSERT GAMEPLAYSTATS
VALUES('Asves', 014, 0, 'Attaque Soutenue', 'E', 0.20, 'Late', 'Heal', 5.2, 53, 0.21, 0.25, 'Bottom')

--Twisted Fate
 INSERT GAMEPLAYSTATS
VALUES('imsåma', 015, 1, 'Grimoire Déchainé', 'Q', 0.10, 'Mid', 'Teleport', 5.6, 50, 1.3, 7.38, 'Mid')

--Warwick
 INSERT GAMEPLAYSTATS
VALUES('Corona WW', 016, 1, 'Attaque Soutenue', 'Q', 0.20, 'Early', 'Smite', 5.8, 52, 0.26, 2.62, 'Jungle')

--Singed
 INSERT GAMEPLAYSTATS
VALUES( 'SlNGED', 017, 1, 'Conquerant', 'Q', 0.15, 'Late', 'Teleport', 5.4, 51, 0.31, 1.95, 'Top')
 
 --Zilean
INSERT GAMEPLAYSTATS
VALUES('WF Dylean', 018, 1, 'Invocation d"Aery', 'Q', 0.20, 'Mid', 'Ignite', 5.4, 53, 3.12,  6.12, 'Support')

--Evelynn
INSERT GAMEPLAYSTATS
VALUES('TRUEINVIS', 019, 0, 'Électrocution', 'Q', 0.10, 'Early', 'Smite' , 4.9, 49, 1.99, 2.41, 'Jungle')

--Twitch
INSERT GAMEPLAYSTATS
VALUES('M0SbR1cKA', 020, 0, 'Attaque Soutenue', 'E', 0.35, 'Mid','Heal', 4.8, 50, 0.07, 1.05, 'Bottom')

-- Tryndamere
INSERT GAMEPLAYSTATS
VALUES('Lumerion', 021, 0, 'Tempo mortel', 'E', 0.40, 'Early', 'Ignite', 4.9, 50.9, 4.5, 4.9, 'Top')

-- Karthus
INSERT GAMEPLAYSTATS
VALUES('Falarinn', 022, 1, 'Moisson Noire', 'Q', 0.02, 'Late', 'Smite', 7.1, 48.8, 4.3, 4.5, 'Jungle')

-- Amumu
INSERT GAMEPLAYSTATS
VALUES('El Löto', 023, 0, 'Après-coup', 'W', 0.5, 'Late', 'Smite', 6.5, 50.9, 0.7, 3.8, 'Jungle')

SELECT * FROM GAMEPLAYSTATS


-- Alistar
INSERT METASTATS
VALUES(000, 'Yokitch', '2009-02-21', 'Vanguard', 1, 1350, 585, 14, 50, 338268)

-- Annie
INSERT METASTATS
VALUES(001, 'Meliodas Verde', '2009-02-21', 'Burst', 1, 450, 260, 13, NULL, 286381) 

-- Ashe
INSERT METASTATS
VALUES(002, 'Ganador', '2009-02-21', 'Marksman', 1, 450, 260, 12, 6, 987441)

-- Fiddlesticks
INSERT METASTATS
VALUES( 003, 'Ferrari Fiddle', '2009-02-21',  'Specialist', 2, 1350, 585, 9, NULL, 636653)

-- Jax
INSERT METASTATS
VALUES(004, 'B1GBOPPA', '2009-02-21', 'Skirmisher', 1, 1350, 585, 11, 13, 1088482)

-- Kayle
INSERT METASTATS
VALUES(005, 'kayle 1v9', '2009-02-21', 'Dual Range', 2, 450, 260, 10, NULL, 324180)

-- Maître Yi
INSERT METASTATS
VALUES(006, 'Zαpdo', '2009-02-21', 'Cut throat', 1, 450, 260, 11, NULL, 1063720)

-- Morgana
INSERT METASTATS
VALUES(007, 'Skylandz', '2009-02-21', 'Catcher', 1, 1350, 585, 11, 5, 1191670)

-- Nunu & Willump
INSERT METASTATS
VALUES(008, 'Kesha', '2009-02-21', 'Yeti Style', 1, 450, 260, 9, 3, 253795)

-- Ryze
INSERT METASTATS
VALUES(009, 'bruv machine', '2009-02-21', 'Battlemage', 2, 450, 260, 14, 37, 404851)

-- Sion
INSERT METASTATS
VALUES(010, 'Thebausffs', '2009-02-21', 'GigaZombie', 1, 1350, 585, 7, 37, 243949)

SELECT * FROM METASTATS


-- Alistar
INSERT LORESTATS
VALUES(000, 'Alistar', 'The Minotaur', 'Noxus', 'Vanguard')

-- Annie
INSERT LORESTATS
VALUES(001, 'Annie', 'The Dark Child', 'Noxus' , 'Burst') 

-- Ashe
INSERT LORESTATS
VALUES(002, 'Ashe', 'The Frost Archer', 'Freljord', 'Marksman')

-- Fiddlesticks
INSERT LORESTATS
VALUES( 003, 'Fiddlesticks', 'The Ancient Fear', 'Demacia' , 'Specialist')

-- Jax
INSERT LORESTATS
VALUES(004, 'Jax', 'Grandmaster At Arms',  'Icathia' , 'Skirmisher')

-- Kayle
INSERT LORESTATS
VALUES(005, 'Kayle', 'The Righteous', 'Targon', 'Dual Range')

-- Maître Yi
INSERT LORESTATS
VALUES(006, 'Maître Yi', 'The Wuju Bladesman',  'Ionia', 'Cut throat')

-- Morgana
INSERT LORESTATS
VALUES(007, 'Morgana', 'The Fallen', 'Targon', 'Catcher')

-- Nunu & Willump
INSERT LORESTATS
VALUES(008, 'Nunu & Willump', 'The Boy And His Yeti', 'Freljord', 'Yeti Style')

-- Ryze
INSERT LORESTATS
VALUES(009, 'Ryze', 'The Rune Mage',  'Runeterra', 'Battlemage')

-- Sion
INSERT LORESTATS
VALUES(010, 'Sion', 'The Undead Juggernaut', 'Noxus', 'GigaZombie')

SELECT * FROM LORESTATS


-- Alistar
INSERT ITEMS
VALUES(000, 'Convergence de Zeke', 'Bottes de mobilité',  7697, 34)

-- Annie
INSERT ITEMS
VALUES(001, 'Écho de Luden', 'Chaussures de sorcier', 10744, 136) 

-- Ashe
INSERT ITEMS
VALUES(002, 'Lame du roi déchu', 'Jambière du berzerker',  11317, 160)

-- Fiddlesticks
INSERT ITEMS
VALUES( 003, 'Enchantement : Écho runiques', 'Chaussures de sorcier', 9914, 110)

-- Jax
INSERT ITEMS
VALUES(004, 'Lame du roi déchu', 'Tabi ninja',  11506, 164)

-- Kayle
INSERT ITEMS
VALUES(005, 'Pistolame Hextech', 'Jambière du berzerker', 11547, 187)

-- Maître Yi
INSERT ITEMS
VALUES(006, 'Enchantement : Rasoir sanglant', 'Tabi ninja', 11916, 159)

-- Morgana
INSERT ITEMS
VALUES(007, 'Sablier de Zhonya', 'Bottes de mobilité',  8934, 51)

-- Nunu & Willump
INSERT ITEMS
VALUES(008, 'Enchantement : Titan cendré', 'Sandales de Mercure',  10161, 139)

-- Ryze
INSERT ITEMS
VALUES(009, 'Bâton séculaire', 'Chaussures de sorcier', 11386, 195)

-- Sion
INSERT ITEMS
VALUES(010,  'Cape solaire', 'Tabi ninja', 10809, 162)

SELECT * FROM ITEMS