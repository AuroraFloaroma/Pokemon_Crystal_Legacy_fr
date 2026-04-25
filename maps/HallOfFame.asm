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
	line "les MAITRES de la"

	para "LIGUE pour l'éter-"
	line "nité."

	para "Leurs courageux"
	line "#MON sont aussi"
	cont "accueillis."

	para "Aujourd'hui, un"
	line "nouveau MAITRE a"

	para "fait son appari-"
	line "tion. Un MAITRE"

	para "aimant ses #MON"
	line "plus que tout."

	para "Un dresseur"
	line "persévérant et"
	cont "déterminé."

	para "Tu possèdes tous"
	line "les atouts pour"

	para "être le plus grand"
	line "des MAITRES!"

	para "<PLAY_G>, je vais"
	line "inscrire ton nom"

	para "et celui de tes"
	line "amis!"
	done

HallOfFame_Rematch_LanceText:
	text "LANCE: I remember,"
    line "it wasn't long ago"
    cont "I stood here,"

    para "welcoming you as"
    line "the CHAMPION of"
    cont "JOHTO."

    para "And now, here we"
    line "are again,"
	
	para "in this sacred"
    line "place where we"
    cont "honor the very "
    cont "best trainers"
	cont "and their #MON."

    para "Today, you've"
    line "proven yourself"
	cont "not just in JOHTO,"
	
	para "but in KANTO as"
    line "well,"
	
	para "besting even my"
    line "strongest team."

    para "You've shown"
    line "remarkable"
	cont "compassion and"
    cont "trust in your"
    cont "#MON,"
	
	para "a bond that"
    line "has carried you to"
    cont "victory time and"
    cont "again."

    para "Your journey,"
    line "marked by"
	cont "perseverance and"
    cont "unwavering"
	cont "determination,"

    para "speaks to your"
    line "true spirit as a"
	cont "trainer."

    para "You have all the"
    line "makings of a true"
    cont "great,"
	
	para "perhaps even"
    line "the greatest."

    para "<PLAY_G>,"
	line "it is my honor"
    cont "to register you,"

    para "and your trusted"
    line "partners,"

	para "as champions"
    line "once again."
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
