# Traduction : 
## Retraduction / Changements :
- Changer le références de l'**Évolutor** en **Améliorator[^1]**.
- Changer les références de la **Tour Ferraille** en **Tour Carillon**[^2].
	- Par extension, renommer la "**Tour de Cuivre**" en "**Tour cendrée**".
- Relire les dialogues des fichiers se rapportant aux sages (Rosalia, Tour Ferraille...) et unifier le vouvoiement[^3]. 
- Changer les dialogues de la **Pension Pokémon** pour remplacer la désignation de "*La femme du type de la pension*" en "*La dame de la pension*".
## Durant la relecture finale :
- Vérifier que les point ont bien été remplacés par des point médians (« · »).
- Vérifier tous les noms restants et voir s'il n'y a pas de changement à faire sur la localisation.
- Retirer les espaces entre les fins de phrase et les différents signes de ponctuation.

[^1]: L'**Améliorator** était nommé **Évolutor** avant Rubis et Saphir. (Source : https://www.pokepedia.fr/Am%C3%A9liorator)
[^2]: La **Tour Ferraille** a été renommée **Tour Carillon** à partir des version HeartGold et SoulSilver (source: https://www.pokepedia.fr/Tour_Carillon)
[^3]: Durant ma relecture de la traduction française, j'ai remarqué que le vouvoiement des "Sages" était inconsistant (voir [EcruteakTinTowerEntrance](maps/Johto/EcruteakTinTowerEntrance.md))
### Éléments à revérifier :
- Changer les références à **Archer** en **Amos** (ROCKET) ([Source](https://www.pokepedia.fr/Amos))
- [Boutique Pokémon d'Acajou](maps/Johto/MahoganyMart1F.md)
	- -> Vérifier si dans la rom hack, le DRACOLOSSE de PETER a été remplacé dans la cutscene par NIDOQUEEN ? Pourtant non présente dans son équipe.
- relire `data/maps/map_names.asm`
- « Presser un bouton pour sortir » à corriger
### Éléments à traduire :
-  [EarlsPokemonAcademy](maps/Johto/EarlsPokemonAcademy.md)
 - [KarensRoom](maps/KarensRoom.md)
 - [common_3](data/text/common_3.md)
 - [OaksLab](maps/Kanto/OaksLab.md) - une fin de phrase
 - [OlivineGoodRodHouse](maps/Johto/OlivineGoodRodHouse.md)
 - `data/trainers/parties.asm` (long et fastidieux)
 - `data/wild/fish.asm` + chercher correspondance
 - `data/wild/non_wildmon_locations.asm`
 - [SeafoamGym](maps/Kanto/SeafoamGym.md)
 - [VioletGym](maps/Johto/VioletGym.md)
# Divers :
## Code :
- `constants\credits_constants.asm` -> revoir pour l'équipe fr
- ~~Plusieurs occurrences de `STRLEN("TM##")`; à voir s'il faut le changer en `STRLEN("CT##")`~~
	- Remplacées par `CT##`, voir si cela pose problème
- Voir s'il faut traduire `engine\pokedex\pokedex_2.asm` DisplayDexMonType_CustomGFX.types, je n'ai pas trouvé où cela s'affiche dans le pokedex
- Finir de paufiner l'affichage poids / taille
- Affichage player_name sans pokédex à vérifier

## Textures :
- ~~Voir pour traduire les nouvelles textures relatives aux intempéries~~ -> trop dur
- Salles cachées Ruines d'Alpha texture du sol
- Voir pour essayer de corriger la palette du titre du jeu
## Glitches :
- **Pokédex** :
	- La page *Stat* du Pokédex ne loop pas correctement et affiche la dernière page à l'infini plus on avance.
	- Si l'on change l'affichage d'un Pokémon en shiny avec select, spammer l'onglet Zone mène à un crash du jeu.
