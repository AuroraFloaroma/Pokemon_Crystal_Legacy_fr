## Modification de la traduction originale :
- ✅- Relire les dialogues des fichiers se rapportant aux sages (Rosalia, Tour Ferraille...) et unifier le vouvoiement[^3]. 
- ✅- Changer les dialogues de la **Pension Pokémon** pour remplacer la désignation de "*La femme du type de la pension*" en "*La DAME de la pension*".
- ✅- Inversion des classes de dresseur + nom (ex « *JEAN GAMIN veut se battre* » -> « *GAMIN JEAN veut se battre* »)
- **Changements liés à Heartgold / Soulsilver :**
	- ✅- Changer le références de l'**Évolutor** en **Améliorator[^1]**.
	- ✅- Changer les références de la **Tour Ferraille** en **Tour Carillon**[^2].
	- ✅- *ANTRE NOIRE* -> Antre Noir[^4]
	- ✅- *MONT ARGENT* -> Grotte argentée/Mont Argenté[^5]
	- ✅- *AILE ARGENT *-> Argent'aile
## Durant la relecture finale :
- ✅ - Vérifier que les point ont bien été remplacés par des point médians (« · »).
- ✅ - Vérifier tous les noms restants et voir s'il n'y a pas de changement à faire sur la localisation.
- ✅ - Retirer les espaces entre les fins de phrase et les différents signes de ponctuation.
- ✅ - Utiliser le genre neutre le plus possible


[^1]: L'**Améliorator** était nommé **Évolutor** avant Rubis et Saphir. (Source : https://www.pokepedia.fr/Am%C3%A9liorator)
[^2]: La **Tour Ferraille** a été renommée **Tour Carillon** à partir des version HeartGold et SoulSilver (source: https://www.pokepedia.fr/Tour_Carillon)
[^3]: Durant ma relecture de la traduction française, j'ai remarqué que le vouvoiement des "Sages" était inconsistant (voir [EcruteakTinTowerEntrance](maps/Johto/EcruteakTinTowerEntrance.md))
[^4]: https://www.pokepedia.fr/Antre_Noir
[^5]: https://www.pokepedia.fr/Mont_Argent%C3%A9
# Divers :
## Code :
- ~~Plusieurs occurrences de `STRLEN("TM##")`; à voir s'il faut le changer en `STRLEN("CT##")`~~
	- Lignes remplacées par `CT##`, voir si cela pose problème -> ça n'a pas l'air lol
## Box overflow :
- Terminé ✅
## Bugs :

Les bugs présents ci-dessous sont présent dans la rom hack originale, je ne fais que les rapporter ici :
- **Pokédex** :
	- La page *Stat* du Pokédex ne boucle pas correctement et affiche la dernière page à l'infini plus on avance
	- Si l'on change l'affichage d'un Pokémon en shiny avec select, spammer l'onglet Zone mène à un crash du jeu
- **Maison de maman**
	- Lors du tout premier dialogique du changement d'heure, notre choix n'impacte pas l'heure affichée. Cependant une fois que l'on revient à la maison demander le changement d'heure, celui-ci est bel est bien effectif.