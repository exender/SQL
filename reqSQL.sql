USE LOS


-- 1

SELECT top(5) ls.CHAMP_NAME AS "Nom du champion", cs.HEALTH AS "Vie du champion", cs.AD AS "Attaque du champion"
FROM LORESTATS ls
INNER JOIN CHAMPSTATS cs
ON(ls.CHAMP_ID = cs.CHAMP_ID)
WHERE cs.HEALTH > 550
ORDER BY cs.HEALTH DESC, cs.AD DESC


-- 2

SELECT ls.CHAMP_NAME AS "Nom du champion", gs.WIN_RATE AS "Taux de victoire", gs.BEST_WIN_TIME AS "Temps de jeu ou le champion est le plus efficace"
FROM GAMEPLAYSTATS gs
INNER JOIN LORESTATS ls
ON(gs.CHAMP_ID = ls.CHAMP_ID)
WHERE gs.WIN_RATE > 50
ORDER BY gs.WIN_RATE DESC, gs.BEST_WIN_TIME DESC


-- 3 

SELECT ls.CHAMP_NAME AS "Nom du champion", gs.KDA  AS "Ratio kill/mort/assist", gs.BAN_RATE AS "% de bannisement du champion"
FROM GAMEPLAYSTATS gs
INNER JOIN LORESTATS ls
ON(gs.CHAMP_ID = ls.CHAMP_ID)
WHERE gs.BAN_RATE > 1
ORDER BY gs.BAN_RATE DESC


-- 4

SELECT gs.HIGHEST_RANKED_PLAYER AS "Joueur classé le plus haut", ls.CHAMP_NAME AS "Nom du champion", gs.WIN_RATE AS "Taux de victoire", gs.POST AS "Poste de jeu"
FROM GAMEPLAYSTATS gs
INNER JOIN LORESTATS ls
ON(gs.CHAMP_ID = ls.CHAMP_ID)
WHERE gs.POST LIKE LOWER('%MID%')
ORDER BY gs.WIN_RATE DESC

-- 5

SELECT ls.CHAMP_NAME AS "Nom du champion", cs.HEALTH AS "Vie du champion", cs.AD AS "Attaque du champion", i.FIRST_ITEM_BUILT AS "Premier item acheté"
FROM LORESTATS ls
INNER JOIN CHAMPSTATS cs
ON(ls.CHAMP_ID = cs.CHAMP_ID)
INNER JOIN ITEMS i
ON (cs.CHAMP_ID = i.CHAMP_ID)
WHERE 1 IN  (SELECT m.PRO_PLAY
			FROM METASTATS m
			WHERE m.PRO_PLAY NOT LIKE 'NULL')

-- 6

SELECT ls.CHAMP_NAME AS "Nom du champion", ms.NBR_SKIN AS "Nombre de skin", DATEDIFF(YEAR, ms.RELEASE_DATE, GETDATE()) AS "Ancienneté du champion"
FROM METASTATS ms
INNER JOIN LORESTATS ls
ON(ms.CHAMP_ID = ls.CHAMP_ID)
WHERE ms.NBR_SKIN > 5
GROUP BY ms.RELEASE_DATE, ms.NBR_SKIN, ls.CHAMP_NAME
HAVING DATEDIFF(YEAR, ms.RELEASE_DATE, GETDATE()) < 11


-- 7

SELECT top(5) ls.CHAMP_NAME AS "Nom du champion", cs.AD AS "Attaque du champion"
FROM LORESTATS ls
INNER JOIN CHAMPSTATS cs
ON (ls.CHAMP_ID = cs.CHAMP_ID)
WHERE cs.RESSOURCE LIKE 1 AND 1 IN (SELECT gs.META
									FROM GAMEPLAYSTATS gs
									WHERE gs.META LIKE 1)
ORDER BY cs.AD DESC




-- 8

SELECT O.DRAGONS_TAKEN AS "Nombre de dragons prit dans les partie ou le red buff a été prit en premier"
FROM OBJECTIVES O
WHERE 1 IN (SELECT o.RED_BUFF_TAKEN_FIRST
			FROM OBJECTIVES o
			WHERE o.RED_BUFF_TAKEN_FIRST LIKE 1)


-- (BONUS)

-- Vrai date '2009-02-21'
UPDATE METASTATS
SET RELEASE_DATE = '2015-02-21'
WHERE CHAMP_ID = 9


-- Vrai info 1
UPDATE CHAMPSTATS
SET RESSOURCE = 0
WHERE CHAMP_ID = 21