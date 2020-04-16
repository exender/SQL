USE LOS


-- 1

SELECT top(5) CONCAT(ls.CHAMP_NAME, ' a ', cs.HEALTH, ' vie et ', cs.AD, ' d"attaque') AS "Nom du champion, sa vie et son attaque"
FROM LORESTATS ls
INNER JOIN CHAMPSTATS cs
ON(ls.CHAMP_ID = cs.CHAMP_ID)
WHERE cs.HEALTH > 550
GROUP BY ls.CHAMP_NAME, cs.HEALTH, cs.AD
ORDER BY cs.HEALTH DESC, cs.AD DESC


-- 2

SELECT top(5) CONCAT(ls.CHAMP_NAME, ' et un champion ', gs.BEST_WIN_TIME, ' game et a un win rate de : ' , gs.WIN_RATE) AS "Nom du champion, son taux de victoire selon la durée de la partie et son win rate"
FROM GAMEPLAYSTATS gs
INNER JOIN LORESTATS ls
ON(gs.CHAMP_ID = ls.CHAMP_ID)
WHERE gs.WIN_RATE > 50
GROUP BY ls.CHAMP_NAME, gs.WIN_RATE, gs.BEST_WIN_TIME
ORDER BY gs.WIN_RATE DESC, gs.BEST_WIN_TIME DESC


-- 3 

SELECT top(5) CONCAT(ls.CHAMP_NAME, ' est ban ', gs.BAN_RATE, ' % du temps a cause d"un KDA de ', gs.KDA) AS "Nom du champion, son % de bannisement et son KDA"
FROM GAMEPLAYSTATS gs
INNER JOIN LORESTATS ls
ON(gs.CHAMP_ID = ls.CHAMP_ID)
WHERE gs.BAN_RATE > 1
ORDER BY gs.BAN_RATE DESC


-- 4

SELECT top(5) CONCAT(gs.HIGHEST_RANKED_PLAYER, ' est le joueur avec le plus haut rang sur ', ls.CHAMP_NAME, ', champion qui est a ' , gs.WIN_RATE, ' % de win rate au ' , gs.POST) AS "Meilleur joueur, nom du champion, win rate et poste"
FROM GAMEPLAYSTATS gs
INNER JOIN LORESTATS ls
ON(gs.CHAMP_ID = ls.CHAMP_ID)
WHERE gs.POST LIKE LOWER('%MID%')
GROUP BY gs.HIGHEST_RANKED_PLAYER, ls.CHAMP_NAME, gs.WIN_RATE, gs.POST
ORDER BY gs.WIN_RATE DESC


-- 5

SELECT top(10) CONCAT(ls.CHAMP_NAME, ' a ' , cs.HEALTH, ' de vie, ', cs.AD, ' d"attaque et prend ' , i.FIRST_ITEM_BUILT, ' comme premier objet') AS "Nom du champion, sa vie, son attaque et le premier objet build"
FROM LORESTATS ls
INNER JOIN CHAMPSTATS cs
ON(ls.CHAMP_ID = cs.CHAMP_ID)
INNER JOIN ITEMS i
ON (cs.CHAMP_ID = i.CHAMP_ID)
WHERE 1 IN  (SELECT m.PRO_PLAY
			FROM METASTATS m
			WHERE m.PRO_PLAY NOT LIKE 'NULL')
GROUP BY ls.CHAMP_NAME, cs.HEALTH, cs.AD, i.FIRST_ITEM_BUILT


-- 6

SELECT CONCAT(ls.CHAMP_NAME, ' a ', ms.NBR_SKIN, ' skin et a ', DATEDIFF(YEAR, ms.RELEASE_DATE, GETDATE()), ' ans') AS "Nom du champion, son nombre de skin et son ancienneté"
FROM METASTATS ms
INNER JOIN LORESTATS ls
ON(ms.CHAMP_ID = ls.CHAMP_ID)
WHERE ms.NBR_SKIN < 10
GROUP BY ms.RELEASE_DATE, ms.NBR_SKIN, ls.CHAMP_NAME
HAVING DATEDIFF(YEAR, ms.RELEASE_DATE, GETDATE()) < 11


-- 7

SELECT top(5) CONCAT(ls.CHAMP_NAME, ' a ' , cs.AD, ' d"attaque et est un champion a ressources méta') AS "Nom du champion et son attaque"
FROM LORESTATS ls
INNER JOIN CHAMPSTATS cs
ON (ls.CHAMP_ID = cs.CHAMP_ID)
WHERE cs.RESSOURCE LIKE 1 AND 1 IN (SELECT gs.META
									FROM GAMEPLAYSTATS gs
									WHERE gs.META LIKE 1)
GROUP BY ls.CHAMP_NAME, cs.AD
ORDER BY cs.AD DESC


-- 8

SELECT O.DRAGONS_TAKEN AS "Nombre de dragons prit dans les partie ou le red buff a été prit en premier"
FROM OBJECTIVES O
WHERE o.RED_BUFF_TAKEN_FIRST LIKE 1
GROUP BY o.DRAGONS_TAKEN


-- 9

SELECT top(10) CONCAT(ls.CHAMP_NAME, ' a ', gs.WIN_RATE, ' % de win rate', ' et est un champion facile coûtant moins de 3150 essences bleus ') AS "Nom du champion et son taux de victoire"
FROM METASTATS ms
INNER JOIN LORESTATS ls
ON(ms.CHAMP_ID = ls.CHAMP_ID)
INNER JOIN GAMEPLAYSTATS gs
ON(ms.CHAMP_ID = gs.CHAMP_ID)
WHERE ms.DIFFICULTY LIKE 1 AND ms.EB_COST < 3150
GROUP BY gs.WIN_RATE, ls.CHAMP_NAME
ORDER BY gs.WIN_RATE DESC


-- 10



-- (BONUS)

-- Vrai info 1
UPDATE CHAMPSTATS
SET RESSOURCE = 0
WHERE CHAMP_ID = 21