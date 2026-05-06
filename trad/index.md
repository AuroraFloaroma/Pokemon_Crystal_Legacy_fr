# Pokémon Crystal Legacy - Traduction Française

Vous trouvez dans cette section les différents fichiers que j'ai modifié dans le but d'apporter une traduction aux nouveaux dialogues de la Rom Hack ou bien de modifier certains dialogues originaux français.

Si vous avez la moindre proposition de traduction, remarque vis-à-vis d'une faute d'orthographe / formatage, n'hésitez pas à ouvrir une [Issue](https://github.com/AuroraFloaroma/Pokemon_Crystal_Legacy_fr/issues/new) avec le label adéquat.

> [!NOTE]
> Pour rendre le tout le plus compréhensif et accessible, j'essaye de garder la même structure que celle du code source. Voici cependant les différences actuelles avec le code source :
> - `/maps` ne contient initialement pas de sous-dossiers, ça me permet de mieux organiser le dossier.
#### Légendes :
- ☑️ = Relecture sans réinsertion
- ✅ = pareil qu'au dessus + réinsertion dans le code
- ✔️ = Besoin de revérifier quelque chose

### Sommaire :
- [Traductions textuelles :](#Traductions%20textuelles)
	- [/data](#/data) - Entrées textuelles générales (dresseurs, paramètres…)
	- [/engine](#/engine) 
		- [/items](#/items)
		- [/menus](#/menus)
		- [/pokedex](#/pokedex)
		- [/pokegear](#/pokegear)
		- [/pokemon](#/pokemon)
	- [/maps](#/maps) - Entrées textuelles relatives au différentes locations et bâtiments du jeu
		- [/Johto](#/Johto)
		- [/Kanto](#/Kanto)
- [Traductions visuelles :](#Traductions%20visuelles) 
	- [/gfx](#/gfx) - Textures
		- [/font](#/font) - Typographie
		- [/pokedex](#/pokedex) - Interface du Pokédex
		- [/pokegear](#/pokegear) - PokéMatos
		- [/title](#/title) - Écran titre

## Traductions textuelles :
### /engine 
#### /items
- [pack](engine/items/pack.md) - Sac
#### /menus
- [init_gender](engine/menus/init_gender.md) - Écran de choix de genre (Nvlle partie)
- [intro_menu](engine/menus/intro_menu.md) - Écran de chargement de partie
- [save](engine/menus/save.md) - Page Sauvegarde
#### /pokedex
- [pokedex](engine/pokedex/pokedex.md) - Pokédex général
- [pokedex_area_page](engine/pokedex/pokedex_area_page.md) - Onglet zone
#### /pokegear
- [pokegear](engine/pokegear/pokegear.md) - PokéMatos
#### /pokemon
- [bills_pc](engine/pokemon/bills_pc.md) - PC de Leo
- [mon_menu](engine/pokemon/mon_menu.md) - Menu Pokémon
- [stats_screen](engine/pokemon/stats_screen.md) - Écran des statistique (menu équipe)
### /data
- [player_names](data/player_names.md) - Tableau contenant les noms par défaut des personnages
#### /battle_tower
- [trainer_text](data/battle_tower/trainer_text.md) - Dialogues d'intro / fin de combat des dresseurs de la Tour de Combat
#### /text
- ☑️ [common_1](data/text/common_1.md) - Fichier commun 1
- ☑️ [common_2](data/text/common_2.md) - Fichier commun 2
- ☑️ [common_3](data/text/common_3.md) - Fichier commun 3
- [std_text](data/text/std_text.md) 
### /maps
- ☑️ [HallOfFame](maps/HallOfFame.md) - Panthéon
- ☑️ [IndigoPlateauPokecenter1F](maps/IndigoPlateauPokecenter1F.md) - Centre Pokémon de la Ligue Pokémon
- Conseil des 4
	- ☑️ [BrunosRoom](maps/BrunosRoom.md) - Salle d'Aldo
	- [KarensRoom](maps/KarensRoom.md) - Salle de Marion
	- ☑️ [KogasRoom](maps/KogasRoom.md) - Salle de Koga
	- [WillsRoom](maps/WillsRoom.md) - Salle de Clément
- ☑️[FastShipB1F](maps/FastShipB1F.md) - Bateau Express / Aquaria
#### /Johto
- ✔️ [AzaleaGym](maps/Johto/AzaleaGym.md) - Arène d'Écorcia
- ☑️  [BlackthornGym1F](maps/Johto/BlackthornGym1F.md) - Arène d'Ébènelle
- ☑️ [BurnedTower1F](maps/Johto/BurnedTower1F.md) - Tour cendrée (RDC)
- ✔️ [DayCare](maps/Johto/DayCare.md) - Pension Pokémon
- ☑️ [DragonShrine](maps/Johto/DragonShrine.md) - L'Antre du Dragon
- [EarlsPokemonAcademy](maps/Johto/EarlsPokemonAcademy.md) - École des dresseurs
- Rosalia
	- ☑️ [EcruteakGym](maps/Johto/EcruteakGym.md) - Arène
	- ☑️ [EcruteakTinTowerEntrance](maps/Johto/EcruteakTinTowerEntrance.md) - Entrée de la Tour Feraille (Tour Carillon)
- ☑️ [ElmsLab](maps/Johto/ElmsLab.md) - Laboratoire du Professeur Orme
- ✅ [GoldenrodCity](maps/Johto/GoldenrodCity.md) - Doublonville
	- Centre Commercial
		- ☑️ [GoldenrodDeptStore4F](maps/Johto/GoldenrodDeptStore4F.md) - 3ème étage
		- ✅ [GoldenrodDeptStore6F](maps/Johto/GoldenrodDeptStore6F.md) - 5ème étage
		- ☑️ [GoldenrodDeptStoreRoof](maps/Johto/GoldenrodDeptStoreRoof.md) - Toit
	- ☑️ [GoldenrodFlowerShop](maps/Johto/GoldenrodFlowerShop.md) - Fleuriste
	- ☑️ [GoldenrodGym](maps/Johto/GoldenrodGym.md) - Arène
	- ☑️ [GoldenrodUndergroundWarehouse](maps/Johto/GoldenrodUndergroundWarehouse.md) - Entrepôt souterrain
	- ☑️ [RadioTower5F](maps/Johto/RadioTower5F.md) - Tour radio 4eme etage
- ☑️ [KurtsHouse](maps/Johto/KurtsHouse.md) - Maison de Fargas
- [LakeOfRage](maps/Johto/LakeOfRage.md) - Lac Colère
*  Acajou
	- ☑️ [MahoganyGym](maps/Johto/MahoganyGym.md) - Arène
	- ✔️ [MahoganyMart1F](maps/Johto/MahoganyMart1F.md) - Boutique Pokémon
- Mont Creuset
	- ☑️ [MountMortar1FInside](maps/Johto/MountMortar1FInside.md) - RDC, 
	- [MountMortar1FOutside](maps/Johto/MountMortar1FOutside.md) - RDC, extérieur
	- ☑️ [MountMortar2FInside](maps/Johto/MountMortar2FInside.md) 1er étage (intérieur)
- [NationalParkBugContest](maps/Johto/NationalParkBugContest.md) - Parc naturel - Concours
- ☑️ [MrPokemonHouse](maps/Johto/MrPokemonHouse.md) - Maison de M.Pokemon
- Oliville
	- ☑️ [OlivineGym](maps/Johto/OlivineGym.md) - Arène
	- [OlivineGoodRodHouse](maps/Johto/OlivineGoodRodHouse.md) - Maison du pêcheur
	- ☑️ [OlivineLighthouse6F](maps/Johto/OlivineLighthouse6F.md) - Phare (5ème étage)
- ☑️ [PlayersHouse1F](maps/Johto/PlayersHouse1F.md) - Maison du joueur (RDC)
- Ruines d'Alpha
	- ☑️ [RuinsOfAlphResearchCenter](maps/Johto/RuinsOfAlphResearchCenter.md) - Centre de recherche
	- ✅ [RuinsOfAlphInnerChamber](maps/Johto/RuinsOfAlphInnerChamber.md) - Chambre intérieure
- [TrainerHouseB1F](maps/Johto/TrainerHouseB1F.md) Maison des dresseurs
- ✅ [TinTower1F](maps/Johto/TinTower1F.md) - Tour Ferraille RDC 
- ☑️ [SlowpokeWellB1F](maps/Johto/SlowpokeWellB1F.md) - Puit Ramoloss
- ☑️ [VictoryRoad](maps/Johto/VictoryRoad.md) - Route Victoire
- Mauville
	- [VioletGym](maps/Johto/VioletGym.md) - Arène
	- ☑️ [VioletCity](maps/Johto/VioletCity.md)
- ✅ [WhirlIslandLugiaChamber](maps/Johto/WhirlIslandLugiaChamber.md) - Tourb'îles - Salle de Lugia
#### /Kanto
- Céladopole
	- ☑️ [CeladonGym](maps/Kanto/CeladonGym.md) - Arène
	- ☑️ [CeladonDeptStore3F](maps/Kanto/CeladonDeptStore3F.md) - Centre commercial (2ème étage)
- Azuria
	- ☑️ [CeruleanGym](maps/Kanto/CeruleanGym.md) - Arène
	- ☑️ [CeruleanPokecenter1F](maps/Kanto/CeruleanPokecenter1F.md) - Centre Pokémon (RDC)
- ☑️ [FuchsiaGym](maps/Kanto/FuchsiaGym.md) - Arène de Parmanie
- [OaksLab](maps/Kanto/OaksLab.md) - Laboratoire du Prof. Chen
- ☑️ [PewterGym](maps/Kanto/PewterGym.md) - Arène d'Argenta
- ☑️ [Route6](maps/Kanto/Route6.md) - Route 6
- [VermilionGym](maps/Kanto/VermilionGym.md) - Arène de Jadielle
- [SeafoamGym](maps/Kanto/SeafoamGym.md) - Arène des Îles Écumes
- ☑️ [SaffronGym](maps/Kanto/SaffronGym.md) - Arène de Safrania
- ☑️ [ViridianGym](maps/Kanto/ViridianGym.md) - Arène de Jadielle

## Traductions visuelles :

### /gfx
#### /font
- [font](gfx/font/font.png) - Fichier de texture des caractères
- [font_extra](gfx/font/font_extra.png) - Caractères supplémentaires qui ne pouvaient pas rentrer dans `font.png`
- [font_inversed](gfx/font/font_inversed.png) - `font.png` inversé
#### /pokedex
- [pokedex](gfx/pokedex/pokedex.png) - Interface du Pokédex 
- [rangi_dex_tiles](gfx/pokedex/rangi_dex_tiles.png) - Interface supplémentaire du Pokédex
#### /pokegear
- [town_map](gfx/pokegear/town_map.png)
#### /title
- [logo](gfx/title/logo.png) - Écran titre du jeu