	object_const_def
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST1
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST2
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST3
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST4

RuinsOfAlphResearchCenter_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_RUINSOFALPHRESEARCHCENTER_NOTHING
	scene_script .GetUnownDex ; SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .ScientistCallback

.DummyScene0:
	end

.GetUnownDex:
	sdefer .GetUnownDexScript
	end

.ScientistCallback:
	checkscene
	ifequal SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX, .ShowScientist
	endcallback

.ShowScientist:
	moveobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, 3, 7
	appear RUINSOFALPHRESEARCHCENTER_SCIENTIST3
	endcallback

.GetUnownDexScript:
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterApproachesComputerMovement
	playsound SFX_BOOT_PC
	pause 60
	playsound SFX_SWITCH_POKEMON
	pause 30
	playsound SFX_TALLY
	pause 30
	playsound SFX_TRANSACTION
	pause 30
	turnobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, DOWN
	opentext
	writetext RuinsOfAlphResearchCenterModifiedDexText
	waitbutton
	closetext
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterApproachesPlayerMovement
	opentext
	writetext RuinsOfAlphResearchCenterDexUpgradedText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_UNOWN_DEX
	writetext RuinsOfAlphResearchCenterScientist3Text
	waitbutton
	closetext
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterLeavesPlayerMovement
	setscene SCENE_RUINSOFALPHRESEARCHCENTER_NOTHING
	special RestartMapMusic
	end

RuinsOfAlphResearchCenterScientist3Script:
	faceplayer
	opentext
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .PrinterAvailable
	writetext RuinsOfAlphResearchCenterScientist3Text
	waitbutton
	closetext
	end

.PrinterAvailable:
	writetext RuinsOfAlphResearchCenterScientist3_PrinterAvailable
	waitbutton
	closetext
	checkevent EVENT_CAUGHT_ALL_UNOWN
	iffalse .ShowHiddenPowerOnStatsScreen
	end

.ShowHiddenPowerOnStatsScreen
	setevent EVENT_CAUGHT_ALL_UNOWN
	end

RuinsOfAlphResearchCenterScientist1Script:
	faceplayer
	opentext
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
	checkflag ENGINE_UNOWN_DEX
	iftrue .GotUnownDex
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .UnownAppeared
	writetext RuinsOfAlphResearchCenterScientist1Text
	waitbutton
	closetext
	end

.UnownAppeared:
	writetext RuinsOfAlphResearchCenterScientist1Text_UnownAppeared
	waitbutton
	closetext
	end

.GotUnownDex:
	writetext RuinsOfAlphResearchCenterScientist1Text_GotUnownDex
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext RuinsOfAlphResearchCenterScientist1Text_GotAllUnown
	waitbutton
	closetext
	clearevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	end

RuinsOfAlphResearchCenterScientist2Script:
	faceplayer
	opentext
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .UnownAppeared
	writetext RuinsOfAlphResearchCenterScientist2Text
	waitbutton
	closetext
	end

.UnownAppeared:
	writetext RuinsOfAlphResearchCenterScientist2Text_UnownAppeared
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext RuinsOfAlphResearchCenterScientist2Text_GotAllUnown
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterComputer:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iftrue .SkipChecking
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
.SkipChecking:
	writetext RuinsOfAlphResearchCenterComputerText
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext RuinsOfAlphResearchCenterComputerText_GotAllUnown
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterPrinter:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iftrue .SkipChecking
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .PrinterAvailable
.SkipChecking:
	writetext RuinsOfAlphResearchCenterPrinterText_DoesntWork
	waitbutton
	closetext
	end

.PrinterAvailable:
	writetext RuinsOfAlphResearchCenterUnownPrinterText
	waitbutton
	special UnownPrinter
	closetext
	end

RuinsOfAlphResearchCenterPhoto: ; unreferenced
	jumptext RuinsOfAlphResearchCenterProfSilktreePhotoText

RuinsOfAlphResearchCenterBookshelf:
	jumptext RuinsOfAlphResearchCenterAcademicBooksText

RuinsOfAlphResearchCenterApproachesComputerMovement:
	step UP
	step UP
	step LEFT
	turn_head UP
	step_end

RuinsOfAlphResearchCenterApproachesPlayerMovement:
	step DOWN
	step_end

RuinsOfAlphResearchCenterLeavesPlayerMovement:
	step UP
	step_end

FossilScientist:
	faceplayer
	opentext
	checkevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	iftrue .GiveAerodactyl
	checkevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	iftrue .GiveKabuto
	checkevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	iftrue .GiveOmanyte
	writetext FossilScientistIntroText
	waitbutton
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal REVIVE_OLD_AMBER, .OldAmber
	ifequal REVIVE_DOME_FOSSIL, .DomeFossil
	ifequal REVIVE_HELIX_FOSSIL, .HelixFossil
	sjump .No

.OldAmber
	checkitem OLD_AMBER
	iffalse .No
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext FossilScientistMonText
	promptbutton
	readvar VAR_BADGES
	if_greater_than 6, .GotSevenBadges
	writetext MightTakeAWhileText
	yesorno
	iffalse .No
.GotSevenBadges:
	setevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	takeitem OLD_AMBER
	writetext FossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.DomeFossil:
	checkitem DOME_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, KABUTO
	writetext FossilScientistMonText
	promptbutton
	setevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	takeitem DOME_FOSSIL
	opentext
	writetext FossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.HelixFossil:
	checkitem HELIX_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, OMANYTE
	writetext FossilScientistMonText
	promptbutton
	setevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	takeitem HELIX_FOSSIL
	writetext FossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.No
	writetext FossilScientistNoText
	waitbutton
	closetext
	end

.GaveScientistFossil:
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	playsound SFX_WARP_TO
	waitsfx
	pause 35
	sjump FossilScientist

.GiveAerodactyl:
	readvar VAR_BADGES
	if_less_than 7, .NotEnoughBadges
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	writetext FossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	givepoke AERODACTYL, 25
	closetext
	end

.GiveKabuto:
	readvar VAR_BADGES
	if_less_than 3, .NotEnoughBadges
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	writetext FossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, KABUTO
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	givepoke KABUTO, 15
	closetext
	end

.GiveOmanyte:
	readvar VAR_BADGES
	if_less_than 4, .NotEnoughBadges
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	writetext FossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, OMANYTE
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	givepoke OMANYTE, 20
	closetext
	end
	
.NotEnoughBadges
	writetext FossilScientistTimeText
	waitbutton
	closetext
	end

.NoRoom:
	writetext FossilScientistPartyFullText
	waitbutton
	closetext
	end

.MoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "VIEIL AMBRE@"
	db "FOSSILE DOME@"
	db "NAUTILE@"
	db "RETOUR@"

RuinsOfAlphResearchCenterPC:
	opentext
	special PokemonCenterPC
	closetext
	end

FossilScientistIntroText:
	text "Salut!"

	para "Je suis un"
	line "important docteur!"

	para "J'étudie les"
	line "fossiles de #MON"
	cont "rares!"

	para "Toi! Aurais-tu un"
	line "fossile pour moi ?"
	done

MightTakeAWhileText:
	text "Ca pourrait me"
	line "prendre un long"
	cont "moment."

	para "Tu ne veux pas"
	line "ressusciter un"
	cont "autre fossile"
	cont "avant?"
	done

FossilScientistNoText:
	text "Oh, dommage!"

	para "Reviens quand tu"
	line "veux!"
	done

FossilScientistPartyFullText:
	text "Oh, dommage!"

	para "Ton équipe est"
	line "pleine!"
	done

FossilScientistTimeText:
	text "Celui-ci est assez"
	line "compliqué..."

	para "Ca va me prendre"
	line "un moment."

	para "Va faire un tour,"
	line "en attendant!"
	done

FossilScientistDoneText:
	text "Où étais-tu"
	line "passé?!"

	para "Ton fossile est"
	line "revenu à la vie!"
	done

FossilScientistMonText:
	text "Oh! C'est un"
	line "fossile!"
	
	para "Ce fossile est"
	line "celui de"
	cont "@"
	text_ram wStringBuffer3
	text ","
	
	para "une espèce de"
	cont "#MON éteinte!"
	
	para "Ma Machine à"
	line "Ressusciter va"
	cont "redonner vie à ce"
	cont "#MON!"
	done

FossilScientistGiveText:
	text "Alors dépêche toi"
	line "et donne moi ça!"

	para "<PLAYER> confie"
	line "le fossile."
	done

FossilScientistReceiveText:
	text "<PLAYER> reçoit"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

RuinsOfAlphResearchCenterModifiedDexText:
	text "Fini!"

	para "J'ai modifié ton"
	line "#DEX."

	para "J'ai incorporé un"
	line "autre #DEX"

	para "pour enregistrer"
	line "les données de"

	para "ZARBI dans l'ordre"
	line "où ses formes"
	cont "seront capturées."
	done

RuinsOfAlphResearchCenterDexUpgradedText:
	text "Le #DEX de"
	line "<PLAYER> est"
	cont "amélioré!"
	done

RuinsOfAlphResearchCenterScientist3Text:
	text "Les ZARBI capturés"
	line "seront tous enre-"
	cont "gistrés."

	para "Découvrez-les"
	line "tous!"
	done

RuinsOfAlphResearchCenterScientist3_PrinterAvailable:
	text "Tu as attrapé tous"
	line "les types de"
	cont "ZARBI?"

	para "Mais c'est super,"
	line "mon bouchon!"

	para "J'ai préparé l'im-"
	line "primante pour les"
	cont "données de ZARBI."

	para "Tu peux l'utiliser"
	line "quand tu veux."
	done

RuinsOfAlphResearchCenterScientist1Text:
	text "Les RUINES sont"
	line "vieilles d'environ"
	cont "1500 ans."

	para "Personne ne sait"
	line "qui a pu les"
	cont "construire..."
	cont "Ni dans quel but."
	done

RuinsOfAlphResearchCenterScientist1Text_GotUnownDex:
	text "Combien y a-t-il"
	line "de #MON diffé-"
	cont "rents dans les"
	cont "RUINES?"
	done

RuinsOfAlphResearchCenterScientist1Text_UnownAppeared:
	text "Des #MON sont"
	line "apparus dans les"
	cont "RUINES?"

	para "Bah ça pour une"
	line "nouvelle!"

	para "Il faut tout de"
	line "suite y aller!"
	done

RuinsOfAlphResearchCenterScientist1Text_GotAllUnown:
	text "Grâce à ton aide,"
	line "notre enquête sur"

	para "les RUINES donne"
	line "enfin des"
	cont "résultats."

	para "Les RUINES sem-"
	line "blent être un re-"

	para "fuge pour les"
	line "#MON."
	done

RuinsOfAlphResearchCenterScientist2Text:
	text "Il y a des figures"
	line "étranges sur les"
	cont "murs des RUINES."

	para "Elles doivent être"
	line "la clé du mystère"
	cont "des RUINES."
	done

RuinsOfAlphResearchCenterScientist2Text_UnownAppeared:
	text "Les étranges #-"
	line "MON des RUINES?"

	para "Ils semblent être"
	line "proches des figu-"
	cont "res sur les murs."

	para "Hmmm..."

	para "Cela veut dire"
	line "qu'il y en a un"
	cont "grand nombre..."
	done

RuinsOfAlphResearchCenterUnusedText1: ; unreferenced
	text "Nous pensons que"
	line "quelque chose a"

	para "fait apparaître"
	line "les signes"
	cont "dans les RUINES."

	para "Nous nous penchons"
	line "sur la question."
	done

RuinsOfAlphResearchCenterUnusedText2: ; unreferenced
	text "D'après mes"
	line "recherches..."

	para "Les étranges figu-"
	line "res sont apparues"

	para "lorsque le CENTRE"
	line "#COM a été"
	cont "construit."

	para "Les ondes radio"
	line "doivent avoir une"
	cont "influence..."
	done

RuinsOfAlphResearchCenterScientist2Text_GotAllUnown:
	text "Comment ces drôles"
	line "de figures ont pu"
	cont "apparaître?"
	cont "C'est dingue!"

	para "J'y comprends"
	line "rien..."
	done

RuinsOfAlphResearchCenterComputerText:
	text "RUINES D'ALPHA"

	para "Exploration"
	line "Année 10"
	done

RuinsOfAlphResearchCenterComputerText_GotAllUnown:
	text "#MON Mystère"
	line "Nom: ZARBI"

	para "Un total de {d:NUM_UNOWN}"
	line "types découverts."
	done

RuinsOfAlphResearchCenterPrinterText_DoesntWork:
	text "Cela n'a pas l'air"
	line "de marcher pour"
	cont "l'instant..."
	done

RuinsOfAlphResearchCenterUnownPrinterText:
	text "ZARBI peut être"
	line "imprimé."
	done

RuinsOfAlphResearchCenterProfSilktreePhotoText:
	text "C'est une photo du"
	line "fondateur du"

	para "CENTRE de RECHER-"
	line "CHE: le PROF."
	cont "LASOIE."
	done

RuinsOfAlphResearchCenterAcademicBooksText:
	text "Il y a beaucoup de"
	line "livres de science."

	para "Anciennes ruines."
	line "Antiques mystères."
	done

RuinsOfAlphResearchCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, RUINS_OF_ALPH_OUTSIDE, 6
	warp_event  3,  7, RUINS_OF_ALPH_OUTSIDE, 6

	def_coord_events

	def_bg_events
	bg_event  6,  5, BGEVENT_READ, RuinsOfAlphResearchCenterBookshelf
	bg_event  3,  4, BGEVENT_READ, RuinsOfAlphResearchCenterPC
	bg_event  7,  1, BGEVENT_READ, RuinsOfAlphResearchCenterPrinter

	def_object_events
	object_event  4,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist1Script, -1
	object_event  5,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist2Script, -1
	object_event  2,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist3Script, EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	object_event  7,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 2, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FossilScientist, -1