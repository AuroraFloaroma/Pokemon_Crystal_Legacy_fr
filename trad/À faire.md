## Traduction : 
### &nbsp; Retraduction - Changement :
- Essayer d'utiliser le genre neutre dans les traduction si possible.
- Changer le références de l'**Évolutor** en **Améliorator[^1]**.
- Changer les références de la **Tour Ferraille** en **Tour Carillon**[^2].
- Relire les dialogues des fichiers se rapportant aux sages (Rosalia, Tour Ferraille...) et unifier le vouvoiement[^3]. 
- Changer les dialogues de la **Pension Pokémon** pour remplacer la désignation de "*La femme du type de la pension*" en "*La dame de la pension*".
### &nbsp; Éléments à revérifier :
- `data\text\common_1.asm` 
	-  *"\_UseAnotherRepelText"* 
		- -> Voir en jeu avec utilisation de repousse si le formatage est correct
#### &nbsp;&nbsp; Clés non insérées :
- [GoldenrodFlowerShop](maps/Johto/GoldenrodFlowerShop.md)
	- clé *"GoldenrodFlowerShopTeacherHeresTheGoldBerryText"*
		- -> Vérifier si "**Floria**" la sœur de la fleuriste (?) possède un autre nom en français
- [EcruteakGym](maps/Johto/EcruteakGym.md)
	- clé *"EcruteakGymGuideText"*
		- -> Vérifier si son équipe a été modifiée. *(Je n'ai pas compris qui est le "mystic deer", son équipe ne comportant initialement aucun Pokémon Cerf)*.
- [common_1](data/text/common_1.md)
	- clé "*\_CantAcceptFaintedMonText"* 
		- Vérifier que le dialogue est bien celui de la **Dame de la pension**, sinon changer l'accord en genre.
- [common_2](data/text/common_2.md) 
	- clé *"\_BattleMonNicknameText"* (**Pas dans le fichier.md**)
		- -> Voir dans le code si la ligne est utilisée (Vide dans la traduction française)
### &nbsp; Éléments à traduire :
-  [EarlsPokemonAcademy](maps/Johto/EarlsPokemonAcademy.md)
 - [GoldenrodUndergroundWarehouse](maps/Johto/GoldenrodUndergroundWarehouse.md) 
 - [HallOfFame](maps/HallOfFame.md)
 - [KarensRoom](maps/KarensRoom.md)
 - [KogasRoom](maps/KogasRoom.md)
 - [KurtsHouse](maps/Johto/KurtsHouse.md)
 - [common_3](data/text/common_3.md)
 - `data/trainers/parties.asm` (long et fastidieux)
 - `data/wild/fish.asm` + chercher correspondance
 - `data/wild/non_wildmon_locations.asm`
## Code :
- Retirer les références à la version AUSTRALIENNE de Pokémon Crystal (\_CRYSTAL\_AU), notamment au niveau de la compilation (censure des slot machines). 
- `constants\credits_constants.asm` -> revoir pour l'équipe fr
## Autre :
- ~~Changer la texture de l'écran titre en "L'héritage de Cristal" ?~~
	- Ajouter une option dans le makefile pour compiler l'écran d'origine ou la version modifiée
- à ajouter :
	- gfx/font/font_extra.png
	- gfx/tilesets/ruins_of_alph.png
		- -> il a l'air d'avoir été mis dans un autre fichier, mais déjà présent qq part, peut-être le retirer le charmap


[^1]: L'**Améliorator** était nommé **Évolutor** avant Rubis et Saphir. (Source : https://www.pokepedia.fr/Am%C3%A9liorator)
[^2]: La **Tour Ferraille** a été renommée **Tour Carillon** à partir des version HeartGold et SoulSilver (source: https://www.pokepedia.fr/Tour_Carillon)
[^3]: Durant ma relecture de la traduction française, j'ai remarqué que le vouvoiement des "Sages" était inconsistant (voir [EcruteakTinTowerEntrance](maps/Johto/EcruteakTinTowerEntrance.md))