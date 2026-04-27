### Traduction : 
- NE PAS OUBLIER LE GENRE NEUTRE SI POSSIBLE
- L'**Améliorator** était nommé "**Evolutor**" avant Pkm RSE -> changer ses références pour le mettre à jour.
- Il en va de même pour la Tour Ferraille -> Tour Carillon 
	- "TOUR¯FERRAILLE"
- Relire les fichiers où les sages parlent (ex. Rosalia) et unifier le vouvoiement, la trad FR originale n'était pas consistante sur ce point.
- [GoldenrodFlowerShop](trad/maps/Johto/GoldenrodFlowerShop.md), clé *"GoldenrodFlowerShopTeacherHeresTheGoldBerryText"* non insérée.
	- Attente de voir si la gosse se nomme FLORIA ou porte un autre nom
- [EcruteakGym](trad/maps/Johto/EcruteakGym.md), clé *"EcruteakGymGuideText"* à vérifier.
	- Vérifier si son équipe a été modifiée. Je n'ai pas compris qui est le "mystic deer", son équipe ne comportant initialement aucun Pokémon Cerf.
- À compléter car flemme et fatigue (clés non insérées) :
	- [EarlsPokemonAcademy](trad/maps/Johto/EarlsPokemonAcademy.md)
	- [GoldenrodUndergroundWarehouse](trad/maps/Johto/GoldenrodUndergroundWarehouse.md) 
	- [HallOfFame](trad/maps/HallOfFame.md)
	- [KarensRoom](trad/maps/KarensRoom.md)
	- [KogasRoom](trad/maps/KogasRoom.md)
	- [KurtsHouse](trad/maps/Johto/KurtsHouse.md)
- "\_CantAcceptFaintedMonText" vérifier que la trad est bonne (pension)
- \_BattleMonNicknameText -> à vérifier en combat ? aucune idée d'à quoi ça correspond (dialogue vide dans trad FR) data/text/common_2
- traduire "femme du type de la pension" en dame de la pension tt court
- Plusieurs clés de [common_3](trad/data/text/common_3.md) (nouveau npc)
### Code :
- Retirer les références à la version AUSTRALIENNE de Pokémon Crystal (\_CRYSTAL\_AU), notamment au niveau de la compilation (censure des slot machines). 
- `constants\credits_constants.asm` -> revoir pour l'équipe fr
- data\maps\map_names.asm
- data\text\common_1.asm voir si repousse ok "\_UseAnotherRepelText"
### Autre :
- ~~Changer la texture de l'écran titre en "L'héritage de Cristal" ?~~
	- Ajouter une option dans le makefile pour compiler l'écran d'origine ou la version modifiée
- à ajouter :
	- gfx/font/font_extra.png
	- gfx/tilesets/ruins_of_alph.png
		- -> il a l'air d'avoir été mis dans un autre fichier, mais déjà présent qq part, peut-être le retirer le charmap




Dernier fichier édité : Lac Colère (maps)