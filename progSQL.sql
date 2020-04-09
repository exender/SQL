USE LOS

-- CHAMPSTATS 
CREATE TABLE CHAMPSTATS
(CHAMP_ID INT primary key,
HEALTH INT not null,
HEALTH_REGEN FLOAT not null,
AD INT not null,
AP INT not null,
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