	object_const_def
	const MOUNTMORTAR1FOUTSIDE_POKE_BALL1
	const MOUNTMORTAR1FOUTSIDE_POKE_BALL2

MountMortar1FOutside_MapScripts:
	def_scene_scripts

	def_callbacks

MountMortarB1FKiyoScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TYROGUE_FROM_KIYO
	iftrue .GotTyrogue
	checkevent EVENT_BEAT_BLACKBELT_KIYO
	iftrue .BeatKiyo
	writetext MountMortarB1FKiyoIntroText
	waitbutton
	closetext
	winlosstext MountMortarB1FKiyoWinText, 0
	loadtrainer BLACKBELT_T, KIYO
	checkflag ENGINE_HARD_MODE
	iffalse .normalmode_KIYO
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
.normalmode_KIYO
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLACKBELT_KIYO
	opentext
.BeatKiyo:
	writetext MountMortarB1FTyrogueRewardText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext MountMortarB1FReceiveMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke TYROGUE, 10
	setevent EVENT_GOT_TYROGUE_FROM_KIYO
.GotTyrogue:
	writetext MountMortarB1FKiyoGotTyrogueText
	waitbutton
	closetext
	end

.NoRoom:
	writetext MountMortarB1FKiyoFullPartyText
	waitbutton
	closetext
	end

MountMortar1FOutsideTMDefenseCurl:
	itemball TM_DEFENSE_CURL

MountMortar1FOutsideRevive:
	itemball REVIVE

MountMortar1FOutsideHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_MOUNT_MORTAR_1F_OUTSIDE_HIDDEN_HYPER_POTION

MountMortarB1FKiyoIntroText:
	text "Salut!"

	para "Je suis le ROI DU"
	line "KARATE!"

	para "Je m'entraîne seul"
	line "ici, dans"
	cont "l'obscurité."

	para "Hé, toi! COMBAT!"

	para "Yahhhhhhh!"
	done

MountMortarB1FKiyoWinText:
	text "Argh! Je suis"
	line "battu!"
	done

MountMortarB1FTyrogueRewardText:
	text "J'ai… J'ai été"
	line "écrabouillé…"

	para "Mon entraînement"
	line "n'est donc pas"
	cont "suffisant..."

	para "Mais une défaite"
	line "est une défaite,"
	cont "je sais le"
	cont "reconnaître."

	para "Pour preuve de ta"
	line "victoire, je vais"
	cont "te donner un #MON"
	cont "rare de type"
	cont "COMBAT."
	done

MountMortarB1FReceiveMonText:
	text "<PLAYER> obtient"
	line "DEBUGANT."
	done
	
MountMortarB1FKiyoGotTyrogueText:
	text "DEBUGANT est de"
	line "type COMBAT."

	para "Il évolue en #MON"
	line "encore plus"
	cont "robuste."

	para "Continue comme ça!"

	para "Je vais reprendre"
	line "l'entraînement moi"
	cont "aussi. Adieu!"
	done
	
MountMortarB1FKiyoFullPartyText:
	text "Tu n'as pas la"
	line "place dans ton"
	cont "équipe!"
	done

MountMortar1FOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 33, ROUTE_42, 3
	warp_event 17, 33, ROUTE_42, 4
	warp_event 37, 33, ROUTE_42, 5
	warp_event 17,  5, MOUNT_MORTAR_2F_INSIDE, 1
	warp_event 11, 21, MOUNT_MORTAR_1F_INSIDE, 1
	warp_event 29, 21, MOUNT_MORTAR_1F_INSIDE, 2
	warp_event 17, 29, MOUNT_MORTAR_B1F, 2
	warp_event  7, 13, MOUNT_MORTAR_1F_INSIDE, 3
	warp_event 33, 13, MOUNT_MORTAR_1F_INSIDE, 4

	def_coord_events

	def_bg_events
	bg_event 25, 22, BGEVENT_ITEM, MountMortar1FOutsideHiddenHyperPotion

	def_object_events
	object_event 11,  15, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MountMortarB1FKiyoScript, -1
	object_event 13, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FOutsideTMDefenseCurl, EVENT_MOUNT_MORTAR_2F_INSIDE_TM_DEFENSE_CURL
	object_event 31, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FOutsideRevive, EVENT_MOUNT_MORTAR_1F_OUTSIDE_REVIVE
