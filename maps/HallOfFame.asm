	object_const_def
	const HALLOFFAME_LANCE

HallOfFame_MapScripts:
	def_scene_scripts
	scene_script .EnterHallOfFame ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	def_callbacks

.EnterHallOfFame:
	sdefer .EnterHallOfFameScript
	end

.DummyScene:
	end

.EnterHallOfFameScript:
	follow HALLOFFAME_LANCE, PLAYER
	applymovement HALLOFFAME_LANCE, HallOfFame_WalkUpWithLance
	stopfollow
	turnobject PLAYER, RIGHT
	opentext

	readvar VAR_BADGES
	if_less_than 16, .OriginalText
	writetext HallOfFame_Rematch_LanceText
	sjump .EndText
.OriginalText
	writetext HallOfFame_LanceText
.EndText

	waitbutton
	closetext
	turnobject HALLOFFAME_LANCE, UP
	applymovement PLAYER, HallOfFame_SlowlyApproachMachine
	setscene SCENE_FINISHED
	pause 15
	setval HEALMACHINE_HALL_OF_FAME
	special HealMachineAnim
	setevent EVENT_BEAT_ELITE_FOUR
	setevent EVENT_TELEPORT_GUY
	setevent EVENT_RIVAL_SPROUT_TOWER
	clearevent EVENT_RED_IN_MT_SILVER
	setevent EVENT_OLIVINE_PORT_SPRITES_BEFORE_HALL_OF_FAME
	clearevent EVENT_OLIVINE_PORT_SPRITES_AFTER_HALL_OF_FAME
	setmapscene SPROUT_TOWER_3F, SCENE_FINISHED
	special HealParty
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftrue .SkipPhoneCall
	specialphonecall SPECIALCALL_SSTICKET
.SkipPhoneCall:
	halloffame
	end

HallOfFame_WalkUpWithLance:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	turn_head LEFT
	step_end

HallOfFame_SlowlyApproachMachine:
	slow_step UP
	step_end

HallOfFame_LanceText:
	text "PETER: Je ne suis"
	line "pas venu ici"
	cont "depuis longtemps."

	para "Ce lieu consacre"
	line "les MAITRE·SSE·S"

	para "de la LIGUE pour"
	line "l'éternité."

	para "Leurs courageux"
	line "#MON sont aussi"
	cont "accueillis."

	para "Aujourd'hui, un·e"
	line "nouvelle·au"
	cont "MAITRE·SSE a"

	para "fait son appari-"
	line "tion."
	
	para "Un·e MAITRE·SSE"
	line "aimant ses #MON"
	cont "plus que tout."

	para "Un·e dresseur·euse"
	line "persévérant·e et"
	cont "déterminé·e."

	para "Tu possèdes tous"
	line "les atouts pour"

	para "être le·a plus"
	line "grand·e des"
	cont "MAITRE·SSE·S!"

	para "<PLAY_G>, je vais"
	line "inscrire ton nom"

	para "et celui de tes"
	line "amis!"
	done

HallOfFame_Rematch_LanceText:
	text "PETER: Il n'y a"
	line "pas si longtemps"
	cont "de cela, je me"
	cont "tenais ici, t'acc-"
	cont "ueillant en tant"
	cont "que nouvelle·au"
	cont "MAITRE·SSE de"
	cont "JOHTO."

	para "Et nous y revoilà,"
	line "dans ce lieu"
	cont "sacré, où l'on"
	cont "honore les"
	cont "meilleur·e·s de"
	cont "tous les"
	cont "dresseur·euse·s"
	cont "ainsi que leurs"
	cont "#MON."

	para "Aujourd'hui, une"
	line "fois de plus, tu"
	cont "as su prouver ta"
	cont "valeur. Non seule-"
	cont "ment à JOHTO, mais"
	cont "aussi à KANTO,"
	cont "tout en bravant"
	cont "mon équipe la plus"
	cont "forte."
	
	para "Ce lien qui te"
	line "lie, toi et tes"
	cont "#MON, carac-"
	cont "térisé par la"
	cont "compassion, mais"
	cont "aussi par l'im-"
	cont "mense confiance"
	cont "qui règne entre"
	cont "vous, a su vous"
	cont "mener encore et"
	cont "encore à la"
	cont "victoire."

	para "Ton voyage, marqué"
	line "par ta persévé-"
	cont "rance et ta déter-"
	cont "mination sans fin,"
	cont "en dit long sur"
	cont "ton âme de"
	cont "dresseur·euse."

	para "Tu as tout de"
	line "l'étoffe d'un·e"
	cont "grand·e"
	cont "dresseur·euse,"
	cont "peut-être même"
	cont "le·a plus grand·e."

	para "<PLAY_G>, sache"
	line "que je suis honoré"
	cont "de vous immorta-"
	cont "liser une nouvelle"
	cont "fois, toi et tes"
	cont "partenaires, en"
	cont "tant que"
	cont "MAITRE·SSE de la"
	cont "LIGUE #MON."
	done


HallOfFame_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 13, LANCES_ROOM, 3
	warp_event  5, 13, LANCES_ROOM, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4, 12, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
