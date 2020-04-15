USE LOS

SELECT top(5) ls.CHAMP_NAME AS "Nom du champion", cs.HEALTH AS "Vie du champion", cs.AD AS "Attaque du champion"
FROM LORESTATS ls
INNER JOIN CHAMPSTATS cs
ON(ls.CHAMP_ID = cs.CHAMP_ID)
WHERE cs.HEALTH > 550
ORDER BY cs.HEALTH DESC, cs.AD DESC

SELECT ls.CHAMP_NAME AS "Nom du champion", gs.WIN_RATE AS "Taux de victoire", gs.BEST_WIN_TIME AS "Temps de jeu ou le champion est le plus efficace"
FROM GAMEPLAYSTATS gs
INNER JOIN LORESTATS ls
ON(gs.CHAMP_ID = ls.CHAMP_ID)
WHERE gs.WIN_RATE > 50
ORDER BY gs.WIN_RATE DESC, gs.BEST_WIN_TIME DESC

SELECT ls.CHAMP_NAME AS "Nom du champion", gs.KDA  AS "Ratio kill/mort/assist", gs.BAN_RATE AS "% de bannisement du champion"
FROM GAMEPLAYSTATS gs
INNER JOIN LORESTATS ls
ON(gs.CHAMP_ID = ls.CHAMP_ID)
WHERE gs.BAN_RATE > 1
ORDER BY gs.BAN_RATE DESC

SELECT gs.HIGHEST_RANKED_PLAYER AS "Joueur classé le plus haut", ls.CHAMP_NAME AS "Nom du champion", gs.WIN_RATE AS "Taux de victoire", gs.POST AS "Poste de jeu"
FROM GAMEPLAYSTATS gs
INNER JOIN LORESTATS ls
ON(gs.CHAMP_ID = ls.CHAMP_ID)
WHERE gs.POST LIKE LOWER('%MID%')
ORDER BY gs.WIN_RATE DESC


SELECT ls.CHAMP_NAME AS "Nom du champion", cs.HEALTH AS "Vie du champion", cs.AD AS "Attaque du champion", i.FIRST_ITEM_BUILT AS "Premier item acheté"
FROM LORESTATS ls
INNER JOIN CHAMPSTATS cs
ON(ls.CHAMP_ID = cs.CHAMP_ID)
INNER JOIN ITEMS i
ON (cs.CHAMP_ID = i.CHAMP_ID)
WHERE cs.CAC LIKE 1

SELECT ls.CHAMP_NAME AS "Nom du champion", cs.HEALTH AS "Vie du champion", cs.AD AS "Attaque du champion", i.FIRST_ITEM_BUILT AS "Premier item acheté"
FROM LORESTATS ls
INNER JOIN CHAMPSTATS cs
ON(ls.CHAMP_ID = cs.CHAMP_ID)
INNER JOIN ITEMS i
ON (cs.CHAMP_ID = i.CHAMP_ID)
WHERE 1 IN  (SELECT m.PRO_PLAY
			FROM METASTATS m
			WHERE m.PRO_PLAY NOT LIKE 'NULL')
