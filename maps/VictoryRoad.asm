	object_const_def
	const VICTORYROAD_SILVER
	const VICTORYROAD_POKE_BALL1
	const VICTORYROAD_POKE_BALL2
	const VICTORYROAD_POKE_BALL3
	const VICTORYROAD_POKE_BALL4
	const VICTORYROAD_POKE_BALL5
	const VICTORYROAD_MOLTRES

VictoryRoad_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	def_callbacks

.DummyScene0:
	end

.DummyScene1:
	end

VictoryRoadRivalLeft:
	moveobject VICTORYROAD_SILVER, 18, 11
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear VICTORYROAD_SILVER
	applymovement VICTORYROAD_SILVER, VictoryRoadRivalBattleApproachMovement1
	scall VictoryRoadRivalNext
	applymovement VICTORYROAD_SILVER, VictoryRoadRivalBattleExitMovement1
	disappear VICTORYROAD_SILVER
	setscene SCENE_FINISHED
	playmapmusic
	end

VictoryRoadRivalRight:
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear VICTORYROAD_SILVER
	applymovement VICTORYROAD_SILVER, VictoryRoadRivalBattleApproachMovement2
	scall VictoryRoadRivalNext
	applymovement VICTORYROAD_SILVER, VictoryRoadRivalBattleExitMovement2
	disappear VICTORYROAD_SILVER
	setscene SCENE_FINISHED
	playmapmusic
	end

VictoryRoadRivalNext:
	turnobject PLAYER, DOWN
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext VictoryRoadRivalBeforeText
	waitbutton
	closetext
	setevent EVENT_RIVAL_VICTORY_ROAD
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .GotTotodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .GotChikorita
	winlosstext VictoryRoadRivalDefeatText, VictoryRoadRivalVictoryText
	setlasttalked VICTORYROAD_SILVER
	loadtrainer RIVAL1, RIVAL1_5_TOTODILE
	checkflag ENGINE_HARD_MODE
	iffalse .normalmode_RIVAL1_5_TOTODILE
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
.normalmode_RIVAL1_5_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.GotTotodile:
	winlosstext VictoryRoadRivalDefeatText, VictoryRoadRivalVictoryText
	setlasttalked VICTORYROAD_SILVER
	loadtrainer RIVAL1, RIVAL1_5_CHIKORITA
	checkflag ENGINE_HARD_MODE
	iffalse .normalmode_RIVAL1_5_CHIKORITA
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
.normalmode_RIVAL1_5_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.GotChikorita:
	winlosstext VictoryRoadRivalDefeatText, VictoryRoadRivalVictoryText
	setlasttalked VICTORYROAD_SILVER
	loadtrainer RIVAL1, RIVAL1_5_CYNDAQUIL
	checkflag ENGINE_HARD_MODE
	iffalse .normalmode_RIVAL1_5_CYNDAQUIL
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
.normalmode_RIVAL1_5_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.AfterBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext VictoryRoadRivalAfterText
	waitbutton
	closetext
	end

VictoryRoadTMEarthquake:
	itemball TM_EARTHQUAKE

VictoryRoadMaxRevive:
	itemball MAX_REVIVE

VictoryRoadFullRestore:
	itemball FULL_RESTORE

VictoryRoadFullHeal:
	itemball FULL_HEAL

VictoryRoadHPUp:
	itemball HP_UP

VictoryRoadHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_VICTORY_ROAD_HIDDEN_MAX_POTION

VictoryRoadHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_VICTORY_ROAD_HIDDEN_FULL_HEAL

VictoryRoadRivalBattleApproachMovement1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

VictoryRoadRivalBattleApproachMovement2:
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

VictoryRoadRivalBattleExitMovement1:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

VictoryRoadRivalBattleExitMovement2:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step_end

MoltresScript:
	opentext
	writetext MoltresBattleText
	cry MOLTRES
	waitbutton
	closetext
	loadwildmon MOLTRES, 60
	startbattle
	disappear VICTORYROAD_MOLTRES
	setevent EVENT_CAUGHT_MOLTRES
	reloadmapafterbattle
	end

MoltresBattleText:
	text "Sulfuuu!"
	done

VictoryRoadRivalBeforeText:
	text "Minute."

	para "Tu vas relever le"
	line "défi de la LIGUE"
	cont "#MON?"

	para "…Me fais pas rire."

	para "T'es tellement"
	line "plus faible que"
	cont "moi."

	para "Et même si t'étais"
	line "meilleur·e, bah tu"
	cont "sais quoi?"

	para "J'ai réalisé qu'il"
	line "y avait bien plus"
	cont "encore."

	para "J'commence enfin à"
	line "comprendre ce que"
	cont "la reine des dra-"
	cont "gons m'a dit la"
	cont "dernière fois..."
	
	para "Amour, amitié…"
	line "c'est ce que les"
	cont "anciens ont aussi"
	cont "dit dans l'ANTRE"
	cont "du DRAGON."

	para "Il faut que je"
	line "prenne soin de"
	cont "cette équipe, ap-"
	cont "rès tout ce que"
	cont "l'on a traversé"
	cont "ensemble alors que"
	cont "je ne les traitais"
	cont "que comme de sim-"
	cont "ples pions..."

	para "Mais c'est"
	line "terminé. Et ça, je"
	cont "vous le promets."

	para "Je vais prendre"
	line "soin de vous à"
	cont "présent."

	para "Ensemble, on sera"
	line "imbattable."

	para "Quoi? YMPHECT?"
	line "T'es en train"
	cont "de..."
	
	para "............"
	line "............"

	para "Félicitations!"
	line "Votre YMPHECT"

	para "a évolué en"
	line "TYRANOCIF."

	para "............"
	line "............"
	
	para "Mais… Tu n'es"
	line "pourtant pas au"
	cont "niv-…"

	para "Je vois..."

	para "C'est comme ça que"
	line "la reine des dra-"
	cont "gons est arrivée à"
	cont "faire de grandes"
	cont "choses."

	para "J'ai déjà entendu"
	line "parler qu'à trav-"
	cont "ers l'amour que"
	cont "l'on porte à ses"
	cont "#MON, il est"
	cont "parfois possible"
	cont "d'assister à ce"
	cont "genre de phéno-"
	cont "mènes."

	para "…Ou alors c'est à"
	line "cause du signal"
	cont "radio de la TEAM"
	cont "ROCKET."

	para "Bref, peu importe."

	para "Je te défie en"
	line "duel <PLAYER>!"

	para "Mes amis et moi,"
	line "on va t'éclater et"
	cont "ensuite ça sera au"
	cont "tour de la LIGUE"
	cont "#MON!"
	done

VictoryRoadRivalDefeatText:
	text "..."

	para "Je ne pouvais pas"
	line "gagner..."

	para "Je me suis donné à"
	line "fond..."

	para "Ce que tu poss-"
	line "èdes, et ce dont"
	cont "je manque…"
	done

VictoryRoadRivalAfterText:
	text "...Je n'ai pas"
	line "oublié mon rêve de"
	cont "devenir le plus"
	cont "grand des dres-"
	cont "seurs..."

	para "Mais ça ira, je"
	line "reviendrais plus"
	cont "fort. Et quand ça"
	cont "sera le moment, je"
	cont "te défierai de"
	cont "nouveau… et ça"
	cont "sera ta fête."

	para "Allez les potes,"
	line "on y va."
	done

VictoryRoadRivalVictoryText:
	text "Quelle puissance!"

	para "Quand on y pense,"
	line "rien ne peut venir"
	cont "à bout de"
	cont "l'amitié."

	para "Je n'ai besoin de"
	line "rien d'autre."
	done

VictoryRoad_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 67, VICTORY_ROAD_GATE, 5
	warp_event  1, 49, VICTORY_ROAD, 3
	warp_event  1, 35, VICTORY_ROAD, 2
	warp_event 13, 31, VICTORY_ROAD, 5
	warp_event 13, 17, VICTORY_ROAD, 4
	warp_event 17, 33, VICTORY_ROAD, 7
	warp_event 17, 19, VICTORY_ROAD, 6
	warp_event  0, 11, VICTORY_ROAD, 9
	warp_event  0, 27, VICTORY_ROAD, 8
	warp_event 13,  5, ROUTE_23, 3

	def_coord_events
	coord_event 12,  8, SCENE_DEFAULT, VictoryRoadRivalLeft
	coord_event 13,  8, SCENE_DEFAULT, VictoryRoadRivalRight

	def_bg_events
	bg_event  3, 29, BGEVENT_ITEM, VictoryRoadHiddenMaxPotion
	bg_event  3, 65, BGEVENT_ITEM, VictoryRoadHiddenFullHeal

	def_object_events
	object_event 18, 13, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_VICTORY_ROAD
	object_event  3, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadTMEarthquake, EVENT_VICTORY_ROAD_TM_EARTHQUAKE
	object_event 12, 48, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadMaxRevive, EVENT_VICTORY_ROAD_MAX_REVIVE
	object_event 18, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadFullRestore, EVENT_VICTORY_ROAD_FULL_RESTORE
	object_event 15, 48, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadFullHeal, EVENT_VICTORY_ROAD_FULL_HEAL
	object_event  7, 38, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadHPUp, EVENT_VICTORY_ROAD_HP_UP
	object_event 18, 32, SPRITE_MOLTRES_OVERWORLD, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MoltresScript, EVENT_CAUGHT_MOLTRES