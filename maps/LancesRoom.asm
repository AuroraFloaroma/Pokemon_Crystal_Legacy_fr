	object_const_def
	const LANCESROOM_LANCE
	const LANCESROOM_MARY
	const LANCESROOM_OAK

LancesRoom_MapScripts:
	def_scene_scripts
	scene_script .LockDoor ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_LANCESROOM_APPROACH_LANCE

	def_callbacks
	callback MAPCALLBACK_TILES, .LancesRoomDoors

.LockDoor:
	sdefer .LancesDoorLocksBehindYou
	end

.DummyScene:
	end

.LancesRoomDoors:
	checkevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 22, $34 ; wall
.KeepEntranceOpen:
	checkevent EVENT_LANCES_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 0, $0b ; open door
.KeepExitClosed:
	endcallback

.LancesDoorLocksBehindYou:
	applymovement PLAYER, LancesRoom_EnterMovement
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 22, $34 ; wall
	reloadmappart
	closetext
	setscene SCENE_LANCESROOM_APPROACH_LANCE
	setevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	end

Script_ApproachLanceFromLeft:
	special FadeOutMusic
	applymovement PLAYER, MovementData_ApproachLanceFromLeft
	sjump LancesRoomLanceScript

Script_ApproachLanceFromRight:
	special FadeOutMusic
	applymovement PLAYER, MovementData_ApproachLanceFromRight
LancesRoomLanceScript:
	turnobject LANCESROOM_LANCE, LEFT
	opentext
	
	readvar VAR_BADGES
	if_less_than 16, .OriginalText1
	writetext LanceRematchBattleIntroText
	sjump .EndText1
.OriginalText1
	writetext LanceBattleIntroText
.EndText1

	waitbutton
	closetext
	winlosstext LanceBattleWinText, 0
	setlasttalked LANCESROOM_LANCE
	readvar VAR_BADGES
	if_greater_than 15, .Rematch
	loadtrainer CHAMPION, LANCE
	sjump .LoadtrainerEnd
.Rematch:
	loadtrainer CHAMPION, 2
.LoadtrainerEnd:
	checkflag ENGINE_HARD_MODE
	iffalse .normalmode_2
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
.normalmode_2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	readvar VAR_BADGES
	if_less_than 16, .NoRed
	setevent EVENT_ELITE_4_REMATCH
.NoRed
	
	checkflag ENGINE_HARD_MODE
	iffalse .DontUpdateBadge
	readvar VAR_BADGES
	if_less_than 9, .BaseCap
	if_not_equal 16, .DontUpdateBadge
	checkevent EVENT_CERULEAN_CAVE_B1F_MEWTWO
	iftrue .DontUpdateBadge
	loadmem wLevelCap, 77 ; update level cap for hard mode
	sjump .DontUpdateBadge
.BaseCap
	loadmem wLevelCap, 60 ; update level cap for hard mode
.DontUpdateBadge

	opentext
	writetext LanceBattleAfterText
	waitbutton
	closetext

; 	checkevent EVENT_BEAT_LANCE_FIRST_TIME
; 	iftrue .ZapdosAlreadyReleased
; 	setval ZAPDOS
;     special ShowPokedexEntry
; .ZapdosAlreadyReleased

	setevent EVENT_BEAT_LANCE_FIRST_TIME
	setevent EVENT_BEAT_CHAMPION_LANCE
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0b ; open door
	reloadmappart
	closetext
	setevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	musicfadeout MUSIC_BEAUTY_ENCOUNTER, 16
	pause 30
	showemote EMOTE_SHOCK, LANCESROOM_LANCE, 15
	turnobject LANCESROOM_LANCE, DOWN
	pause 10
	turnobject PLAYER, DOWN
	appear LANCESROOM_MARY
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryRushesIn
	opentext
	writetext LancesRoomMaryOhNoOakText
	waitbutton
	closetext
	appear LANCESROOM_OAK
	applymovement LANCESROOM_OAK, LancesRoomMovementData_OakWalksIn
	follow LANCESROOM_MARY, LANCESROOM_OAK
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryYieldsToOak
	stopfollow
	turnobject LANCESROOM_OAK, UP
	turnobject LANCESROOM_LANCE, LEFT
	opentext

	readvar VAR_BADGES
	if_less_than 16, .OriginalText2
	writetext LancesRoomRematchOakCongratulationsText
	sjump .EndText2
.OriginalText2
	writetext LancesRoomOakCongratulationsText
.EndText2

	waitbutton
	closetext
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryInterviewChampion
	turnobject PLAYER, LEFT
	opentext

	readvar VAR_BADGES
	if_less_than 16, .OriginalText3
	writetext LancesRoomRematchMaryInterviewText
	sjump .EndText3
.OriginalText3
	writetext LancesRoomMaryInterviewText
.EndText3

	waitbutton
	closetext
	applymovement LANCESROOM_LANCE, LancesRoomMovementData_LancePositionsSelfToGuidePlayerAway
	turnobject PLAYER, UP
	opentext
	writetext LancesRoomNoisyText
	waitbutton
	closetext
	follow LANCESROOM_LANCE, PLAYER
	turnobject LANCESROOM_MARY, UP
	turnobject LANCESROOM_OAK, UP
	applymovement LANCESROOM_LANCE, LancesRoomMovementData_LanceLeadsPlayerToHallOfFame
	stopfollow
	playsound SFX_EXIT_BUILDING
	disappear LANCESROOM_LANCE
	applymovement PLAYER, LancesRoomMovementData_PlayerExits
	playsound SFX_EXIT_BUILDING
	disappear PLAYER
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryTriesToFollow
	showemote EMOTE_SHOCK, LANCESROOM_MARY, 15
	opentext

	readvar VAR_BADGES
	if_less_than 16, .OriginalText4
	writetext LancesRoomRematchMaryNoInterviewText
	sjump .EndText4
.OriginalText4
	writetext LancesRoomMaryNoInterviewText
.EndText4
	
	pause 30
	closetext
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryRunsBackAndForth
	special FadeOutPalettes
	pause 15
	warpfacing UP, HALL_OF_FAME, 4, 13
	end

LancesRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

MovementData_ApproachLanceFromLeft:
	step UP
	step UP
	turn_head RIGHT
	step_end

MovementData_ApproachLanceFromRight:
	step UP
	step LEFT
	step UP
	turn_head RIGHT
	step_end

LancesRoomMovementData_MaryRushesIn:
	big_step UP
	big_step UP
	big_step UP
	turn_head DOWN
	step_end

LancesRoomMovementData_OakWalksIn:
	step UP
	step UP
	step_end

LancesRoomMovementData_MaryYieldsToOak:
	step LEFT
	turn_head RIGHT
	step_end

LancesRoomMovementData_MaryInterviewChampion:
	big_step UP
	turn_head RIGHT
	step_end

LancesRoomMovementData_LancePositionsSelfToGuidePlayerAway:
	step UP
	step LEFT
	turn_head DOWN
	step_end

LancesRoomMovementData_LanceLeadsPlayerToHallOfFame:
	step UP
	step_end

LancesRoomMovementData_PlayerExits:
	step UP
	step_end

LancesRoomMovementData_MaryTriesToFollow:
	step UP
	step RIGHT
	turn_head UP
	step_end

LancesRoomMovementData_MaryRunsBackAndForth:
	big_step RIGHT
	big_step RIGHT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step LEFT
	big_step LEFT
	turn_head UP
	step_end

LanceRematchBattleIntroText:
	text "Heureux de te"
	line "revoir!"

	para "Tu as déjà prouvé"
	line "ta valeur à JOHTO"
	cont "en obtenant les 8"
	cont "badges puis en me"
	cont "battant une prem-"
	cont "ière fois."

	para "Mais à présent, tu"
	line "es dans la cour"
	cont "des grands."

	para "La LIGUE de KANTO!"

	para "Une région"
	line "différente avec"
	cont "ses propres épr-"
	cont "euves et champ-"
	cont "ion·ne·s."

	para "Et nous voici de"
	line "nouveau, je serais"
	cont "ton épreuve fin-"
	cont "ale, avec une"
	cont "équipe encore plus"
	cont "forte qu'aupara-"
	cont "vant."

	para "Il s'agit ici de"
	line "ta dernière épreu-"
	cont "ve, mettant en jeu"
	cont "mon titre de"
	cont "MAITRE de KANTO."

	para "Es-tu prêt·e à"
	line "relever ce nouveau"
	cont "défi? A prouver ta"
	cont "valeur, une fois"
	cont "de plus?"

	para "Montre-moi cette"
	line "force que tu as"
	cont "déjà arborée"
	cont "autrefois pour ton"
	cont "titre de MAIT-"
	cont "RE·SSE de JOHTO!"
	done

LanceBattleIntroText:
	text "PETER:"
	line "Je t'attendais..."

	para "<PLAY_G>!"

	para "Je savais que tu"
	line "allais finir par"
	cont "arriver jusqu'ici."

	para "Il y a 3 ans, un"
	line "dresseur, tout"
	cont "comme toi, se"
	cont "tenait ici avant"
	cont "moi."

	para "Ce dresseur est"
	line "parti en quête de"
	cont "devenir le plus"
	cont "fort des deux ré-"
	cont "gions…"

	para "Mais avant ça, il"
	line "m'a accordé sa"
	cont "confiance et m'a"
	cont "confié la garde de"
	cont "la LIGUE et celle"
	cont "de ELECTHOR, l'oi-"
	cont "seau légendaire de"
	cont "la foudre."

	para "Je pense que nous"
	line "avons assez parlé"
	cont "à présent."

	para "Il est temps de"
	line "déterminer qui de"
	cont "nous deux est le·a"
	cont "plus fort·e."

	para "En tant que MAITRE"
	line "de la LIGUE…"

	para "Moi,"

	para "PETER le maître"
	line "des dragon, ac-"
	cont "cepte de relever"
	cont "ce défi!"
	done

LanceBattleWinText:
	text "...C'est fini."

	para "Je me sens..."
	line "Bizarre..."

	para "Je ne suis pas"
	line "fâché mais..."
	cont "Plutôt heureux."

	para "Heureux d'être le"
	line "témoin de la nais-"

	para "sance d'un·e"
	line "nouvelle·au"
	cont "MAITRE·ESSE!"
	done

LanceBattleAfterText:
	text "...Fouiii!"

	para "Tu as fait de gros"
	line "progrès, <PLAY_G>."

	para "Toi et tes #MON"
	line "êtes en parfaite"

	para "harmonie."
	line "C'est bien, ça."

	para "Je suis sûr que tu"
	line "continueras à"
	cont "progresser."
	done

LancesRoomMaryOhNoOakText:
	text "LULA: Oh, non!"
	line "C'est fini! PROF."

	para "CHEN, vous êtes"
	line "trop lent..."
	done

LancesRoomOakCongratulationsText:
	text "CHEN: Ah, <PLAY_G>!"
	line "Ca faisait bien"
	cont "longtemps."

	para "Tu as changé, ma"
	line "parole."

	para "Ta victoire sur la"
	line "LIGUE est ma foi"
	cont "impressionnante!"

	para "Ton amour et ton"
	line "dévouement pour"

	para "tes #MON en"
	line "sont la cause."

	para "Tes #MON ont"
	line "aussi fait du beau"
	cont "boulot."

	para "Ils ont reconnu"
	line "en toi un être"

	para "et un dresseur"
	line "d'exception."

	para "Encore bravo,"
	line "<PLAY_G>!"
	done

LancesRoomRematchOakCongratulationsText:
	text "PROF.CHEN: Ah,"
	line "<PLAY_G>!"

	para "Tu sais, j'ai"
	line "suivi ta progres-"
	cont "sion depuis que le"
	cont "PROF.ORME ta en-"
	cont "voyé à l'aventure."

	para "Et je dois dire,"
	line "tu es devenu·e"
	cont "impressionnant·e!"

	para "Conquérir la LIGUE"
	line "de JOHTO et de"
	cont "KANTO ce n'est pas"
	cont "rien, tu t'es"
	cont "clairement sur-"
	cont "passé·e!"

	para "Il est claire que"
	line "tes #MON éprou-"
	cont "vent une immense"
	cont "confiance envers"
	cont "toi, et que ce"
	cont "lien est la fon-"
	cont "dation même de"
	cont "votre succès."
	
	para "Mais garde en tête"
	line "que le voyage"
	cont "d'un·e dresseur-"
	cont "·euse n'est jamais"
	cont "vraiment terminé."

	para "Quand tu auras un"
	line "moment, viens me"
	cont "rendre visite à"
	cont "mon laboratoire."

	para "Il y a quelque"
	line "chose dont j'aime-"
	cont "rais discuter avec"
	cont "toi."

	para "Et bien évidem-"
	line "ment, féliciations"
	cont "pour ta victoire,"
	cont "<PLAY_G>!"
	done

LancesRoomMaryInterviewText:
	text "LULA: Faisons une"
	line "interview du"
	cont "nouvelle·au"
	cont "MAITRE·SSE!"
	done

LancesRoomRematchMaryInterviewText:
	text "LULA: Faisons une"
	line "interview du le·a"
	cont "nouvelle·au MAIT-"
	cont "RE·SSE!"
	done

LancesRoomNoisyText:
	text "PETER: Tout ça est"
	line "trop bruyant pour"
	cont "moi..."

	para "<PLAY_G>,"
	line "suis-moi."
	done

LancesRoomMaryNoInterviewText:
	text "LULA: Attendez!"
	line "On n'a pas encore"
	cont "fait l'interview!"
	done

LancesRoomRematchMaryNoInterviewText:
	text "LULA:"
	line "Sérieusement?"

	para "Tu peux pas me"
	line "lais- ser tomber!"
	cont "ENCORE!"
	done

LancesRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 23, KARENS_ROOM, 3
	warp_event  5, 23, KARENS_ROOM, 4
	warp_event  4,  1, HALL_OF_FAME, 1
	warp_event  5,  1, HALL_OF_FAME, 2

	def_coord_events
	coord_event  4,  5, SCENE_LANCESROOM_APPROACH_LANCE, Script_ApproachLanceFromLeft
	coord_event  5,  5, SCENE_LANCESROOM_APPROACH_LANCE, Script_ApproachLanceFromRight

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LancesRoomLanceScript, -1
	object_event  4,  7, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LANCES_ROOM_OAK_AND_MARY
	object_event  4,  7, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LANCES_ROOM_OAK_AND_MARY
