# Traduction : 
## Retraduction / Changements :
- ✅- Changer le références de l'**Évolutor** en **Améliorator[^1]**.
- ☑️- Changer les références de la **Tour Ferraille** en **Tour Carillon**[^2].
- Relire les dialogues des fichiers se rapportant aux sages (Rosalia, Tour Ferraille...) et unifier le vouvoiement[^3]. 
- ✅- Changer les dialogues de la **Pension Pokémon** pour remplacer la désignation de "*La femme du type de la pension*" en "*La dame de la pension*".
- ✅- Antre Noire -> Antre Noir[^4]
- ✅- Inversion des classes de dresseur + nom (ex « *JEAN GAMIN veut se battre* » -> « *GAMIN JEAN veut se battre* »)
- Un dresseur
## Durant la relecture finale :
- Vérifier que les point ont bien été remplacés par des point médians (« · »).
- Vérifier tous les noms restants et voir s'il n'y a pas de changement à faire sur la localisation.
- Retirer les espaces entre les fins de phrase et les différents signes de ponctuation.

[^1]: L'**Améliorator** était nommé **Évolutor** avant Rubis et Saphir. (Source : https://www.pokepedia.fr/Am%C3%A9liorator)
[^2]: La **Tour Ferraille** a été renommée **Tour Carillon** à partir des version HeartGold et SoulSilver (source: https://www.pokepedia.fr/Tour_Carillon)
[^3]: Durant ma relecture de la traduction française, j'ai remarqué que le vouvoiement des "Sages" était inconsistant (voir [EcruteakTinTowerEntrance](maps/Johto/EcruteakTinTowerEntrance.md))
[^4]: https://www.pokepedia.fr/Antre_Noir
### Éléments à revérifier :
- [Boutique Pokémon d'Acajou](maps/Johto/MahoganyMart1F.md)
	- -> Vérifier si dans la rom hack, le DRACOLOSSE de PETER a été remplacé dans la cutscene par NIDOQUEEN ? Pourtant non présente dans son équipe.
- « Presser un bouton pour sortir » à corriger (?)
- Vérifier si l'affichage lors de la saisie des surnoms des Pokémon est correct, pour le moment ça donne "PKMNAME SURNOM ?"
- pim et pam "?" qui revient à la ligne 
- vérifier que le dialogue de silver à écorcia est bien le siens 
~~- "Matin" pokématos, à décaler de 1 bit vers la gauche~~
~~- zone Pokemon -> carte -> inverser "pokémon" et "nid de"~~
- route 42 gate
# Divers :
## Code :
- `constants\credits_constants.asm` -> revoir pour l'équipe fr
- ~~Plusieurs occurrences de `STRLEN("TM##")`; à voir s'il faut le changer en `STRLEN("CT##")`~~
	- Lignes remplacées par `CT##`, voir si cela pose problème
## Textures :
- (Facultatif) - Voir pour essayer de corriger la palette du titre du jeu

## Box overflow :
- Divers PNJ de l'Ecole de THEOPHILE
~~- arène de doublon ville ~~
~~- interface d'utilisation d'attaque terrain dans le menu -> trop petite (ex coup de boule 
overflow)~~
- Concours Capture d'Insecte -> Voir screenshot PSVITA
## Glitches :
- **Pokédex** :
	- La page *Stat* du Pokédex ne loop pas correctement et affiche la dernière page à l'infini plus on avance.
	- Si l'on change l'affichage d'un Pokémon en shiny avec select, spammer l'onglet Zone mène à un crash du jeu.
- Maison de maman
	- Bug lors de l'affichage de l'heure d'été et d'hier au début du jeu lors du premier dialogue