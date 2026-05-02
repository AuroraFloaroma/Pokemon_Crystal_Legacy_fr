	object_const_def
	const OLIVINEGOODRODHOUSE_FISHING_GURU

OlivineGoodRodHouse_MapScripts:
	def_scene_scripts

	def_callbacks

GoodRodGuru:
	faceplayer
	opentext
	checkevent EVENT_GOT_GOOD_ROD
	iftrue .AlreadyGotItem
	writetext OfferGoodRodText
	yesorno
	iffalse .DontWantIt
	writetext GiveGoodRodText
	promptbutton
	verbosegiveitem GOOD_ROD
	writetext GaveGoodRodText
	waitbutton
	closetext
	setevent EVENT_GOT_GOOD_ROD
	end

.DontWantIt:
	writetext DontWantGoodRodText
	waitbutton
	closetext
	end

.AlreadyGotItem:
	writetext HaveGoodRodText
	waitbutton
	closetext
	end

GoodRodHouseBookshelf: ; unreferenced
	jumpstd PictureBookshelfScript

OfferGoodRodText:
	text "OLIVILLE est sur"
	line "la mer!"

	para "Et si c'est sur la"
	line "mer... C'est"
	cont "qu'on peut pêcher!"

	para "Ca fait 30 ans que"
	line "je pêche ici mon"
	cont "bouchon."

	para "La pêche c'est mon"
	line "hobby, même que"
	cont "des fois et bah ça"
	cont "mord... Et hop une"
	cont "chaussure trouée!"
	cont "Tu veux essayer?"
	done

GiveGoodRodText:
	text "Ah, hahah!"
	line "Et voici une"
	cont "nouvelle recrue"
	cont "dans ce hobby"
	cont "formidable!"
	done

GaveGoodRodText:
	text "Fish aren't found"
	line "in the sea alone."

	para "They go wherever"
	line "there is water."

	para "By the way,"
	line "your #DEX shows"
	cont "fishing groups for"
	cont "#MON."

	para "Different spots"
	line "have similar fish."

	para "The #GEAR shows"
	line "the fishing group"
	cont "of where you are"
	cont "currently."

	para "Check them out to"
	line "know what you"
	cont "might catch!"
	done

DontWantGoodRodText:
	text "Kkkoii? T'aimes"
	line "pas la pêche!?"
	cont "C'est pas bien!"
	done

HaveGoodRodText:
	text "Comment vont les"
	line "affaires..."
	cont "Ca roule?"
	done

OlivineGoodRodHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 6
	warp_event  3,  7, OLIVINE_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoodRodGuru, -1
