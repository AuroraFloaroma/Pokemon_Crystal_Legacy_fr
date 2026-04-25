	object_const_def
	const BRUNOSROOM_BRUNO

BrunosRoom_MapScripts:
	def_scene_scripts
	scene_script .LockDoor ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_TILES, .BrunosRoomDoors

.LockDoor:
	sdefer .BrunosDoorLocksBehindYou
	end

.DummyScene:
	end

.BrunosRoomDoors:
	checkevent EVENT_BRUNOS_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 14, $2a ; wall
.KeepEntranceOpen:
	checkevent EVENT_BRUNOS_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 2, $16 ; open door
.KeepExitClosed:
	endcallback

.BrunosDoorLocksBehindYou:
	applymovement PLAYER, BrunosRoom_EnterMovement
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 14, $2a ; wall
	reloadmappart
	closetext
	setscene SCENE_FINISHED
	setevent EVENT_BRUNOS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

BrunoScript_Battle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_4_BRUNO
	iftrue BrunoScript_AfterBattle
	readvar VAR_BADGES
	if_less_than 16, .OriginalText
	writetext BrunoScript_BrunoRematchBeforeText
	sjump .EndIntroText
.OriginalText
	writetext BrunoScript_BrunoBeforeText
.EndIntroText
	waitbutton
	closetext
	winlosstext BrunoScript_BrunoBeatenText, 0
	readvar VAR_BADGES
	if_greater_than 15, .Rematch
	loadtrainer BRUNO, BRUNO1
	sjump .LoadtrainerEnd
.Rematch:
	loadtrainer BRUNO, 2
.LoadtrainerEnd:
	checkflag ENGINE_HARD_MODE
	iffalse .normalmode_2
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
.normalmode_2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ELITE_4_BRUNO
		
	checkflag ENGINE_HARD_MODE
	iffalse .DontUpdateBadge
	readvar VAR_BADGES
	if_less_than 9, .BaseCap
	sjump .DontUpdateBadge
.BaseCap
	loadmem wLevelCap, 55 ; update level cap for hard mode
.DontUpdateBadge

	opentext
	writetext BrunoScript_BrunoDefeatText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $16 ; open door
	reloadmappart
	closetext
	setevent EVENT_BRUNOS_ROOM_EXIT_OPEN
	waitsfx
	end

BrunoScript_AfterBattle:
	writetext BrunoScript_BrunoDefeatText
	waitbutton
	closetext
	end

BrunosRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

BrunoScript_BrunoRematchBeforeText:
	text "ALDO: Bon retour,"
	line "jeune"
	cont "guerrier.ère."

	para "Grâce à un"
	line "entraînement"
	cont "rigoureux, nous"
	cont "sommes devenus"
	cont "plus forts."

	para "Ma volonté de fer"
	line "est plus"
	cont "inébranlable que"
	cont "jamais."

	para "Es-tu prêt.e à"
	line "relever un défi"
	cont "encore plus"
	cont "grand ?"

	para "Montre-moi les"
	line "fruits de ton"
	cont "entraînement."

	para "COMBAT !"
	done

BrunoScript_BrunoBeforeText:
	text "Je suis ALDO du"
	line "CONSEIL des 4."

	para "Mon truc à moi"
	line "c'est de m'entraî-"
	cont "ner comme un méga"
	cont "dingue."

	para "Et c'est comme ça"
	line "que je suis devenu"
	cont "si fort et beau."

	para "... Ho!"
	line "Tu m'écoutes?"

	para "T'as pas peur ou"
	line "quoi? Très bien..."

	para "Comme on peut pas"
	line "discuter, on va"
	cont "s'battre."

	para "OK, <PLAYER>?"
	line "Tu vas... Quoi?"

	para "Tu veux que j'ar-"
	line "rête de parler?"

	para "COMBAT!"
	done

BrunoScript_BrunoBeatenText:
	text "Moi? Perdre?"
	line "Pourquoi?"
	done

BrunoScript_BrunoDefeatText:
	text "J'ai perdu, alors"
	line "je vais me taire."
	cont "Heu..."

	para "Va dans la pro-"
	line "chaine salle!"
	done

BrunosRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, KOGAS_ROOM, 3
	warp_event  5, 17, KOGAS_ROOM, 4
	warp_event  4,  2, KARENS_ROOM, 1
	warp_event  5,  2, KARENS_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  7, SPRITE_BRUNO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BrunoScript_Battle, -1
