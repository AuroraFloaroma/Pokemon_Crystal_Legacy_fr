	object_const_def
	const KARENSROOM_KAREN

KarensRoom_MapScripts:
	def_scene_scripts
	scene_script .LockDoor ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_TILES, .KarensRoomDoors

.LockDoor:
	sdefer .KarensDoorLocksBehindYou
	end

.DummyScene:
	end

.KarensRoomDoors:
	checkevent EVENT_KARENS_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 14, $2a ; wall
.KeepEntranceOpen:
	checkevent EVENT_KARENS_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 2, $16 ; open door
.KeepExitClosed:
	endcallback

.KarensDoorLocksBehindYou:
	applymovement PLAYER, KarensRoom_EnterMovement
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 14, $2a ; wall
	reloadmappart
	closetext
	setscene SCENE_FINISHED
	setevent EVENT_KARENS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

KarenScript_Battle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_4_KAREN
	iftrue KarenScript_AfterBattle
	readvar VAR_BADGES
	if_less_than 16, .OriginalText
	writetext KarenScript_KarenRematchBeforeText
	sjump .EndIntroText
.OriginalText
	writetext KarenScript_KarenBeforeText
.EndIntroText
	waitbutton
	closetext
	winlosstext KarenScript_KarenBeatenText, 0
	readvar VAR_BADGES
	if_greater_than 15, .Rematch
	loadtrainer KAREN, KAREN1
	sjump .LoadtrainerEnd
.Rematch:
	loadtrainer KAREN, 2
.LoadtrainerEnd:
	checkflag ENGINE_HARD_MODE
	iffalse .normalmode_2
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
.normalmode_2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ELITE_4_KAREN
	opentext
	writetext KarenScript_KarenDefeatText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $16 ; open door
	reloadmappart
	closetext
	setevent EVENT_KARENS_ROOM_EXIT_OPEN
	waitsfx
	end

KarenScript_AfterBattle:
	writetext KarenScript_KarenDefeatText
	waitbutton
	closetext
	end

KarensRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

KarenScript_KarenRematchBeforeText:
	text "MARION: Alors"
	line "comme ça te"
	cont "revoilà…"

	para "J'espère que tu"
	line "n'as pas oublié ma"
	cont "conviction: la"
	cont "véritable force"
	cont "émerge du lien qui"
	cont "unit les dresseurs"
	cont "et leurs #MON."

	para "Depuis notre"
	line "dernière"
	cont "rencontre, notre"
	cont "lien s'est encore"
	cont "renforcé."

	para "Es-tu prêt·e à"
	line "faire face à une"
	cont "équipe unie par un"
	cont "lien d'acier?"

	para "Montre moi la"
	line "puissance de ton"
	cont "propre lien avec"
	cont "tes #MON."
	done

KarenScript_KarenBeforeText:
	text "Je suis MARION du"
	line "CONSEIL des 4."

	para "C'est toi <PLAYER>?"
	line "C'est marrant."

	para "Moi j'aime les"
	line "#MON des"
	cont "TENEBRES."

	para "Leur look noir"
	line "et méchant est"

	para "trop cool. Et ils"
	line "sont forts aussi!"

	para "Tu crois pouvoir"
	line "les battre? Allez,"
	cont "essaie pour voir."

	para "C'est parti."
	done

KarenScript_KarenBeatenText:
	text "Regardez-moi ça…"

	para "Tu t'en sors bien."

	para "C'est ce que j'ai-"
	line "me chez les dres-"
	cont "seur·euse·s."

KarenScript_KarenDefeatText:
	text "#MON puissants."

	para "#MON faibles."

	para "Cette vision est"
	line "faite pour les"
	cont "simples d'esprit."
	
	para "Les bons dresseu-"
	line "r·euse·s gagnent"
	cont "avec leurs #MON"
	cont "favoris."

	para "J'aime ton style."
	line "Tu as du"
	cont "talent..."

	para "Allez, va..."
	line "Le MAITRE attend."
	done

KarensRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, BRUNOS_ROOM, 3
	warp_event  5, 17, BRUNOS_ROOM, 4
	warp_event  4,  2, LANCES_ROOM, 1
	warp_event  5,  2, LANCES_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  7, SPRITE_KAREN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, KarenScript_Battle, -1
