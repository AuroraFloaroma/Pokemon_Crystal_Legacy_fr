# Traduction : 
## Retraduction / Changements :
- Essayer d'utiliser le genre neutre dans les traduction si possible.
	- ~~Voir pour avoir un ifgender then different dialogue selon le genre~~
	- Repasser sur les trad genrée avec un point médian ~~+ inclure charmap~~
- Changer le références de l'**Évolutor** en **Améliorator[^1]**.
- Changer les références de la **Tour Ferraille** en **Tour Carillon**[^2].
	- Par extension, renommer la "**Tour de Cuivre**" en "**Tour cendrée**".
- Relire les dialogues des fichiers se rapportant aux sages (Rosalia, Tour Ferraille...) et unifier le vouvoiement[^3]. 
- Changer les dialogues de la **Pension Pokémon** pour remplacer la désignation de "*La femme du type de la pension*" en "*La dame de la pension*".

[^1]: L'**Améliorator** était nommé **Évolutor** avant Rubis et Saphir. (Source : https://www.pokepedia.fr/Am%C3%A9liorator)
[^2]: La **Tour Ferraille** a été renommée **Tour Carillon** à partir des version HeartGold et SoulSilver (source: https://www.pokepedia.fr/Tour_Carillon)
[^3]: Durant ma relecture de la traduction française, j'ai remarqué que le vouvoiement des "Sages" était inconsistant (voir [EcruteakTinTowerEntrance](maps/Johto/EcruteakTinTowerEntrance.md))
### Éléments à revérifier :
- Changer les références à **Archer** en **Amos** (ROCKET) ([Source](https://www.pokepedia.fr/Amos))
- `data\text\common_1.asm` 
	-  *"\_UseAnotherRepelText"* 
		- -> Voir en jeu avec utilisation de repousse si le formatage est correct
- [Boutique Pokémon d'Acajou](maps/Johto/MahoganyMart1F.md)
	- -> Vérifier si dans la rom hack, le DRACOLOSSE de PETER a été remplacé dans la cutscene par NIDOQUEEN ? Pourtant non présente dans son équipe.
#### Clés non insérées :
- [GoldenrodFlowerShop](maps/Johto/GoldenrodFlowerShop.md)
	- clé *"GoldenrodFlowerShopTeacherHeresTheGoldBerryText"*
		- -> Vérifier si "**Floria**" la sœur de la fleuriste (?) possède un autre nom en français
			- -> oui, FLORA
- [EcruteakGym](maps/Johto/EcruteakGym.md)
	- clé *"EcruteakGymGuideText"*
		- -> Vérifier si son équipe a été modifiée. *(Je n'ai pas compris qui est le "mystic deer", son équipe ne comportant initialement aucun Pokémon Cerf)*.
- [common_1](data/text/common_1.md)
	- clé "*\_CantAcceptFaintedMonText"* 
		- Vérifier que le dialogue est bien celui de la **Dame de la pension**, sinon changer l'accord en genre.
- [RadioTower5F](maps/Johto/RadioTower5F.md)
- [PlayersHouse1F](maps/Johto/PlayersHouse1F.md)
- [TrainerHouseB1F](maps/Johto/TrainerHouseB1F.md)
- [VermilionGym](maps/Kanto/VermilionGym.md)
### Éléments à traduire :
-  [EarlsPokemonAcademy](maps/Johto/EarlsPokemonAcademy.md)
 - ~~[GoldenrodUndergroundWarehouse](maps/Johto/GoldenrodUndergroundWarehouse.md)~~
 - [HallOfFame](maps/HallOfFame.md)
 - [KarensRoom](maps/KarensRoom.md)
 - ~~[KogasRoom](maps/KogasRoom.md)~~
 - ~~[KurtsHouse](maps/Johto/KurtsHouse.md)~~
 - [common_3](data/text/common_3.md)
 - [OaksLab](maps/Kanto/OaksLab.md) - une fin de phrase
 - [OlivineGoodRodHouse](maps/Johto/OlivineGoodRodHouse.md)
 - `data/trainers/parties.asm` (long et fastidieux)
 - `data/wild/fish.asm` + chercher correspondance
 - `data/wild/non_wildmon_locations.asm`
 - [SeafoamGym](maps/Kanto/SeafoamGym.md)
 - [VictoryRoad](maps/Johto/VictoryRoad.md)
 - [VioletGym](maps/Johto/VioletGym.md)
 - [ViridianGym](maps/Kanto/ViridianGym.md)

# Divers :
## Code :
- Retirer les références à la version AUSTRALIENNE de Pokémon Crystal (\_CRYSTAL\_AU), notamment au niveau de la compilation (censure des slot machines). 
- `constants\credits_constants.asm` -> revoir pour l'équipe fr
- `engine/event/halloffame.asm` -> vérifier la var `<COLON>`, possiblement "HALLOFFAME_COLON" dans le charmap fr
- `engine/event/magikarp.asm` -> Vérifier que l'event fonctionne correctement + bonne longueur et affichage
	- -> Comparer avec le jeu original
- Plusieurs occurrences de `STRLEN("TM##")`; à voir s'il faut le changer en `STRLEN("CT##")`
- Voir s'il faut traduire `engine\pokedex\pokedex_2.asm` DisplayDexMonType_CustomGFX.types, je n'ai pas trouvé où cela s'affiche dans le pokedex
- Voir pour charger ``font_extra`` plutôt dans vTiles0 VRAM0 $60, certains caractères sont nécessaires pour la page info du pokedex (ou échanger des caractères (ex. « & »))
- `engine\pokegear\pokegear.asm` -> FISH -> POISSONS = tronqué
	- + Pour X raison, le lieu n'est pas traduit
- Espace supplémentaire 2nd onglet stats pkm -> OBJETS/ CAPACITE (pas d'esapce jeu original) -> Corriger en enlevant l'espace
- `\engine\pokemon\stats_screen.asm` terminer affichage
- Affichage player_name sans pokédex à vérifier

## Textures :
- ~~Voir pour traduire les nouvelles textures relatives aux intempéries~~ -> trop dur
- Pokédex :
	- Changer *Stat* en *Stats*
	- Pour *Zone* aussi ? 
		  -> Se baser sur un pokedex recent
	- Ajouter un pixel d'écart sur la première étoile du logo shiny à droite
## Durant la relecture finale :
- Remplacer les points d'inclusivité par des points médians (« · »)
- Vérifier tous les noms restants et voir s'il n'y a pas de changement à faire sur la localisation
- Retirer les espaces entre les fins de phrase et les différents signes de ponctuation
## Glitches :
- **Pokédex** :
	- La page *Stat* du Pokédex ne loop pas correctement et affiche la dernière page à l'infini plus on avance.
	- Si l'on change l'affichage d'un Pokémon en shiny avec select, spammer l'onglet Zone mène à un crash du jeu.