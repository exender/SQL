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
VALUES( 'SlNGED', 017, 1, 'Conquérant', 'Q', 0.15, 'Late', 'Teleport', 5.4, 51, 0.31, 1.95, 'Top')
 
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

-- CHO'GATH
INSERT GAMEPLAYSTATS
VALUES(' João', 024, 0, 'Optimisation Glacial', 'Q', 0.10, 'Late', 'Teleport', 5.5, 48.9, 0.5, 3.0, 'Top')

-- ANIVIA
INSERT GAMEPLAYSTATS
VALUES(' Bridge111', 025, 0, 'Optimisation Glacial', 'Q', 0.10, 'Late', 'Ignite', 5.6, 51, 0.9, 2.6, 'Middle')

-- RAMMUS 
INSERT GAMEPLAYSTATS
VALUES(' owker', 026, 1, 'Après-coup', 'W', 0.10, 'Late', 'Smite', 5.5, 49, 4.1, 2.9, 'Jungle')

-- VEIGAR
INSERT GAMEPLAYSTATS
VALUES(' Calmlands', 027, 0, 'Optimisation Glacial', 'Q', 0.13, 'Late', 'Teleport', 6.5, 49, 1.7, 5.4, 'Middle')

--KASSADIN
INSERT GAMEPLAYSTATS
VALUES(' MrJoystik', 028, 1, 'Jeu de jambes', 'Q', 0.15, 'Late', 'Teleport', 6.5, 50.3, 24.8, 7.6, 'Middle')

--GANGPLANK
INSERT GAMEPLAYSTATS
VALUES('Hansplank', 029, 1, 'Poigne de l"immortel', 'Q', 0.22, 'Late', 'Teleport', 4.9, 48.3, 1.5, 4, 'Top')

--TARIC
INSERT GAMEPLAYSTATS
VALUES('Varaxo', 030, 1, 'Gardien', 'E', 0.05, 'Late', 'Ignite', 3.5 , 53, 1.5, 4, 'Support')

-- Malphite
INSERT GAMEPLAYSTATS
VALUES('Pidin', 031, 1, 'Comète arcanique', 'Q', 0.20, 'Mid', 'Teleport', 5.25, 51.2, 2.9, 5.7, 'Top')

-- Janna
INSERT GAMEPLAYSTATS
VALUES('NAsFinest', 032, 1, 'Comète arcanique', 'W', 0.10, 'Early', 'Ignite', 6.4, 52.4, 0.4, 5.7, 'Support')

-- BLITZCRANK
INSERT GAMEPLAYSTATS
VALUES('besni leptir', 033, 1, 'Après-coup', 'Q', 0.50, 'Early', 'Ignite', 5.25, 51.6, 16.4, 5.7, 'Support')

-- DR. MUNDO
INSERT GAMEPLAYSTATS
VALUES('Hyperdawn', 034, 1, 'Poigne de l"immortel', 'Q', 0.3, 'Late', 'Teleport', 2.47, 50.2, 0.6, 4, 'Top')

-- Katarina
INSERT GAMEPLAYSTATS
VALUES('Myeong Ju', 035, 1, 'Conquérant', 'Q', 0.6, 'Early', 'Ignite', 6.7, 51.4, 11.5, 5.7, 'Mid')

-- Corki
INSERT GAMEPLAYSTATS
VALUES('LunchYz', 036, 1, 'Jeu de jambes', 'Q', 0.3, 'Late', 'Teleport', 2.44, 47.5, 0.2, 5.7, 'Mid')

-- Nasus
INSERT GAMEPLAYSTATS
VALUES('Sebekx', 037, 1, 'Grimoire Déchainé', 'Q', 0.2, 'Late', 'Teleport', 4.9, 50.3, 5, 5.7, 'Top')

-- HEIMERDINGER
INSERT GAMEPLAYSTATS
VALUES('AuFault', 038, 1, 'Comète arcanique', 'W', 0.3, 'Late', 'Teleport', 4.2, 48.1, 2.1, 5.7, 'Top')

-- Shaco
INSERT GAMEPLAYSTATS
VALUES('Binh Ly', 039, 1, 'Déluge de lames', 'E', 0.4, 'Late', 'Smite', 6.6, 50.7, 8.9, 5.7, 'Jungle')

-- Udyr
INSERT GAMEPLAYSTATS
VALUES('Pingon', 040, 1, 'Conquérant', 'Q', 0.25, 'Early', 'Smite', 5.4, 50.8, 0.3, 5.7, 'Jungle')

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

-- Sivir 
INSERT METASTATS
VALUES(011, 'Zenterleft','2009-02-21', 'LivreuUber', 2, 450, 260, 6, 24, 355596)

--Soraka
INSERT METASTATS
VALUES(012, 'my adc 2 good','2009-02-21','Licorne', 1, 450, 260, 10, 1, 421848)

--Teemo
INSERT METASTATS
VALUES(013,'Korvmannen','2009-02-21', 'Diable', 1, 1350, 585, 7, NULL, 762101)

--Tristana
INSERT METASTATS
VALUES(014,'Asves', '2009-02-21', 'Destruc', 1, 1350, 585, 7, 8, 910675)

--Twisted Fate 
INSERT METASTATS
VALUES(015, 'imsåma', '2009-02-21', 'Hearth', 2, 1350, 585, 11, NULL, 317452)

--Warwick
INSERT METASTATS
VALUES(016, 'Corona WW','2009-02-21', 'Loup', 1, 450, 260, 10, NULL, 932934)

--Singed
INSERT METASTATS
VALUES(017, 'SlNGED', '2009-04-18', 'Empoiso', 2, 450, 260, 10, NULL, 202692)

--Zilean
INSERT METASTATS
VALUES(018, 'WF Dylean', '2009-04-18', 'Maratho', 3, 1350, 585, 8, 17, 296860)

--Evelynn
INSERT METASTATS
VALUES(019, 'TRUEINVIS', '2009-05-01', 'ElDiabless', 2, 1350, 585, 9, 1, 330999)

--Twitch
INSERT METASTATS
VALUES(020, 'M0SbR1cKA', '2009-05-01','Le rat', 1, 3150, 790, 11, 1, 418724)

-- Tryndamere
INSERT METASTATS
VALUES(021, 'Lumerion', '2009-05-01', 'Invincible', 1, 1350, 585, 11, NULL, 679008)

-- KARTHUS
INSERT METASTATS
VALUES(022, 'Falarinn', '2009-06-12', 'press R', 2, 3150, 790, 5, 19, 216063)

-- AMUMU
INSERT METASTATS
VALUES(023, 'El Löto', '2009-06-25', 'pleuré', 1, 450, 260, 10, NULL, 666102)

-- CHO'GATH
INSERT METASTATS
VALUES(024, 'João', '2009-06-25', 'Nomnom', 1, 1350, 585, 8, 1, 398125)

-- ANIVIA
INSERT METASTATS
VALUES(025, 'Bridge111', '2009-07-10', 'Omelette', 2, 3150, 790, 9, 1, 225159)

-- RAMMUS 
INSERT METASTATS
VALUES(026, 'owker', '2009-07-10', 'Toupie', 1, 1350, 585, 10, NULL, 342682)

-- VEIGAR
INSERT METASTATS
VALUES(027, 'Calmlands', '2009-07-24', '1M ap', 2, 1350, 585, 12, NULL, 932148) 

--KASSADIN
INSERT METASTATS
VALUES(028, 'MrJoystik', '2009-08-07', '1xxxx dash', 2, 3150, 790, 7, 2, 558526) 

--GANGPLANK
INSERT METASTATS
VALUES(029, 'Hansplank', '2009-08-19', 'Orange', 3, 3150, 790, 10, 5, 262798) 

--TARIC
INSERT METASTATS
VALUES(030, 'Varaxo', '2009-08-19', 'le gay', 2, 1350, 585, 6, NULL, 304424)

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

--Sivir 
INSERT LORESTATS
VALUES(011,'Sivir', 'Battle Mistress', 'Shurima','LivreuUber')

--Soraka
INSERT LORESTATS
VALUES(012, 'Soraka','THE STARCHILD', 'Ionia', 'Licorne')

--Teemo
INSERT LORESTATS
VALUES(013, 'Teemo','Swift Scout', 'Bandle City', 'Diable')

--Tristana
INSERT LORESTATS
VALUES(014,'Tristana', 'Yordle Gunner','Yordle', 'Destruc')

--Twisted Fate
INSERT LORESTATS
VALUES(015,'Twisted Fate','Card Master','Freljord', 'Hearth')

--Warwick
INSERT LORESTATS
VALUES(016,'Warwick', 'Uncaged Wrath of Zaun','Zaun', 'Loup')

--Singed
INSERT LORESTATS
VALUES(017,'Singed', 'Mad Chemist','Zaun','Empoiso')

--Zilean
INSERT LORESTATS
VALUES(018,'Zilean', 'Chronokeeper','Zaun','Maratho')

--Evelynn
INSERT LORESTATS
VALUES(019,'Evelynn','Agony s Embrace','Runeterra','ElDiabless')

--Twitch
INSERT LORESTATS
VALUES(020,'Twitch','Plague Rat','Zaun','Le rat')

-- Tryndamere
INSERT LORESTATS
VALUES(021, 'Tryndamere', 'The barbarian king', 'Freljord' , 'Invincible') 

-- KARTHUS
INSERT LORESTATS
VALUES(022, 'Karthus', 'The Deathsinger', 'Shadow Isles' , 'press R') 

-- AMUMU
INSERT LORESTATS
VALUES(023, 'Amumu', 'The Sad Mummy', 'Shurima' , 'pleuré') 

-- CHO'GATH
INSERT LORESTATS
VALUES(024, 'Cho gath', 'The Terror of the Void', 'Void' , 'Nomnom') 

-- ANIVIA
INSERT LORESTATS
VALUES(025, 'Anivia', 'The Cryophoenix', 'Freljord' , 'Omelette') 

-- RAMMUS 
INSERT LORESTATS
VALUES(026, 'Rammus', 'The Armordillo', 'Shurima' , 'TOUPIE') 

-- VEIGAR
INSERT LORESTATS
VALUES(027, 'Veigar', 'THE TINY MASTER OF EVIL', 'Bandle City' , '1M ap') 

--KASSADIN
INSERT LORESTATS
VALUES(028, 'Kassadin', 'The Void Walker', 'Void' , '1xxxx dash') 

--GANGPLANK
INSERT LORESTATS
VALUES(029, 'Gangplank', 'The Saltwater Scourge', 'Bilgewater' , 'Orange') 

--TARIC
INSERT LORESTATS
VALUES(030, 'Taric', 'The Shield of Valoran', 'Targon' , 'le gay')

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

--Sivir
INSERT ITEMS
VALUES(011, 'Faux Spectrale', 'Jambière du berzerker', 19613, 196)

--Soraka
INSERT ITEMS
VALUES(012,'Graal impie d"Athene','Bottes de mobilité',  7373,18)

--Teemo
INSERT ITEMS
VALUES(013, 'Tourment de Liandry', 'Chaussures de sorcier', 11508, 161)

--Tristana
INSERT ITEMS
VALUES(014, 'Lame Tempete','Jambière du berzerker', 11943, 170)

--Twisted Fate
INSERT ITEMS
VALUES(015,'Baton Seculaire','Sandale de Mercure', 11376, 158)

--Warwick
INSERT ITEMS
VALUES(016,'Tiamat','Tabi ninja',11345,145)

--Singed
INSERT ITEMS
VALUES(017,'Sceptre de Rilay','Tabi ninja', 11152,175)

--Zilean
INSERT ITEMS
VALUES(018,'Ombre Jumelles','Bottes de mobilité', 8810,68)

--Evelynn
INSERT ITEMS
VALUES(019,'Enchantement : écho runique','Chaussures de sorcier', 11086, 132)

--Twitch
INSERT ITEMS
VALUES(020,'Lame du roi déchu','Jambière du berzerker', 11887,158)

-- Tryndamere
INSERT ITEMS
VALUES(021,  'Lame du roi déchu', 'Jambière du berzerker', 12203, 213)

-- KARTHUS
INSERT ITEMS
VALUES(022,  'Enchantement : Écho runiques', 'Chaussures de sorcier', 12067, 188)

-- AMUMU
INSERT ITEMS
VALUES(023,  'Enchantement : Écho runiques', 'Chaussures de sorcier', 10442, 152)

-- CHO'GATH
INSERT ITEMS
VALUES(024,  'GLP Hextech 800 ', 'Sandales de Mercure', 10709, 165)

-- ANIVIA
INSERT ITEMS
VALUES(025,  'Bâton séculaire', 'Chaussures de sorcier', 11173, 182)

-- RAMMUS 
INSERT ITEMS
VALUES(026,  'Enchantement : Titan cendré', 'Tabi ninja', 10139, 139)

-- VEIGAR
INSERT ITEMS
VALUES(027,  'GLP Hextech 800', 'Chaussures de sorcier', 11275, 169)

--KASSADIN
INSERT ITEMS
VALUES(028,  'Bâton séculaire', 'Chaussures de sorcier', 11321, 176)

--GANGPLANK
INSERT ITEMS
VALUES(029,  'Force de la Trinité', 'Tabi ninja', 12167, 196)

--TARIC
INSERT ITEMS
VALUES(030,  'Convergence de Zeke', 'Bottes de mobilité', 7365, 37)

SELECT * FROM ITEMS