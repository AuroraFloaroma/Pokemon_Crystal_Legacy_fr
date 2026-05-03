	object_const_def
	const SEAFOAMGYM_BLAINE
	const SEAFOAMGYM_GYM_GUIDE

SeafoamGym_MapScripts:
	def_scene_scripts
	scene_script .DummyScene

	def_callbacks

.DummyScene:
	end

SeafoamGymBlaineScript:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
	iftrue .FightDone
	writetext BlaineIntroText
	waitbutton
	closetext
	winlosstext BlaineWinLossText, 0
	loadtrainer BLAINE, BLAINE1
	checkflag ENGINE_HARD_MODE
	iffalse .normalmode_BLAINE1
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
.normalmode_BLAINE1
	startbattle
	iftrue .ReturnAfterBattle
	appear SEAFOAMGYM_GYM_GUIDE
.ReturnAfterBattle:
	reloadmapafterbattle
	clearevent EVENT_CAUGHT_MOLTRES
	opentext
	writetext ReceivedVolcanoBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_VOLCANOBADGE

; 	checkevent EVENT_BEAT_BLAINE
; 	iftrue .MoltresAlreadyReleased
; 	setval MOLTRES
;     special ShowPokedexEntry
; .MoltresAlreadyReleased

	setevent EVENT_BEAT_BLAINE
	writetext BlaineAfterBattleText
	waitbutton
	closetext
	jumpstd KantoLevelCapUpdateScript
	end

.FightDone:
	checkevent EVENT_ELITE_4_REMATCH
	iffalse .NotBeatE4Rematch
	writetext BlaineRematchText
	yesorno
	iftrue .BlaineRematch
	sjump .SaidNo
.NotBeatE4Rematch
	writetext BlaineFightDoneText
	waitbutton
.SaidNo
	closetext
	end

.BlaineRematch:
	special HealParty
	winlosstext Blaine_RematchDefeatText, 0
	loadtrainer BLAINE, BLAINE1
	checkflag ENGINE_HARD_MODE
	iffalse .normalmode_2
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	.normalmode_2
	startbattle
	reloadmapafterbattle
	end

SeafoamGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_SEAFOAM_GYM_GUIDE_ONCE
	iftrue .TalkedToSeafoamGymGuideScript
	writetext SeafoamGymGuideWinText
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_SEAFOAM_GYM_GUIDE_ONCE
	end

.TalkedToSeafoamGymGuideScript:
	writetext SeafoamGymGuideWinText2
	waitbutton
	closetext
	end

BlaineIntroText:
	text "AUGUSTE: Waaah!"

	para "Mon ARENE de"
	line "CRAMOIS'ILE a"
	cont "brûlé."

	para "Moi et mes #MON de"
	line "feu n'avons"

	para "plus de maison à"
	line "cause du volcan."

	para "Mais je suis"
	line "toujours un"
	cont "CHAMPION!"

	para "Et je fais la loi"
	line "dans cette grotte."

	para "Les temps sont"
	line "durs mais j'ai"
	cont "déjà connu pire."

	para "Y'a longtemps,"
	line "j'me suis perdu"
	cont "dans les montagnes"

	para "jusqu'à ce qu'un"
	line "oiseau ardent me"
	cont "guide jusqu'en"
	cont "bas..."

	para "Eh bah tu sais"
	line "quoi ? Cet oiseau"
	cont "c'était SULFURA."

	para "RED m'a confié sa"
	line "garde, des années"
	cont "plus tard."

	para "Bats-moi et je te"
	line "donnerai un BADGE."
	cont "Promis!"

	para "J'espère que tu as"
	line "de l'ANTI-BRULE!"

	para "Ca va chauffer et"
	line "encore plus"
	cont "qu'avec ta mère"
	cont "hier soir!"
	done

BlaineWinLossText:
	text "AUGUSTE: Wow, ce"
	line "combat m'a"
	cont "refroidi."

	para "T'as bien mérité"
	line "le BADGE VOLCAN!"
	done

ReceivedVolcanoBadgeText:
	text "<PLAYER> reçoit"
	line "le BADGE VOLCAN."
	done

BlaineAfterBattleText:
	text "AUGUSTE: Je perds"
	line "cette fois mais la"

	para "prochaine, je"
	line "serai vainqueur."

	para "Je vais recons-"
	line "truire mon ARENE à"

	para "CRAMOIS'ILE et"
	line "nous combattrons à"
	cont "nouveau."
	done

BlaineFightDoneText:
	text "AUGUSTE: Mes"
	line "#MON de feu"

	para "seront invincibles"
	line "tu verras!"
	done

BlaineRematchText:
	text "BLAINE: Whoa!"

	para "I see you've"
	line "become the"
	cont "KANTO CHAMPION!"

	para "That's blazing!"

	para "Your skills are"
	line "top-notch."

	para "I'm always"
	line "up for a battle."

	para "Want to have a"
	line "rematch with me?"
	done

Blaine_RematchDefeatText:
	text "BLAINE: Your"
	line "skills are truly"
	cont "fiery!"

	para "You've burned"
	line "right through"
	cont "my defenses."
	done

SeafoamGymGuideWinText:
	text "Yo!"

	para "Hein? C'est déjà"
	line "fini?"

	para "Désolé!"

	para "L'ARENE de CRAMOI-"
	line "S'ILE était fermée"

	para "alors je savais"
	line "pas où te trouver."

	para "Enfin t'es super"
	line "balèze même sans"

	para "mes conseils. Je"
	line "suis très fier!"
	done

SeafoamGymGuideWinText2:
	text "Une ARENE #MON"
	line "peut être n'impor-"

	para "te où tant que le"
	line "CHAMPION est là."

	para "Pas besoin d'un"
	line "toit."
	done

SeafoamGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, ROUTE_20, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SeafoamGymBlaineScript, -1
	object_event  6,  5, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamGymGuideScript, EVENT_SEAFOAM_GYM_GYM_GUIDE
