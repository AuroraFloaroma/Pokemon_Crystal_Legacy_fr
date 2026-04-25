	object_const_def
	const KOGASROOM_KOGA

KogasRoom_MapScripts:
	def_scene_scripts
	scene_script .LockDoor ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_TILES, .KogasRoomDoors

.LockDoor:
	sdefer .KogasDoorLocksBehindYou
	end

.DummyScene:
	end

.KogasRoomDoors:
	checkevent EVENT_KOGAS_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 14, $2a ; wall
.KeepEntranceOpen:
	checkevent EVENT_KOGAS_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 2, $16 ; open door
.KeepExitClosed:
	endcallback

.KogasDoorLocksBehindYou:
	applymovement PLAYER, KogasRoom_EnterMovement
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 14, $2a ; wall
	reloadmappart
	closetext
	setscene SCENE_FINISHED
	setevent EVENT_KOGAS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

KogaScript_Battle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_4_KOGA
	iftrue KogaScript_AfterBattle
	readvar VAR_BADGES
	if_less_than 16, .OriginalText
	writetext KogaScript_KogaRematchBeforeText
	sjump .EndIntroText
.OriginalText
	writetext KogaScript_KogaBeforeText
.EndIntroText
	waitbutton
	closetext
	winlosstext KogaScript_KogaBeatenText, 0
	readvar VAR_BADGES
	if_greater_than 15, .Rematch
	loadtrainer KOGA, KOGA1
	sjump .LoadtrainerEnd
.Rematch:
	loadtrainer KOGA, 2
.LoadtrainerEnd:
	checkflag ENGINE_HARD_MODE
	iffalse .normalmode_2
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
.normalmode_2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ELITE_4_KOGA

	checkflag ENGINE_HARD_MODE
	iffalse .DontUpdateBadge
	readvar VAR_BADGES
	if_less_than 9, .BaseCap
	sjump .DontUpdateBadge
.BaseCap
	loadmem wLevelCap, 54 ; update level cap for hard mode
.DontUpdateBadge

	opentext
	writetext KogaScript_KogaDefeatText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $16 ; open door
	reloadmappart
	closetext
	setevent EVENT_KOGAS_ROOM_EXIT_OPEN
	waitsfx
	end

KogaScript_AfterBattle:
	writetext KogaScript_KogaDefeatText
	waitbutton
	closetext
	end

KogasRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

KogaScript_KogaRematchBeforeText:
	text "KOGA:"
	line "Fwahahahaha!"

    para "You return, brave"
    line "challenger."

	para "My ninja skills"
    line "have sharpened."

    para "New sinister traps"
    line "await you."

    para "Poison, sleep, and"
    line "more... Be ready!"

    para "Fwahahahaha!"

    para "Show me how"
    line "you've grown!"
    done

KogaScript_KogaBeforeText:
	text "Fwahahahaha!"

	para "Moi c'est KOGA du"
	line "CONSEIL des 4."

	para "J'suis un ninja!"
	line "Comme à la télé!"

	para "Je saute, je lance"
	line "des shurikens..."
	cont "J'suis trop fort!"

	para "Mais c'est pas"
	line "tout..."

	para "Tu vas voir ce que"
	line "c'est la technique"
	cont "de maître!"

	para "Fwahahahaha!"

	para "La force c'est"
	line "bien, mais le poi-"

	para "son, le sommeil et"
	line "la folie, c'est"
	cont "terrible!"
	done

KogaScript_KogaBeatenText:
	text "Ah! Tu es un"
	line "adversaire"
	cont "honorable!"
	done

KogaScript_KogaDefeatText:
	text "J'ai combattu de"
	line "toutes mes forces"
	cont "mais..."

	para "Y'a pas moyen."
	line "Je ne suis pas"
	cont "assez fort."

	para "Va dans la pro-"
	line "chaine salle."
	cont "Bonne chance!"
	done

KogasRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, WILLS_ROOM, 2
	warp_event  5, 17, WILLS_ROOM, 3
	warp_event  4,  2, BRUNOS_ROOM, 1
	warp_event  5,  2, BRUNOS_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  7, SPRITE_KOGA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, KogaScript_Battle, -1
