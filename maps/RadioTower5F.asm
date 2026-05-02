	object_const_def
	const RADIOTOWER5F_DIRECTOR
	const RADIOTOWER5F_ROCKET
	const RADIOTOWER5F_ROCKET_GIRL
	const RADIOTOWER5F_ROCKER
	const RADIOTOWER5F_POKE_BALL
	const RADIOTOWER5F_GIOVANNI

RadioTower5F_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_RADIOTOWER5F_ROCKET_BOSS
	scene_script .DummyScene2 ; SCENE_RADIOTOWER5F_NOTHING

	def_callbacks

.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
	end

FakeDirectorScript:
	turnobject RADIOTOWER5F_DIRECTOR, UP
	showemote EMOTE_SHOCK, RADIOTOWER5F_DIRECTOR, 15
	opentext
	writetext FakeDirectorTextBefore1
	waitbutton
	closetext
	applymovement RADIOTOWER5F_DIRECTOR, FakeDirectorMovement
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext FakeDirectorTextBefore2
	waitbutton
	closetext
	winlosstext FakeDirectorWinText, 0
	setlasttalked RADIOTOWER5F_DIRECTOR
	loadtrainer EXECUTIVEM, EXECUTIVEM_3
	checkflag ENGINE_HARD_MODE
	iffalse .normalmode_EXECUTIVEM_3
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
.normalmode_EXECUTIVEM_3
	startbattle
	reloadmapafterbattle
	opentext
	writetext FakeDirectorTextAfter
	promptbutton
	verbosegiveitem BASEMENT_KEY
	closetext
	setscene SCENE_RADIOTOWER5F_ROCKET_BOSS
	setevent EVENT_BEAT_ROCKET_EXECUTIVEM_3
	end

Director:
	faceplayer
	opentext
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .TrueDirector
	writetext FakeDirectorTextAfter
	waitbutton
	closetext
	end

.TrueDirector:
	writetext RadioTower5FDirectorText
	waitbutton
	closetext
	end

TrainerExecutivef1:
	trainer EXECUTIVEF, EXECUTIVEF_1, EVENT_BEAT_ROCKET_EXECUTIVEF_1, Executivef1SeenText, Executivef1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Executivef1AfterBattleText
	waitbutton
	closetext
	end

RadioTower5FRocketBossScene:
	applymovement PLAYER, RadioTower5FPlayerTwoStepsLeftMovement
	playmusic MUSIC_ROCKET_ENCOUNTER
	turnobject RADIOTOWER5F_ROCKET, RIGHT
	opentext
	writetext RadioTower5FRocketBossBeforeText
	waitbutton
	closetext
	winlosstext RadioTower5FRocketBossWinText, 0
	setlasttalked RADIOTOWER5F_ROCKET
	loadtrainer ROCKET_LEADER, 1
	checkflag ENGINE_HARD_MODE
	iffalse .normalmode_1
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
.normalmode_1
	startbattle
	reloadmapafterbattle
	opentext
	writetext RadioTower5FRocketBossAfterText
	waitbutton
	closetext

	; Giovanni Event
	showemote EMOTE_SHOCK, RADIOTOWER5F_ROCKET_GIRL, 10
	appear RADIOTOWER5F_GIOVANNI
	applymovement RADIOTOWER5F_GIOVANNI, GiovanniEnterenceMovement
	faceobject RADIOTOWER5F_ROCKET, RADIOTOWER5F_GIOVANNI
	showemote EMOTE_SHOCK, RADIOTOWER5F_ROCKET, 10
	faceobject PLAYER, RADIOTOWER5F_GIOVANNI
	showemote EMOTE_SHOCK, PLAYER, 10
	opentext
	writetext RadioTower5FGiovanniText1
	waitbutton

	faceobject RADIOTOWER5F_GIOVANNI, RADIOTOWER5F_ROCKET
	writetext RadioTower5FGiovanniText2
	waitbutton
	closetext

	applymovement RADIOTOWER5F_GIOVANNI, LookRightMovement
	pause 50

	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	variablesprite SPRITE_RADIOTOWER_GIOVANNI, SPRITE_GIOVANNI
	special LoadUsedSpritesGFX
	special ReloadSpritesNoPalettes
	pause 15
	special FadeInQuickly

	pause 30
	applymovement RADIOTOWER5F_GIOVANNI, LookDownMovement
	pause 50
	faceobject RADIOTOWER5F_GIOVANNI, RADIOTOWER5F_ROCKET

	opentext
	writetext RadioTower5FGiovanniText3
	waitbutton
	closetext

	applymovement RADIOTOWER5F_GIOVANNI, GiovanniMoveTowerdsExecutive
	faceobject RADIOTOWER5F_ROCKET, RADIOTOWER5F_GIOVANNI
	faceobject PLAYER, RADIOTOWER5F_GIOVANNI
	opentext
	writetext RadioTower5FGiovanniText4
	waitbutton
	closetext
	applymovement RADIOTOWER5F_GIOVANNI, LookDownMovement
	pause 50

	applymovement RADIOTOWER5F_GIOVANNI, GiovanniMoveAway
	faceobject RADIOTOWER5F_ROCKET, RADIOTOWER5F_GIOVANNI
	faceobject PLAYER, RADIOTOWER5F_GIOVANNI
	opentext
	writetext RadioTower5FGiovanniText5
	waitbutton
	closetext
	applymovement RADIOTOWER5F_GIOVANNI, RADIOTOWER_GiovanniLeavesMovement
	disappear RADIOTOWER5F_GIOVANNI

	; Archer Leaves Event
	faceobject PLAYER, RADIOTOWER5F_ROCKET
	pause 30
	applymovement RADIOTOWER5F_ROCKET, LookDownMovement
	pause 30
	applymovement RADIOTOWER5F_ROCKET, LookLeftMovement
	pause 50
	applymovement RADIOTOWER5F_ROCKET, LookDownMovement
	pause 30
	opentext
	writetext RadioTower5FRocketBossDisbandText1
	waitbutton
	closetext
	faceobject RADIOTOWER5F_ROCKET, PLAYER
	pause 50
	applymovement RADIOTOWER5F_ROCKET, LookDownMovement
	pause 30
	applymovement RADIOTOWER5F_ROCKET, ArcherMovement1
	faceobject PLAYER, RADIOTOWER5F_ROCKET
	
	opentext
	writetext RadioTower5FRocketBossDisbandText2
	waitbutton
	closetext

	applymovement RADIOTOWER5F_ROCKET, ArcherMovement2
	faceobject PLAYER, RADIOTOWER5F_ROCKET
	opentext
	writetext RadioTower5FRocketBossDisbandText3
	waitbutton
	closetext
	pause 30
	applymovement RADIOTOWER5F_ROCKET, LookRightMovement
	pause 20

	opentext
	writetext RadioTower5FRocketBossDisbandText4
	waitbutton
	closetext
	applymovement RADIOTOWER5F_ROCKET, LookDownMovement
	pause 40
	applymovement RADIOTOWER5F_ROCKET, LookRightMovement
	pause 20
	applymovement RADIOTOWER5F_ROCKET, LookUpMovement
	pause 80

	applymovement RADIOTOWER5F_ROCKET, ArcherMovement3
	opentext
	writetext RadioTower5FRocketBossDisbandText5
	waitbutton
	closetext
	pause 20

	applymovement RADIOTOWER5F_ROCKET, LookLeftMovement
	pause 50
	applymovement RADIOTOWER5F_ROCKET, LookDownMovement
	pause 50
	applymovement RADIOTOWER5F_ROCKET, ArcherMovement4
	pause 20
	opentext
	writetext RadioTower5FRocketBossDisbandText6
	waitbutton

	applymovement RADIOTOWER5F_ROCKET, LookDownMovement
	writetext RadioTower5FRocketBossDisbandText7
	waitbutton
	closetext

	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear RADIOTOWER5F_ROCKET
	disappear RADIOTOWER5F_ROCKET_GIRL
	pause 15
	special FadeInQuickly

	setevent EVENT_BEAT_ROCKET_EXECUTIVEM_1
	setevent EVENT_CLEARED_RADIO_TOWER
	clearflag ENGINE_ROCKETS_IN_RADIO_TOWER
	setevent EVENT_GOLDENROD_CITY_ROCKET_SCOUT
	setevent EVENT_GOLDENROD_CITY_ROCKET_TAKEOVER
	setevent EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	clearevent EVENT_MAHOGANY_MART_OWNERS
	clearflag ENGINE_ROCKETS_IN_MAHOGANY
	clearevent EVENT_GOLDENROD_CITY_CIVILIANS
	clearevent EVENT_RADIO_TOWER_CIVILIANS_AFTER
	setevent EVENT_BLACKTHORN_CITY_SUPER_NERD_BLOCKS_GYM
	clearevent EVENT_BLACKTHORN_CITY_SUPER_NERD_DOES_NOT_BLOCK_GYM
	special PlayMapMusic
	disappear RADIOTOWER5F_DIRECTOR
	moveobject RADIOTOWER5F_DIRECTOR, 12, 0
	appear RADIOTOWER5F_DIRECTOR
	applymovement RADIOTOWER5F_DIRECTOR, RadioTower5FDirectorWalksIn
	turnobject PLAYER, RIGHT
	opentext
	writetext RadioTower5FDirectorThankYouText
	promptbutton
	verbosegiveitem CLEAR_BELL
	writetext RadioTower5FDirectorDescribeClearBellText
	waitbutton
	closetext
	setscene SCENE_RADIOTOWER5F_NOTHING
	setmapscene ECRUTEAK_TIN_TOWER_ENTRANCE, SCENE_DEFAULT
	setevent EVENT_GOT_CLEAR_BELL
	setevent EVENT_TEAM_ROCKET_DISBANDED

	sjump .UselessJump

.UselessJump:
	applymovement RADIOTOWER5F_DIRECTOR, RadioTower5FDirectorWalksOut
	playsound SFX_EXIT_BUILDING
	disappear RADIOTOWER5F_DIRECTOR
	end

Ben:
	jumptextfaceplayer BenText

RadioTower5FUltraBall:
	itemball ULTRA_BALL

RadioTower5FDirectorsOfficeSign:
	jumptext RadioTower5FDirectorsOfficeSignText

RadioTower5FStudio1Sign:
	jumptext RadioTower5FStudio1SignText

RadioTower5FBookshelf:
	jumpstd MagazineBookshelfScript

LookUpMovement:
	turn_head UP
	step_end

LookDownMovement:
	turn_head DOWN
	step_end

LookLeftMovement:
	turn_head LEFT
	step_end

LookRightMovement:
	turn_head RIGHT
	step_end

GiovanniEnterenceMovement:
	slow_step DOWN
	slow_step DOWN
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	turn_head RIGHT
	step_end

GiovanniMoveTowerdsExecutive:
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	turn_head UP
	step_end

GiovanniMoveAway:
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step UP
	slow_step UP
	step_end

RADIOTOWER_GiovanniLeavesMovement:
	slow_step UP
	slow_step UP
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step UP
	slow_step UP
	step_end

ArcherMovement1:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

ArcherMovement2:
	slow_step UP
	slow_step UP
	step_end

ArcherMovement3:
	big_step DOWN
	step_end

ArcherMovement4:
	step LEFT
	step_end

FakeDirectorMovement:
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

RadioTower5FDirectorWalksIn:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step_end

RadioTower5FDirectorWalksOut:
	step RIGHT
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

RadioTower5FPlayerTwoStepsLeftMovement:
	step LEFT
	step LEFT
	step_end

FakeDirectorTextBefore1:
	text "T-toi! T-tu es là"
	line "pour me s-sauver?"
	done

FakeDirectorTextBefore2:
	text "Alors..."
	line "Tu t'y attendais?"

	para "Et oui! Je suis"
	line "un imposteur!"

	para "Cette mascarade"
	line "était nécessaire"

	para "à notre invasion!"
	line "Ha ha ha ha ha!"

	para "Veux-tu savoir où"
	line "est caché le vrai"
	cont "DIRECTEUR?"

	para "J'vais te le dire."
	line "Mais d'abord..."
	cont "COMBAT!!!!"
	done

FakeDirectorWinText:
	text "OK, OK. Je vais"
	line "parler."
	done

FakeDirectorTextAfter:
	text "On a planqué le"
	line "DIRECTEUR dans"

	para "l'ENTREPOT"
	line "SOUTERRAIN."

	para "C'est tout au bout"
	line "du SOUTERRAIN."

	para "Mais t'y arriveras"
	line "jamais... Ha!"
	done

Executivef1SeenText:
	text "Tu te souviens de"
	line "moi? Dans la"
	cont "PLANQUE d'ACAJOU?"

	para "J'avais perdu..."
	line "Mais cette fois..."
	done

Executivef1BeatenText:
	text "Mais c'est pas"
	line "possible!"

	para "J'me bats à fond"
	line "et je perds..."

	para "J'suis désolé"
	line "GIOVANNI..."
	done

Executivef1AfterBattleText:
	text "<PLAYER>,"
	line "c'est ça?"

	para "Une peste comme"
	line "toi ne voit pas"

	para "la grandeur de"
	line "la TEAM ROCKET."

	para "C'est dommage."
	line "Tu as pourtant du"
	cont "talent."
	done

RadioTower5FRocketBossBeforeText:
	text "Oh? Tu es déjà"
	line "là?"

	para "Tu dois avoir un"
	line "sacré talent."

	para "Nous allons con-"
	line "trôler cette STA-"

	para "TION de RADIO pour"
	line "annoncer au monde"
	cont "notre retour."

	para "Cela devrait faire"
	line "revenir notre chef"

	para "GIOVANNI de son"
	line "entraînement solo."

	para "La gloire passée"
	line "de la TEAM sera"
	cont "restituée."

	para "Et toi minable,"
	line "tu vas pas nous"
	cont "agacer longtemps."
	done

RadioTower5FRocketBossWinText:
	text "Non! Pardon,"
	line "GIOVANNI!"
	done

RadioTower5FRocketBossAfterText:
	text "How could this be?"

	para "TEAM ROCKET was"
	line "destined to rise"
	cont "again..."

	para "For GIOVANNI, for"
	line "our legacy. We"
	cont "cannot fall now!"

	para "You may have won"
	line "this battle,"

	para "but the war?"
	line "It's far from over."
	cont "You'll see."
	
	para "Our ambition, our"
	line "dream will not"
	cont "fade."

	para "The world will "
	line "fear TEAM ROCKET"
	cont "once again." 
	
	para "This is only"
	line "a setback!"
	done

RadioTower5FGiovanniText1:
	text "???:"
	line "Such conviction."

	para "Reminds me of a"
	line "time when I, too,"
	cont "was so sure."
	done

RadioTower5FGiovanniText2:
	text "You speak of"
	line "legacy,"

	para "of taking"
	line "over..."

	para "But recall,"
	line "ARCHER."

	para "Why did I choose"
	line "to disband it?"
	done

RadioTower5FGiovanniText3:
	text "GIOVANNI:"
	line "It wasn't mere"
	cont "defeat or whim,"

	para "It was an"
	line "awakening."
	
	para "See the state of"
	line "this group now."

	para "Desperate acts,"
	line "hiding."

	para "A far cry from"
	line "where we once"
	cont "stood."
	done

RadioTower5FGiovanniText4:
	text "Power isn't just"
	line "about domination."

	para "It's understanding"
	line "and respect."
	
	para "Is this the legacy"
	line "you imagined?"

	para "Reduced to"
	line "skulking in the"
	cont "shadows?"
	done

RadioTower5FGiovanniText5:
	text "Rethink this path."

	para "Do you truly see a"
	line "future for this"
	cont "TEAM ROCKET?"
	done

RadioTower5FRocketBossDisbandText1:
	text "ARCHER:"
	line "I..."

	para "I did this for"
	line "you. For the glory"
	cont "of TEAM ROCKET."

	para "All my efforts,"
	line "all these"
	cont "sacrifices."

	para "And you just..."

	para "Was it all in"
	line "vain?"

	para "Did I"
	line "misunderstand"
	cont "our purpose?"
	done

RadioTower5FRocketBossDisbandText2:
	text "You left."

	para "You vanished"
	line "without a word."

	para "We were lost."
	line "I tried to carry"
	cont "your legacy."
	done

RadioTower5FRocketBossDisbandText3:
	text "You were the"
	line "leader,"

	para "the visionary."

	para "And I..."

	para "I'm just..."
	done

RadioTower5FRocketBossDisbandText4:
	text "Was I a mere"
	line "puppet?"

	para "Chasing a dream"
	line "you never shared?"
	done

RadioTower5FRocketBossDisbandText5:
	text "But... but I can't"
	line "just let go. Not"
	cont "after everything."

	para "Do you expect me"
	line "to just walk away,"

	para "to abandon our"
	line "cause?"
	done

RadioTower5FRocketBossDisbandText6:
	text "I... I need time."
	line "I need to get out"
	cont "of here."
	done

RadioTower5FRocketBossDisbandText7:
	text "But know this,"
	line "GIOVANNI. Even if"
	cont "the path was"
	cont "wrong..."

	para "My intentions were"
	line "true!"
	done

RadioTower5FDirectorThankYouText:
	text "DIRECTEUR:"
	line "Merci <PLAY_G>!"

	para "Ton courage a"
	line "sauvé les #MON"
	cont "du monde entier."

	para "Ce n'est pas grand"
	line "chose, mais c'est"
	cont "pour toi."
	done

RadioTower5FDirectorDescribeClearBellText:
	text "Il y avait une"
	line "tour ici à DOU-"
	cont "BLONVILLE."

	para "Mais elle était"
	line "en mauvais état."

	para "On l'a alors rem-"
	line "placée par notre"
	cont "TOUR RADIO."

	para "Pendant les tra-"
	line "vaux, nous avons"
	cont "trouvé ce glas."

	para "On dit qu'une"
	line "multitude de #-"

	para "MON différents vi-"
	line "vaient ici."

	para "Alors..."

	para "Ce glas a"
	line "peut-être un lien"

	para "avec la TOUR FER-"
	line "RAILLE de ROSALIA."

	para "Ah!"

	para "Au fait..."

	para "J'ai entendu un"
	line "des types de la"
	cont "TEAM ROCKET."

	para "Apparemment, il se"
	line "passe des trucs à"
	cont "la TOUR FERRAILLE."

	para "A mon avis, tu"
	line "devrais y aller."

	para "OK, je retourne"
	line "au BUREAU."
	done

RadioTower5FDirectorText:
	text "DIRECTEUR: Salut,"
	line "<PLAY_G>!"

	para "Tu sais, j'adore"
	line "les #MON."

	para "J'ai construit"
	line "cette TOUR RADIO"

	para "pour crier au mon-"
	line "de mon amour."

	para "Mais les gens"
	line "aiment-ils nos"
	cont "émissions?"
	done

BenText:
	text "BEN: Tu écoutes"
	line "notre musique?"
	done

RadioTower5FDirectorsOfficeSignText:
	text "4EME BUREAU"
	line "     DIRECTION"
	done

RadioTower5FStudio1SignText:
	text "4EME STUDIO 1"
	done

RadioTower5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_4F, 1
	warp_event 12,  0, RADIO_TOWER_4F, 3

	def_coord_events
	coord_event  0,  3, SCENE_DEFAULT, FakeDirectorScript
	coord_event 16,  5, SCENE_RADIOTOWER5F_ROCKET_BOSS, RadioTower5FRocketBossScene

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, RadioTower5FDirectorsOfficeSign
	bg_event 11,  0, BGEVENT_READ, RadioTower5FStudio1Sign
	bg_event 15,  0, BGEVENT_READ, RadioTower5FStudio1Sign
	bg_event 16,  1, BGEVENT_READ, RadioTower5FBookshelf
	bg_event 17,  1, BGEVENT_READ, RadioTower5FBookshelf

	def_object_events
	object_event  3,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Director, -1
	object_event 13,  5, SPRITE_ARCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 17,  2, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerExecutivef1, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 13,  5, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Ben, EVENT_RADIO_TOWER_CIVILIANS_AFTER
	object_event  8,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RadioTower5FUltraBall, EVENT_RADIO_TOWER_5F_ULTRA_BALL
	object_event 12,  0, SPRITE_RADIOTOWER_GIOVANNI, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GIOVANNI_RADIOTOWER
