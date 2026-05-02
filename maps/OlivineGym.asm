	object_const_def
	const OLIVINEGYM_JASMINE
	const OLIVINEGYM_GYM_GUIDE

OlivineGym_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineGymJasmineScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_JASMINE
	iftrue .FightDone
	writetext Jasmine_SteelTypeIntro
	waitbutton
	closetext
	winlosstext Jasmine_BetterTrainer, 0
	;  Level scaling if statments
	readvar VAR_BADGES
	ifequal 6, .SevenBadges
	ifequal 5, .SixBadges
	ifequal 4, .FiveBadges
.FiveBadges:
	loadtrainer JASMINE, JASMINE1
	sjump .OlivineGymJasmineScriptEnd
.SixBadges:
	loadtrainer JASMINE, 2
	sjump .OlivineGymJasmineScriptEnd
.SevenBadges:
	loadtrainer JASMINE, 3
	sjump .OlivineGymJasmineScriptEnd
.OlivineGymJasmineScriptEnd
	checkflag ENGINE_HARD_MODE
	iffalse .normalmode_3
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
.normalmode_3
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_JASMINE
	opentext
	writetext Text_ReceivedMineralBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MINERALBADGE

	; Update level caps with level scaling
	checkflag ENGINE_HARD_MODE
	iffalse .DontUpdateBadge
	readvar VAR_BADGES
	ifequal 7, .SevenBadgeCap
	ifequal 6, .SixBadgeCap
	ifequal 5, .FiveBadgeCap
.FiveBadgeCap:
	loadmem wLevelCap, 36 ; update level cap for hard mode
	sjump .LevelCapScriptEnd
.SixBadgeCap:
	loadmem wLevelCap, 38 ; update level cap for hard mode
	sjump .LevelCapScriptEnd
.SevenBadgeCap:
	loadmem wLevelCap, 45 ; update level cap for hard mode
	sjump .LevelCapScriptEnd
.DontUpdateBadge
.LevelCapScriptEnd:

	readvar VAR_BADGES
	scall OlivineGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM23_IRON_TAIL
	iftrue .GotIronTail
	writetext Jasmine_BadgeSpeech
	promptbutton
	verbosegiveitem TM_IRON_TAIL
	iffalse .NoRoomForIronTail
	setevent EVENT_GOT_TM23_IRON_TAIL
	writetext Jasmine_IronTailSpeech
	waitbutton
	closetext
	end

.GotIronTail:
	checkevent EVENT_BEAT_ELITE_FOUR
	iffalse .NotBeatE4
	writetext JasmineRematchText
	yesorno
	iftrue .JasmineRematch
	sjump .NoRoomForIronTail
.NotBeatE4
	writetext Jasmine_GoodLuck
	waitbutton
.NoRoomForIronTail:
	closetext
	end

.JasmineRematch:
	special HealParty
	winlosstext Jasmine_RematchDefeatText, 0
	loadtrainer JASMINE, 4
	checkflag ENGINE_HARD_MODE
	iffalse .normalmode_4
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
.normalmode_4
	startbattle
	reloadmapafterbattle
	end

OlivineGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

OlivineGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_JASMINE
	iftrue .OlivineGymGuideWinScript
	checkevent EVENT_JASMINE_RETURNED_TO_GYM
	iffalse .OlivineGymGuidePreScript
	opentext
	writetext OlivineGymGuideText
	waitbutton
	closetext
	end

.OlivineGymGuideWinScript:
	opentext
	writetext OlivineGymGuideWinText
	waitbutton
	closetext
	end

.OlivineGymGuidePreScript:
	opentext
	writetext OlivineGymGuidePreText
	waitbutton
	closetext
	end

OlivineGymStatue:
	checkflag ENGINE_MINERALBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, JASMINE, JASMINE1
	jumpstd GymStatue2Script

Jasmine_SteelTypeIntro:
	text "...Merci pour ton"
	line "aide au PHARE..."

	para "Mais c'est un peu"
	line "différent."

	para "Permets-moi de me"
	line "présenter."

	para "Je suis JASMINE la"
	line "CHAMPIONNE d'ARENE"
	cont "et j'utilise les"
	cont "#MON de type"
	cont "ACIER."

	para "...Ca te dit"
	line "quelque chose le"
	cont "type ACIER?"

	para "C'est un tout"
	line "nouveau type de"
	cont "#MON."

	para "Hum...? Je peux"
	line "commencer?"
	done

Jasmine_BetterTrainer:
	text "...Bon bah t'es"
	line "meilleur dresseur"

	para "que moi, en"
	line "compétence et en"
	cont "gentillesse."

	para "En accord avec les"
	line "règles de la"

	para "LIGUE, je te"
	line "confie ce BADGE."
	done

Text_ReceivedMineralBadge:
	text "<PLAYER> reçoit"
	line "le BADGEMINERAL."
	done

Jasmine_BadgeSpeech:
	text "Le BADGEMINERAL"
	line "augmente la"
	cont "DEFENSE de tes"
	cont "#MON."

	para "Prends donc ceci"
	line "aussi..."
	done

Text_ReceivedTM09: ; unreferenced
	text "<PLAYER> reçoit"
	line "la CT09."
	done

Jasmine_IronTailSpeech:
	text "Tu peux utiliser"
	line "cette CT pour"
	cont "apprendre QUEUE DE"
	cont "FER à un #MON."
	done

Jasmine_GoodLuck:
	text "Hum... Je ne sais"
	line "pas comment dire"
	cont "ça, mais bonne"
	cont "chance..."
	done

JasmineRematchText:
	text "...Félicitations,"
	line "MAITRE de JOHTO."

	para "Tu es devenu.e"
	line "tellement"
	cont "fort.e..."

	para "Je me demande si,"
	line "moi aussi, je me"
	cont "suis améliorée"
	cont "depuis."

	para "Ca te dirait de"
	line "voir ça avec moi ?"
	cont "Tu accepterais une"
	cont "revanche ?"
	done
	
Jasmine_RematchDefeatText:
	text "...Tu es un.e"
	line "meilleur.e"
	cont "dresseur.euse que"
	cont "moi, tant dans tes"
	cont "talents que ta"
	cont "gentillesse."
	done

OlivineGymGuideText:
	text "JASMINE utilise le"
	line "tout nouveau type"
	cont "ACIER."

	para "Elle est connue"
	line "pour n'avoir pas"
	cont "un, mais deux as"
	cont "dans sa manche."

	para "Le premier est un"
	line "insecte de métal"
	cont "qui utilise une"
	cont "capacité qui"
	cont "augmente son"
	cont "ATTAQUE."

	para "Bien qu'il soit"
	line "faible fasse au"
	cont "feu, il peut"
	cont "parfois endurer de"
	cont "sacrés chocs!"

	para "Le second est un"
	line "serpent géant de"
	cont "métal avec de"
	cont "puissantes"
	cont "capacités."

	para "Fais bien"
	line "attention car,"
	cont "bien qu'il puisse"
	cont "sembler lent, je"
	cont "l'ai déjà vu"
	cont "attaquer en"
	cont "premier avec une"
	cont "VITESSE"
	cont "fulgurante!"
	done

OlivineGymGuideWinText:
	text "C'est très étrange"

	para "le type ACIER,"
	line "hein?"

	para "C'est la rencon-"
	line "tre d'un nouveau"
	cont "genre!"
	done

OlivineGymGuidePreText:
	text "JASMINE, la"
	line "CHAMPIONNE d'ARENE"
	cont "est au PHARE."

	para "Elle s'occupe du"
	line "#MON malade."

	para "Un dresseur"
	line "puissant doit"
	cont "avoir un coeur"
	cont "charitable et être"
	cont "bienveillant."
	done

OlivineGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, OLIVINE_CITY, 2
	warp_event  5, 15, OLIVINE_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, OlivineGymStatue
	bg_event  6, 13, BGEVENT_READ, OlivineGymStatue

	def_object_events
	object_event  5,  3, SPRITE_JASMINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineGymJasmineScript, EVENT_OLIVINE_GYM_JASMINE
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineGymGuideScript, -1
