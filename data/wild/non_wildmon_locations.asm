casinomon: MACRO
; species, coins needed
	db \1
	dw \2
ENDM

specialencounter: MACRO
; requested mon, offered mon, item, OT ID, OT name, gender requested
	db \1
	dw \2
	map_id \3
	dw \4
ENDM

CasinoMons::
; usually 3 per region, but not a hard coded limit
	; region map ; 2 bytes (group/ID)
	; species, coins (2 bytes)

	; johto, from maps\goldenrodgamecorner.asm
	map_id GOLDENROD_GAME_CORNER
	casinomon ABRA, GOLDENRODGAMECORNER_ABRA_COINS
	casinomon PORYGON, GOLDENRODGAMECORNER_CUBONE_COINS
	casinomon DRATINI, GOLDENRODGAMECORNER_WOBBUFFET_COINS 
	db -1
	; kanto, from maps\celadongamecornerprizeroom.asm
	map_id CELADON_GAME_CORNER_PRIZE_ROOM
	casinomon PIKACHU, CELADONGAMECORNERPRIZEROOM_PIKACHU_COINS 
	casinomon PORYGON, CELADONGAMECORNERPRIZEROOM_PORYGON_COINS 
	casinomon LARVITAR, CELADONGAMECORNERPRIZEROOM_LARVITAR_COINS 
	db -1

NPCTradeMons_Locations::
; corresponds to NPCTrades:: in data\events\npc_trades.asm
	table_width 2 ; map is 2 bytes
	map_id GOLDENROD_DEPT_STORE_5F 	; MAPGROUP_GOLDENROD, 	MAP_GOLDENROD_DEPT_STORE_5F
	map_id VIOLET_KYLES_HOUSE		; MAPGROUP_VIOLET, 		MAP_VIOLET_KYLES_HOUSE
	map_id OLIVINE_TIMS_HOUSE 		; MAPGROUP_OLIVINE, 	MAP_OLIVINE_TIMS_HOUSE 
	map_id BLACKTHORN_EMYS_HOUSE 	; MAPGROUP_BLACKTHORN, 	MAP_BLACKTHORN_EMYS_HOUSE
	map_id PEWTER_POKECENTER_1F 	; MAPGROUP_PEWTER, 		MAP_PEWTER_POKECENTER_1F
	map_id ROUTE_14 				; MAPGROUP_FUCHSIA, 	MAP_ROUTE_14
	map_id POWER_PLANT 				; MAPGROUP_CERULEAN, 	MAP_POWER_PLANT
	assert_table_length NUM_NPC_TRADES

EventWildMons::
; BROKEN: ; replace map_id with -1 to hide location but keep hint
; specialencounter 	 SPECIES,   EVENT_FLAG,                         map_id, blurb string ptr
	specialencounter LAPRAS, 	-1, 								UNION_CAVE_B2F, FridayLapras_Str ; reoccurs every Friday
	specialencounter ELECTRODE, -1, 								TEAM_ROCKET_BASE_B2F, Trap_Electrode_Str
	specialencounter SUDOWOODO, EVENT_FOUGHT_SUDOWOODO, 			ROUTE_36, SudowoodoEvent_Str
	specialencounter GYARADOS, 	EVENT_LAKE_OF_RAGE_RED_GYARADOS, 	LAKE_OF_RAGE, ShinyGyarados_Str
	specialencounter SNORLAX, 	EVENT_FOUGHT_SNORLAX, 				VERMILION_CITY, SnorlaxEvent_Str
	specialencounter SUICUNE,	EVENT_FOUGHT_SUICUNE, 				TIN_TOWER_1F, SuicuneEvent_Str ; will not normally be seen by player w/o Dex Splash Page, may need new EVENT constant
	specialencounter CELEBI, 	EVENT_CELEBI_FATEFUL_ENCOUNTER, 	ILEX_FOREST, CelebiEvent_Str ; will not normally be seen by player w/o Dex Splash Page, may need new EVENT constant
	specialencounter LUGIA, 	EVENT_FOUGHT_LUGIA, 				WHIRL_ISLAND_LUGIA_CHAMBER, LugiaEvent_Str ; will not normally be seen by player w/o Dex Splash Page, may need new EVENT constant
	specialencounter HO_OH, 	EVENT_FOUGHT_HO_OH,  				TIN_TOWER_ROOF, HoOhEvent_Str ; will not normally be seen by player w/o Dex Splash Page, may need new EVENT constant
	specialencounter ARTICUNO, 	EVENT_CAUGHT_ARTICUNO, 				ROUTE_20, ArticunoEvent_Str ; will not normally be seen by player w/o Dex Splash Page, may need new EVENT constant
	specialencounter ZAPDOS, 	EVENT_CAUGHT_ZAPDOS, 				ROUTE_10_NORTH, ZapdosEvent_Str ; will not normally be seen by player w/o Dex Splash Page, may need new EVENT constant
	specialencounter MOLTRES, 	EVENT_CAUGHT_MOLTRES, 				VICTORY_ROAD, MoltresEvent_Str ; will not normally be seen by player w/o Dex Splash Page, may need new EVENT constant
	specialencounter MEWTWO, 	EVENT_CERULEAN_CAVE_B1F_MEWTWO, 	SILVER_CAVE_ROOM_3, MewtwoEvent_Str ; will not normally be seen by player w/o Dex Splash Page, may need new EVENT constant
	specialencounter MEW, 		EVENT_ROUTE_24_MEW_CAUGHT, 			ROUTE_24, MewEvent_Str ; will not normally be seen by player w/o Dex Splash Page, may need new EVENT constant
	db -1

; LoadWildMon Dex Hints, max 18 chars per line
FridayLapras_Str:
	db 	 "Ts. les VENDREDIS"
	next "seul, caché, dans"
	next "une grt. marine.@"

Trap_Electrode_Str:
	db 	 "ATTENTION:"
	next "peut se déguiser"
	next "en objet.@"	
SudowoodoEvent_Str:
	db 	 "Se camoufle en"
	next "arbre. S'énerve"
	next "si on l'arrose.@"
ShinyGyarados_Str:
	db 	 "Apparition unique"
	next "du LEVIATOR Rouge"
	next "Niv 30.@"
SnorlaxEvent_Str:
	db 	 "Tiendra à coup"
	next "sûr l'obj RESTES"
	next "Niv 40.@"
SuicuneEvent_Str:
	db 	 "GLAS TRANSP. est"
	next "la clé de sa cha-"
	next "-sse. Niv 40.@"
CelebiEvent_Str:
	db 	 "Offrir à l'AUTEL,"
	next "la GS BALL enter-"
	next "rée aux RUINES.@"
LugiaEvent_Str:
	db 	 "ARGENT'AILE."
	next "L'ARGENTAile a été"
	next "égarée comme souv.@"
HoOhEvent_Str:
	db 	 "ARCENCI'AILE, con-"
	next "fiée aux Dresseurs"
	next "après 4 épreuves.@"
ArticunoEvent_Str:
	db 	 "Attend patiemment,"
	next "entouré par les"
	next "vagues. Niv 60.@"
ZapdosEvent_Str:
	db 	 "Attend au dessus"
	next "de la Centrale"
	next "Elec. Niv 60.@"
MoltresEvent_Str:
	db 	 "Attend dans la"
	next "longue et sombre"
	next "VICTOIRE. Niv 60.@"
MewtwoEvent_Str:
	db 	 "Pas AZUREE, mais"
	next "ROUGE et ARGENTEE."
	next "Niv 75.@"
MewEvent_Str:
	db 	 "Avec les 251, att-"
	next "end au Pont Pépite."
	next "ABRA non requis.@"

GiftMons::
; replace map_id with -1 to hide location but keep hint
; species, EVENT_FLAG, map_id, blurb string ptr
	specialencounter SHUCKLE, 	EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM, MANIAS_HOUSE, ShuckieEvent_Str ; EVENT_GOT_SHUCKIE / EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	specialencounter SPEAROW, 	EVENT_GOT_KENYA, 					ROUTE_35_GOLDENROD_GATE, KenyaEvent_Str
	specialencounter DRATINI, 	EVENT_GOT_DRATINI, 					DRAGON_SHRINE, ExtremespeedDratini_Str
	specialencounter EEVEE,	 	EVENT_GOT_EEVEE, 					BILLS_FAMILYS_HOUSE, BillsEevee_Str
	specialencounter TYROGUE, 	EVENT_GOT_TYROGUE_FROM_KIYO, 		MOUNT_MORTAR_1F_OUTSIDE, TyrogueEvent_Str
	specialencounter AERODACTYL,EVENT_GAVE_SCIENTIST_OLD_AMBER, 	RUINS_OF_ALPH_RESEARCH_CENTER, OldAmberEvent_Str
	specialencounter KABUTO, 	EVENT_GAVE_SCIENTIST_DOME_FOSSIL, 	RUINS_OF_ALPH_RESEARCH_CENTER, DomeFossil_Str
	specialencounter OMANYTE, 	EVENT_GAVE_SCIENTIST_HELIX_FOSSIL, 	RUINS_OF_ALPH_RESEARCH_CENTER, HelixFossil_Str
	db -1

; GivePoke Dex Hints, max 18 chars per line
ShuckieEvent_Str:
	db 	 "Une joie supérieure"
	next "à 150 pourrait le"
	next "faire changer.@"
KenyaEvent_Str:
	db 	 "Stupide oiseau. Il"
	next "transporte un cou-"
	next "rrier pr ROUTE 31@"
ExtremespeedDratini_Str:
	db 	 "Une GRNDVIT. est"
	next "récompensée comme"
	next "véritable vertue.@"
BillsEevee_Str:
	db 	 "N20 - Un adorable"
	next "bout de chou au"
	next "potent. illimité.@"
TyrogueEvent_Str:
	db 	 "Un cadeau du ROI"
	next "du KARATE."
	next "@"
OldAmberEvent_Str:
	db 	 "Résolvez les mys-"
	next "térieux puzzles,"
	next "ranimez le foss.@"
DomeFossil_Str:
	db 	 "Résolvez les mys-"
	next "térieux puzzles,"
	next "ranimez le foss.@"
HelixFossil_Str:
	db 	 "Résolvez les mys-"
	next "térieux puzzles,"
	next "ranimez le foss.@"