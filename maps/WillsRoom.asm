	object_const_def
	const WILLSROOM_WILL

WillsRoom_MapScripts:
	def_scene_scripts
	scene_script .LockDoor ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_TILES, .WillsRoomDoors

.LockDoor:
	sdefer .WillsDoorLocksBehindYou
	end

.DummyScene:
	end

.WillsRoomDoors:
	checkevent EVENT_WILLS_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 14, $2a ; wall
.KeepEntranceOpen:
	checkevent EVENT_WILLS_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 2, $16 ; open door
.KeepExitClosed:
	endcallback

.WillsDoorLocksBehindYou:
	applymovement PLAYER, WillsRoom_EnterMovement
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 14, $2a ; wall
	reloadmappart
	closetext
	setscene SCENE_FINISHED
	setevent EVENT_WILLS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

WillScript_Battle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_4_WILL
	iftrue WillScript_AfterBattle
	readvar VAR_BADGES
	if_less_than 16, .OriginalText
	writetext WillScript_WillRematchBeforeText
	sjump .EndIntroText
.OriginalText
	writetext WillScript_WillBeforeText
.EndIntroText
	waitbutton
	closetext
	winlosstext WillScript_WillBeatenText, 0
	readvar VAR_BADGES
	if_greater_than 15, .Rematch
	loadtrainer WILL, WILL1
	sjump .LoadtrainerEnd
.Rematch:
	loadtrainer WILL, 2
.LoadtrainerEnd:
	checkflag ENGINE_HARD_MODE
	iffalse .normalmode_2
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
.normalmode_2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ELITE_4_WILL
		
	checkflag ENGINE_HARD_MODE
	iffalse .DontUpdateBadge
	readvar VAR_BADGES
	if_less_than 9, .BaseCap
	sjump .DontUpdateBadge
.BaseCap
	loadmem wLevelCap, 52 ; update level cap for hard mode
.DontUpdateBadge

	opentext
	writetext WillScript_WillDefeatText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $16 ; open door
	reloadmappart
	closetext
	setevent EVENT_WILLS_ROOM_EXIT_OPEN
	waitsfx
	end

WillScript_AfterBattle:
	writetext WillScript_WillDefeatText
	waitbutton
	closetext
	end

WillsRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

WillScript_WillRematchBeforeText:
	text "WILL:"
	line "Ah, welcome back."

    para "I have foreseen"
    line "this encounter."

    para "My psychic #MON"
    line "and I have"
	cont "evolved,"

    para "developing new"
	line "tactics."

    para "Prepare yourself"
    line "for a battle of"
    cont "enhanced strategy"
	cont "and might."

    para "Let us see if"
    line "your foresight"
    cont "matches mine."
	done

WillScript_WillBeforeText:
	text "Bienvenue à la"
	line "LIGUE #MON,"
	cont "<PLAYER>."

	para "Je me présente:"
	line "mon nom est"
	cont "CLEMENT."

	para "Je sais tout."
	line "J'ai tout vu."

	para "Mes #MON PSY"
	line "sont trop forts."

	para "Le CONSEIL des 4"
	line "m'a accueilli en"
	cont "son sein."

	para "Normal, quoi."
	line "J'suis trop fort!"

	para "Perdre? Défaite?"
	line "Connais pas!"
	done

WillScript_WillBeatenText:
	text "C'est..."
	line "Incroyable..."
	done

WillScript_WillDefeatText:
	text "J'ai peut-être"
	line "perdu comme un"
	cont "criquet mais..."

	para "Je continuerai à"
	line "combattre tant que"

	para "je ne serai pas le"
	line "plus grand!"

	para "<PLAYER>..."
	line "Continue ta route"

	para "et découvre la"
	line "force du CONSEIL"
	cont "des 4!"
	done

WillsRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 17, INDIGO_PLATEAU_POKECENTER_1F, 4
	warp_event  4,  2, KOGAS_ROOM, 1
	warp_event  5,  2, KOGAS_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  7, SPRITE_WILL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, WillScript_Battle, -1
