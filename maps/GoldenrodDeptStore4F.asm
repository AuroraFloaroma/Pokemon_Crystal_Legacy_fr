	object_const_def
	const GOLDENRODDEPTSTORE4F_CLERK
	const GOLDENRODDEPTSTORE4F_COOLTRAINER_M
	const GOLDENRODDEPTSTORE4F_BUG_CATCHER
	const GOLDENRODDEPTSTORE4F_GAMEBOY_KID

GoldenrodDeptStore4F_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodDeptStore4FClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_4F
	closetext
	end

GoldenrodDeptStore4FCooltrainerMScript:
	jumptextfaceplayer GoldenrodDeptStore4FCooltrainerMText

GoldenrodDeptStore4FBugCatcherScript:
	jumptextfaceplayer GoldenrodDeptStore4FBugCatcherText

GoldenrodDeptStore4FGameboyKidScript:
	faceplayer
	opentext
	writetext GoldenrodDeptStore4FGameboyKidText
	waitbutton
	closetext
	turnobject GOLDENRODDEPTSTORE4F_GAMEBOY_KID, DOWN
	end

GoldenrodDeptStore4FDirectory:
	jumptext GoldenrodDeptStore4FDirectoryText

GoldenrodDeptStore4FElevatorButton:
	jumpstd ElevatorButtonScript

GoldenrodDeptStore4FCooltrainerMText:
	text "Hé. Moi j'aime les"
	line "#MON qui"
	cont "sont trop forts."

	para "Je les nourris de"
	line "PROTEINE pour"
	cont "booster leur"
	cont "ATTAQUE."
	done

GoldenrodDeptStore4FBugCatcherText:
	text "Le FER augmente la"
	line "DEFENSE de tes"
	cont "#MON."
	done

GoldenrodDeptStore4FGameboyKidText:
	text "Tu sais quoi ?"

	para "J'ai entendu des"
	line "rumeurs qui disent"
	cont "que certains #MON"
	cont "n'évoluent que"
	cont "s'ils sont"
	cont "échangés via le"
	cont "câble Game Link."

	para "Mais c'est"
	line "n'importe quoi…"
	cont "Par exemple"
	cont "MACHOPEUR, KADABRA"
	cont "et SPECTRUM, ils"
	cont "évoluent en les"
	cont "faisant monter de"
	cont "niveaux ! Ah, il y"
	cont "a aussi"
	cont "GRAVALANCH."

	para "Ton #DEX te"
	line "montreras comment"
	cont "les #MON évoluent"
	cont "vraiment!"

	done

GoldenrodDeptStore4FDirectoryText:
	text "Ca fait du bien"
	line "par où ça passe!"

	para "3EME PHARMACIE"
	done

GoldenrodDeptStore4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  0, GOLDENROD_DEPT_STORE_5F, 1
	warp_event 15,  0, GOLDENROD_DEPT_STORE_3F, 2
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_READ, GoldenrodDeptStore4FDirectory
	bg_event  3,  0, BGEVENT_READ, GoldenrodDeptStore4FElevatorButton

	def_object_events
	object_event 13,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore4FClerkScript, -1
	object_event 11,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore4FCooltrainerMScript, -1
	object_event  7,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore4FBugCatcherScript, -1
	object_event  5,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore4FGameboyKidScript, -1
