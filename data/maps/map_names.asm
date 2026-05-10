MapGroupNum_Names::
	table_width 2, MapGroupNum_Names
	dw Olivine_Map_Names
	dw Mahogany_Map_Names
	dw Dungeons_Map_Names
	dw Ecruteak_Map_Names
	dw Blackthorn_Map_Names
	dw Cinnabar_Map_Names
	dw Cerulean_Map_Names
	dw Azalea_Map_Names
	dw Lake_of_Rage_Map_Names
	dw Violet_Map_Names
	dw Goldenrod_Map_Names
	dw Vermilion_Map_Names
	dw Pallet_Map_Names
	dw Pewter_Map_Names
	dw Fast_Ship_Map_Names
	dw Indigo_Map_Names
	dw Fuchsia_Map_Names
	dw Lavender_Map_Names
	dw Silver_Map_Names
	dw Cable_Club_Map_Names
	dw Celadon_Map_Names
	dw Cianwood_Map_Names
	dw Viridian_Map_Names
	dw New_Bark_Map_Names
	dw Saffron_Map_Names
	dw Cherrygrove_Map_Names
	assert_table_length NUM_MAP_GROUPS

GetMapGroupNum_Name::
	dec d ; map num
	dec e ; map group
	push de
	ld d, 0
	; ld hl, Dungeons_Map_Names
	ld hl, MapGroupNum_Names
	add hl, de
	add hl, de
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	ld h, d
	ld l, e
	pop de
	ld e, d
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	; return string ptr in de
	ret


Olivine_Map_Names: ;newgroup OLIVINE ;  1
	table_width 2, Olivine_Map_Names
	dw Olivine_Map_Name1 ; map_const OLIVINE_POKECENTER_1F ;  1
	dw Olivine_Map_Name2 ; map_const OLIVINE_GYM ;  2
	dw Olivine_Map_Name3 ; map_const OLIVINE_TIMS_HOUSE ;  3
	dw Olivine_Map_Name4 ; map_const OLIVINE_HOUSE_BETA ;  4
	dw Olivine_Map_Name5 ; map_const OLIVINE_PUNISHMENT_SPEECH_HOUSE ;  5
	dw Olivine_Map_Name6 ; map_const OLIVINE_GOOD_ROD_HOUSE ;  6
	dw Olivine_Map_Name7 ; map_const OLIVINE_CAFE ;  7
	dw Olivine_Map_Name8 ; map_const OLIVINE_MART ;  8
	dw Olivine_Map_Name9 ; map_const ROUTE_38_ECRUTEAK_GATE ;  9
	dw Olivine_Map_Name10 ; map_const ROUTE_39_BARN ; 10
	dw Olivine_Map_Name11 ; map_const ROUTE_39_FARMHOUSE ; 11
	dw Olivine_Map_Name12 ; map_const ROUTE_38, ; 12
	dw Olivine_Map_Name13 ; map_const ROUTE_39, ; 13
	dw Olivine_Map_Name14 ; map_const OLIVINE_CITY ; 14
	assert_table_length NUM_OLIVINE_MAPS

Mahogany_Map_Names: ;newgroup MAHOGANY
	table_width 2, Mahogany_Map_Names                                            ;  2
	dw Mahogany_Map_Name1 ; map_const MAHOGANY_RED_GYARADOS_SPEECH_HOUSE ;  1
	dw Mahogany_Map_Name2 ; map_const MAHOGANY_GYM ;  2
	dw Mahogany_Map_Name3 ; map_const MAHOGANY_POKECENTER_1F ;  3
	dw Mahogany_Map_Name4 ; map_const ROUTE_42_ECRUTEAK_GATE ;  4
	dw Mahogany_Map_Name5 ; map_const ROUTE_42,  ;  5
	dw Mahogany_Map_Name6 ; map_const ROUTE_44, ;  6
	dw Mahogany_Map_Name7 ; map_const MAHOGANY_TOWN,  ;  7
	assert_table_length NUM_MAHOGANY_MAPS
	

Dungeons_Map_Names: ;newgroup DUNGEONS
	table_width 2, Dungeons_Map_Names                                             ;  3
	dw Dungeons_Map_Name1 ; map_const SPROUT_TOWER_1F, ;  1
	dw Dungeons_Map_Name2 ; map_const SPROUT_TOWER_2F, ;  2
	dw Dungeons_Map_Name3 ; map_const SPROUT_TOWER_3F, ;  3
	dw Dungeons_Map_Name4 ; map_const TIN_TOWER_1F,  ;  4
	dw Dungeons_Map_Name5 ; map_const TIN_TOWER_2F,                                10,  9 ;  5
	dw Dungeons_Map_Name6 ; map_const TIN_TOWER_3F,                                10,  9 ;  6
	dw Dungeons_Map_Name7 ; map_const TIN_TOWER_4F,                                10,  9 ;  7
	dw Dungeons_Map_Name8 ; map_const TIN_TOWER_5F,                                10,  9 ;  8
	dw Dungeons_Map_Name9 ; map_const TIN_TOWER_6F,                                10,  9 ;  9
	dw Dungeons_Map_Name10 ; map_const TIN_TOWER_7F,                                10,  9 ; 10
	dw Dungeons_Map_Name11 ; map_const TIN_TOWER_8F,                                10,  9 ; 11
	dw Dungeons_Map_Name12 ; map_const TIN_TOWER_9F,                                10,  9 ; 12
	dw Dungeons_Map_Name13 ; map_const BURNED_TOWER_1F,                             10,  9 ; 13
	dw Dungeons_Map_Name14 ; map_const BURNED_TOWER_B1F,                            10,  9 ; 14
	dw Dungeons_Map_Name15 ; map_const NATIONAL_PARK,                               20, 27 ; 15
	dw Dungeons_Map_Name16 ; map_const NATIONAL_PARK_BUG_CONTEST,                   20, 27 ; 16
	dw Dungeons_Map_Name17 ; map_const RADIO_TOWER_1F ; 17
	dw Dungeons_Map_Name18 ; map_const RADIO_TOWER_2F ; 18
	dw Dungeons_Map_Name19 ; map_const RADIO_TOWER_3F ; 19
	dw Dungeons_Map_Name20 ; map_const RADIO_TOWER_4F ; 20
	dw Dungeons_Map_Name21 ; map_const RADIO_TOWER_5F ; 21
	dw Dungeons_Map_Name22 ; map_const RUINS_OF_ALPH_OUTSIDE,                       10, 18 ; 22
	dw Dungeons_Map_Name23 ; map_const RUINS_OF_ALPH_HO_OH_CHAMBER ; 23
	dw Dungeons_Map_Name24; map_const RUINS_OF_ALPH_KABUTO_CHAMBER ; 24
	dw Dungeons_Map_Name25; map_const RUINS_OF_ALPH_OMANYTE_CHAMBER ; 25
	dw Dungeons_Map_Name26 ; map_const RUINS_OF_ALPH_AERODACTYL_CHAMBER ; 26
	dw Dungeons_Map_Name27 ; map_const RUINS_OF_ALPH_INNER_CHAMBER,                 10, 14 ; 27
	dw Dungeons_Map_Name28 ; map_const RUINS_OF_ALPH_RESEARCH_CENTER ; 28
	dw Dungeons_Map_Name29 ; map_const RUINS_OF_ALPH_HO_OH_ITEM_ROOM ; 29
	dw Dungeons_Map_Name30 ; map_const RUINS_OF_ALPH_KABUTO_ITEM_ROOM ; 30
	dw Dungeons_Map_Name31 ; map_const RUINS_OF_ALPH_OMANYTE_ITEM_ROOM ; 31
	dw Dungeons_Map_Name32 ; map_const RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM ; 32
	dw Dungeons_Map_Name33 ; map_const RUINS_OF_ALPH_HO_OH_WORD_ROOM,               10, 12 ; 33
	dw Dungeons_Map_Name34 ; map_const RUINS_OF_ALPH_KABUTO_WORD_ROOM,              10,  7 ; 34
	dw Dungeons_Map_Name35 ; map_const RUINS_OF_ALPH_OMANYTE_WORD_ROOM,             10,  8 ; 35
	dw Dungeons_Map_Name36 ; map_const RUINS_OF_ALPH_AERODACTYL_WORD_ROOM,          10,  7 ; 36
	dw Dungeons_Map_Name37 ; map_const UNION_CAVE_1F,                               10, 18 ; 37
	dw Dungeons_Map_Name38 ; map_const UNION_CAVE_B1F,                              10, 18 ; 38
	dw Dungeons_Map_Name39 ; map_const UNION_CAVE_B2F,                              10, 18 ; 39
	dw Dungeons_Map_Name40 ; map_const SLOWPOKE_WELL_B1F,                           10,  9 ; 40
	dw Dungeons_Map_Name41 ; map_const SLOWPOKE_WELL_B2F,                           10,  9 ; 41
	dw Dungeons_Map_Name42 ; map_const OLIVINE_LIGHTHOUSE_1F,                       10,  9 ; 42
	dw Dungeons_Map_Name43 ; map_const OLIVINE_LIGHTHOUSE_2F,                       10,  9 ; 43
	dw Dungeons_Map_Name44 ; map_const OLIVINE_LIGHTHOUSE_3F,                       10,  9 ; 44
	dw Dungeons_Map_Name45 ; map_const OLIVINE_LIGHTHOUSE_4F,                       10,  9 ; 45
	dw Dungeons_Map_Name46 ; map_const OLIVINE_LIGHTHOUSE_5F,                       10,  9 ; 46
	dw Dungeons_Map_Name47 ; map_const OLIVINE_LIGHTHOUSE_6F,                       10,  9 ; 47
	dw Dungeons_Map_Name48 ; map_const MAHOGANY_MART_1F ; 48
	dw Dungeons_Map_Name49 ; map_const TEAM_ROCKET_BASE_B1F,                        15,  9 ; 49
	dw Dungeons_Map_Name50 ; map_const TEAM_ROCKET_BASE_B2F,                        15,  9 ; 50
	dw Dungeons_Map_Name51 ; map_const TEAM_ROCKET_BASE_B3F,                        15,  9 ; 51
	dw Dungeons_Map_Name52 ; map_const ILEX_FOREST,                                 15, 27 ; 52
	dw Dungeons_Map_Name53 ; map_const GOLDENROD_UNDERGROUND,                       15, 18 ; 53
	dw Dungeons_Map_Name54 ; map_const GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, 15, 18 ; 54
	dw Dungeons_Map_Name55 ; map_const GOLDENROD_DEPT_STORE_B1F,                    10,  9 ; 55
	dw Dungeons_Map_Name56 ; map_const GOLDENROD_UNDERGROUND_WAREHOUSE,             10,  9 ; 56
	dw Dungeons_Map_Name57 ; map_const MOUNT_MORTAR_1F_OUTSIDE,                     20, 18 ; 57
	dw Dungeons_Map_Name58 ; map_const MOUNT_MORTAR_1F_INSIDE,                      20, 27 ; 58
	dw Dungeons_Map_Name59 ; map_const MOUNT_MORTAR_2F_INSIDE,                      20, 18 ; 59
	dw Dungeons_Map_Name60 ; map_const MOUNT_MORTAR_B1F,                            20, 18 ; 60
	dw Dungeons_Map_Name61 ; map_const ICE_PATH_1F,                                 20, 18 ; 61
	dw Dungeons_Map_Name62 ; map_const ICE_PATH_B1F,                                10, 18 ; 62
	dw Dungeons_Map_Name63 ; map_const ICE_PATH_B2F_MAHOGANY_SIDE,                  10,  9 ; 63
	dw Dungeons_Map_Name64 ; map_const ICE_PATH_B2F_BLACKTHORN_SIDE ; 64
	dw Dungeons_Map_Name65 ; map_const ICE_PATH_B3F,                                10,  9 ; 65
	dw Dungeons_Map_Name66 ; map_const WHIRL_ISLAND_NW ; 66
	dw Dungeons_Map_Name67 ; map_const WHIRL_ISLAND_NE,                             10,  9 ; 67
	dw Dungeons_Map_Name68 ; map_const WHIRL_ISLAND_SW,                             10,  9 ; 68
	dw Dungeons_Map_Name69 ; map_const WHIRL_ISLAND_CAVE ; 69
	dw Dungeons_Map_Name70 ; map_const WHIRL_ISLAND_SE ; 70
	dw Dungeons_Map_Name71 ; map_const WHIRL_ISLAND_B1F,                            20, 18 ; 71
	dw Dungeons_Map_Name72 ; map_const WHIRL_ISLAND_B2F,                            10, 18 ; 72
	dw Dungeons_Map_Name73 ; map_const WHIRL_ISLAND_LUGIA_CHAMBER,                  10,  9 ; 73
	dw Dungeons_Map_Name74 ; map_const SILVER_CAVE_ROOM_1,                          10, 18 ; 74
	dw Dungeons_Map_Name75 ; map_const SILVER_CAVE_ROOM_2,                          15, 18 ; 75
	dw Dungeons_Map_Name76 ; map_const SILVER_CAVE_ROOM_3,                          10, 18 ; 76
	dw Dungeons_Map_Name77 ; map_const SILVER_CAVE_ITEM_ROOMS,                      10,  9 ; 77
	dw Dungeons_Map_Name78 ; map_const DARK_CAVE_VIOLET_ENTRANCE,                   20, 18 ; 78
	dw Dungeons_Map_Name79 ; map_const DARK_CAVE_BLACKTHORN_ENTRANCE,               15, 18 ; 79
	dw Dungeons_Map_Name80 ; map_const DRAGONS_DEN_1F ; 80
	dw Dungeons_Map_Name81 ; map_const DRAGONS_DEN_B1F,                             20, 18 ; 81
	dw Dungeons_Map_Name82 ; map_const DRAGON_SHRINE ; 82
	dw Dungeons_Map_Name83 ; map_const TOHJO_FALLS,                                 15,  9 ; 83
	dw Dungeons_Map_Name84 ; map_const DIGLETTS_CAVE,                               10, 18 ; 84
	dw Dungeons_Map_Name85 ; map_const MOUNT_MOON,                                  15,  9 ; 85
	dw Dungeons_Map_Name86 ; map_const UNDERGROUND_PATH,                             3, 14 ; 86
	dw Dungeons_Map_Name87 ; map_const ROCK_TUNNEL_1F,                              15, 18 ; 87
	dw Dungeons_Map_Name88 ; map_const ROCK_TUNNEL_B1F,                             15, 18 ; 88
	dw Dungeons_Map_Name89 ; map_const SAFARI_ZONE_FUCHSIA_GATE_BETA ; 89
	dw Dungeons_Map_Name90 ; map_const SAFARI_ZONE_BETA,                            10, 18 ; 90
	dw Dungeons_Map_Name91 ; map_const VICTORY_ROAD,; 91
	assert_table_length NUM_DUNGEONS_MAPS
	

Ecruteak_Map_Names: ;newgroup ECRUTEAK
	table_width 2, Ecruteak_Map_Names                                             ;  4
	dw Ecruteak_Map_Name1 ; map_const ECRUTEAK_TIN_TOWER_ENTRANCE,                 10,  9 ;  1
	dw Ecruteak_Map_Name2 ; map_const WISE_TRIOS_ROOM ;  2
	dw Ecruteak_Map_Name3 ; map_const ECRUTEAK_POKECENTER_1F ;  3
	dw Ecruteak_Map_Name4 ; map_const ECRUTEAK_LUGIA_SPEECH_HOUSE ;  4
	dw Ecruteak_Map_Name5 ; map_const DANCE_THEATRE ;  5
	dw Ecruteak_Map_Name6 ; map_const ECRUTEAK_MART ;  6
	dw Ecruteak_Map_Name7 ; map_const ECRUTEAK_GYM ;  7
	dw Ecruteak_Map_Name8 ; map_const ECRUTEAK_ITEMFINDER_HOUSE ;  8
	dw Ecruteak_Map_Name9 ; map_const ECRUTEAK_CITY,                               20, 18 ;  9
	assert_table_length NUM_ECRUTEAK_MAPS

Blackthorn_Map_Names: ;newgroup BLACKTHORN
	table_width 2, Blackthorn_Map_Names                                          ;  5
	dw Blackthorn_Map_Name1 ; map_const BLACKTHORN_GYM_1F ;  1
	dw Blackthorn_Map_Name2 ; map_const BLACKTHORN_GYM_2F ;  2
	dw Blackthorn_Map_Name3 ; map_const BLACKTHORN_DRAGON_SPEECH_HOUSE ;  3
	dw Blackthorn_Map_Name4 ; map_const BLACKTHORN_EMYS_HOUSE ;  4
	dw Blackthorn_Map_Name5 ; map_const BLACKTHORN_MART ;  5
	dw Blackthorn_Map_Name6 ; map_const BLACKTHORN_POKECENTER_1F ;  6
	dw Blackthorn_Map_Name7 ; map_const MOVE_DELETERS_HOUSE ;  7
	dw Blackthorn_Map_Name8 ; map_const ROUTE_45,                                    10, 45 ;  8
	dw Blackthorn_Map_Name9 ; map_const ROUTE_46,                                    10, 18 ;  9
	dw Blackthorn_Map_Name10 ; map_const BLACKTHORN_CITY,                             20, 18 ; 10
	assert_table_length NUM_BLACKTHORN_MAPS

Cinnabar_Map_Names: ;newgroup CINNABAR
	table_width 2, Cinnabar_Map_Names                                        ;  6
	dw Cinnabar_Map_Name1 ; map_const CINNABAR_POKECENTER_1F ;  1
	dw Cinnabar_Map_Name2 ; map_const CINNABAR_POKECENTER_2F_BETA ;  2
	dw Cinnabar_Map_Name3 ; map_const ROUTE_19_FUCHSIA_GATE ;  3
	dw Cinnabar_Map_Name4 ; map_const SEAFOAM_GYM ;  4
	dw Cinnabar_Map_Name5 ; map_const ROUTE_19,                                    10, 18 ;  5
	dw Cinnabar_Map_Name6 ; map_const ROUTE_20,                                    30,  9 ;  6
	dw Cinnabar_Map_Name7 ; map_const ROUTE_21,                                    10, 18 ;  7
	dw Cinnabar_Map_Name8 ; map_const CINNABAR_ISLAND,                             10,  9 ;  8
	assert_table_length NUM_CINNABAR_MAPS

Cerulean_Map_Names: ;newgroup CERULEAN
	table_width 2, Cerulean_Map_Names                                             ;  7
	dw Cerulean_Map_Name1 ; map_const CERULEAN_GYM_BADGE_SPEECH_HOUSE ;  1
	dw Cerulean_Map_Name2 ; map_const CERULEAN_POLICE_STATION ;  2
	dw Cerulean_Map_Name3 ; map_const CERULEAN_TRADE_SPEECH_HOUSE ;  3
	dw Cerulean_Map_Name4 ; map_const CERULEAN_POKECENTER_1F ;  4
	dw Cerulean_Map_Name5 ; map_const CERULEAN_POKECENTER_2F_BETA ;  5
	dw Cerulean_Map_Name6 ; map_const CERULEAN_GYM ;  6
	dw Cerulean_Map_Name7 ; map_const CERULEAN_MART ;  7
	dw Cerulean_Map_Name8 ; map_const ROUTE_10_POKECENTER_1F ;  8
	dw Cerulean_Map_Name9 ; map_const ROUTE_10_POKECENTER_2F_BETA ;  9
	dw Cerulean_Map_Name10 ; map_const POWER_PLANT,                                 10,  9 ; 10
	dw Cerulean_Map_Name11 ; map_const BILLS_HOUSE ; 11
	dw Cerulean_Map_Name12 ; map_const ROUTE_4,                                     20,  9 ; 12
	dw Cerulean_Map_Name13 ; map_const ROUTE_9,                                     30,  9 ; 13
	dw Cerulean_Map_Name14 ; map_const ROUTE_10_NORTH,                              10,  9 ; 14
	dw Cerulean_Map_Name15 ; map_const ROUTE_24,                                    10,  9 ; 15
	dw Cerulean_Map_Name16 ; map_const ROUTE_25,                                    30,  9 ; 16
	dw Cerulean_Map_Name17 ; map_const CERULEAN_CITY,                               20, 18 ; 17
	assert_table_length NUM_CERULEAN_MAPS

Azalea_Map_Names: ;newgroup AZALEA
	table_width 2, Azalea_Map_Names                                               ;  8
	dw Azalea_Map_Name1 ; map_const AZALEA_POKECENTER_1F ;  1
	dw Azalea_Map_Name2 ; map_const CHARCOAL_KILN ;  2
	dw Azalea_Map_Name3 ; map_const AZALEA_MART ;  3
	dw Azalea_Map_Name4 ; map_const KURTS_HOUSE ;  4
	dw Azalea_Map_Name5 ; map_const AZALEA_GYM ;  5
	dw Azalea_Map_Name6 ; map_const ROUTE_33,;  6
	dw Azalea_Map_Name7 ; map_const AZALEA_TOWN,;  7
	assert_table_length NUM_AZALEA_MAPS

Lake_of_Rage_Map_Names: ;newgroup LAKE_OF_RAGE
	table_width 2, Lake_of_Rage_Map_Names                                         ;  9
	dw Lake_of_Rage_Map_Name1 ; map_const LAKE_OF_RAGE_HIDDEN_POWER_HOUSE ;  1
	dw Lake_of_Rage_Map_Name2 ; map_const LAKE_OF_RAGE_MAGIKARP_HOUSE ;  2
	dw Lake_of_Rage_Map_Name3 ; map_const ROUTE_43_MAHOGANY_GATE ;  3
	dw Lake_of_Rage_Map_Name4 ; map_const ROUTE_43_GATE ;  4
	dw Lake_of_Rage_Map_Name5 ; map_const ROUTE_43,                                    10, 27 ;  5
	dw Lake_of_Rage_Map_Name6 ; map_const LAKE_OF_RAGE,                                20, 18 ;  6
	assert_table_length NUM_LAKE_OF_RAGE_MAPS

Violet_Map_Names: ;newgroup VIOLET
	table_width 2, Violet_Map_Names                                               ; 10
	dw Violet_Map_Name1 ; map_const ROUTE_32,;  1
	dw Violet_Map_Name2 ; map_const ROUTE_35,;  2
	dw Violet_Map_Name3 ; map_const ROUTE_36,;  3
	dw Violet_Map_Name4 ; map_const ROUTE_37,;  4
	dw Violet_Map_Name5 ; map_const VIOLET_CITY ; 5
	dw Violet_Map_Name6 ; map_const VIOLET_MART ;  6
	dw Violet_Map_Name7 ; map_const VIOLET_GYM ;  7
	dw Violet_Map_Name8 ; map_const EARLS_POKEMON_ACADEMY ;  8
	dw Violet_Map_Name9 ; map_const VIOLET_NICKNAME_SPEECH_HOUSE ;  9
	dw Violet_Map_Name10 ; map_const VIOLET_POKECENTER_1F ; 10
	dw Violet_Map_Name11 ; map_const VIOLET_KYLES_HOUSE ; 11
	dw Violet_Map_Name12 ; map_const ROUTE_32_RUINS_OF_ALPH_GATE ; 12
	dw Violet_Map_Name13 ; map_const ROUTE_32_POKECENTER_1F ; 13
	dw Violet_Map_Name14 ; map_const ROUTE_35_GOLDENROD_GATE ; 14
	dw Violet_Map_Name15 ; map_const ROUTE_35_NATIONAL_PARK_GATE ; 15
	dw Violet_Map_Name16 ; map_const ROUTE_36_RUINS_OF_ALPH_GATE ; 16
	dw Violet_Map_Name17 ; map_const ROUTE_36_NATIONAL_PARK_GATE ; 17
	assert_table_length NUM_VIOLET_MAPS

Goldenrod_Map_Names: ;newgroup GOLDENROD
	table_width 2, Goldenrod_Map_Names                                            ; 11
	dw Goldenrod_Map_Name1 ; map_const ROUTE_34,                                    10, 27 ;  1
	dw Goldenrod_Map_Name2 ; map_const GOLDENROD_CITY,;  2
	dw Goldenrod_Map_Name3 ; map_const GOLDENROD_GYM,                               10,  9 ;  3
	dw Goldenrod_Map_Name4 ; map_const GOLDENROD_BIKE_SHOP ;  4
	dw Goldenrod_Map_Name5 ; map_const GOLDENROD_HAPPINESS_RATER ;  5
	dw Goldenrod_Map_Name6 ; map_const BILLS_FAMILYS_HOUSE ;  6
	dw Goldenrod_Map_Name7 ; map_const GOLDENROD_MAGNET_TRAIN_STATION,              10,  9 ;  7
	dw Goldenrod_Map_Name8 ; map_const GOLDENROD_FLOWER_SHOP ;  8
	dw Goldenrod_Map_Name9 ; map_const GOLDENROD_PP_SPEECH_HOUSE ;  9
	dw Goldenrod_Map_Name10 ; map_const GOLDENROD_NAME_RATER ; 10
	dw Goldenrod_Map_Name11 ; map_const GOLDENROD_DEPT_STORE_1F ; 11
	dw Goldenrod_Map_Name12 ; map_const GOLDENROD_DEPT_STORE_2F ; 12
	dw Goldenrod_Map_Name13 ; map_const GOLDENROD_DEPT_STORE_3F ; 13
	dw Goldenrod_Map_Name14 ; map_const GOLDENROD_DEPT_STORE_4F ; 14
	dw Goldenrod_Map_Name15 ; map_const GOLDENROD_DEPT_STORE_5F ; 15
	dw Goldenrod_Map_Name16 ; map_const GOLDENROD_DEPT_STORE_6F ; 16
	dw Goldenrod_Map_Name17 ; map_const GOLDENROD_DEPT_STORE_ELEVATOR ; 17
	dw Goldenrod_Map_Name18 ; map_const GOLDENROD_DEPT_STORE_ROOF ; 18
	dw Goldenrod_Map_Name19 ; map_const GOLDENROD_GAME_CORNER,                       10,  7 ; 19
	dw Goldenrod_Map_Name20 ; map_const GOLDENROD_POKECENTER_1F ; 20
	dw Goldenrod_Map_Name21; map_const POKECOM_CENTER_ADMIN_OFFICE_MOBILE,          16, 16 ; 21
	dw Goldenrod_Map_Name22 ; map_const ILEX_FOREST_AZALEA_GATE ; 22
	dw Goldenrod_Map_Name23 ; map_const ROUTE_34_ILEX_FOREST_GATE ; 23
	dw Goldenrod_Map_Name24 ; map_const DAY_CARE ; 24
	assert_table_length NUM_GOLDENROD_MAPS

Vermilion_Map_Names: ;newgroup VERMILION
	table_width 2, Vermilion_Map_Names                                            ; 12
	dw Vermilion_Map_Name1 ; map_const ROUTE_6,                                     10,  9 ;  1
	dw Vermilion_Map_Name2 ; map_const ROUTE_11,                                    20,  9 ;  2
	dw Vermilion_Map_Name3 ; map_const VERMILION_CITY,                              20, 18 ;  3
	dw Vermilion_Map_Name4 ; map_const VERMILION_FISHING_SPEECH_HOUSE ;  4
	dw Vermilion_Map_Name5 ; map_const VERMILION_POKECENTER_1F ;  5
	dw Vermilion_Map_Name6 ; map_const VERMILION_POKECENTER_2F_BETA ;  6
	dw Vermilion_Map_Name7 ; map_const POKEMON_FAN_CLUB ;  7
	dw Vermilion_Map_Name8 ; map_const VERMILION_MAGNET_TRAIN_SPEECH_HOUSE ;  8
	dw Vermilion_Map_Name9 ; map_const VERMILION_MART ;  9
	dw Vermilion_Map_Name10 ; map_const VERMILION_DIGLETTS_CAVE_SPEECH_HOUSE ; 10
	dw Vermilion_Map_Name11 ; map_const VERMILION_GYM ; 11
	dw Vermilion_Map_Name12 ; map_const ROUTE_6_SAFFRON_GATE ; 12
	dw Vermilion_Map_Name13 ; map_const ROUTE_6_UNDERGROUND_PATH_ENTRANCE ; 13
	assert_table_length NUM_VERMILION_MAPS

Pallet_Map_Names: ;newgroup PALLET
	table_width 2, Pallet_Map_Names                                               ; 13
	dw Pallet_Map_Name1 ; map_const ROUTE_1,                                     10, 18 ;  1
	dw Pallet_Map_Name2 ; map_const PALLET_TOWN,                                 10,  9 ;  2
	dw Pallet_Map_Name3 ; map_const REDS_HOUSE_1F ;  3
	dw Pallet_Map_Name4 ; map_const REDS_HOUSE_2F ;  4
	dw Pallet_Map_Name5 ; map_const BLUES_HOUSE ;  5
	dw Pallet_Map_Name6 ; map_const OAKS_LAB ;  6
	assert_table_length NUM_PALLET_MAPS

Pewter_Map_Names: ;newgroup PEWTER
	table_width 2, Pewter_Map_Names                                               ; 14
	dw Pewter_Map_Name1 ; map_const ROUTE_3,                                     30,  9 ;  1
	dw Pewter_Map_Name2 ; map_const PEWTER_CITY,                                 20, 18 ;  2
	dw Pewter_Map_Name3 ; map_const PEWTER_NIDORAN_SPEECH_HOUSE ;  3
	dw Pewter_Map_Name4 ; map_const PEWTER_GYM ;  4
	dw Pewter_Map_Name5 ; map_const PEWTER_MART ;  5
	dw Pewter_Map_Name6 ; map_const PEWTER_POKECENTER_1F ;  6
	dw Pewter_Map_Name7 ; map_const PEWTER_POKECENTER_2F_BETA ;  7
	dw Pewter_Map_Name8 ; map_const PEWTER_SNOOZE_SPEECH_HOUSE ;  8
	assert_table_length NUM_PEWTER_MAPS

Fast_Ship_Map_Names: ;newgroup FAST_SHIP
	table_width 2, Fast_Ship_Map_Names                                            ; 15
	dw Fast_Ship_Map_Name1 ; map_const OLIVINE_PORT,                                10, 18 ;  1
	dw Fast_Ship_Map_Name2 ; map_const VERMILION_PORT,                              10, 18 ;  2
	dw Fast_Ship_Map_Name3 ; map_const FAST_SHIP_1F,                                16,  9 ;  3
	dw Fast_Ship_Map_Name4 ; map_const FAST_SHIP_CABINS_NNW_NNE_NE,                  4, 16 ;  4
	dw Fast_Ship_Map_Name5 ; map_const FAST_SHIP_CABINS_SW_SSW_NW,                   4, 16 ;  5
	dw Fast_Ship_Map_Name6 ; map_const FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN,       5, 17 ;  6
	dw Fast_Ship_Map_Name7 ; map_const FAST_SHIP_B1F,                               16,  8 ;  7
	dw Fast_Ship_Map_Name8 ; map_const OLIVINE_PORT_PASSAGE,                        10,  9 ;  8
	dw Fast_Ship_Map_Name9 ; map_const VERMILION_PORT_PASSAGE,                      10,  9 ;  9
	dw Fast_Ship_Map_Name10 ; map_const MOUNT_MOON_SQUARE,                           15,  9 ; 10
	dw Fast_Ship_Map_Name11 ; map_const MOUNT_MOON_GIFT_SHOP ; 11
	dw Fast_Ship_Map_Name12 ; map_const TIN_TOWER_ROOF,                              10,  9 ; 12
	assert_table_length NUM_FAST_SHIP_MAPS

Indigo_Map_Names: ;newgroup INDIGO
	table_width 2, Indigo_Map_Names                                               ; 16
	dw Indigo_Map_Name1 ; map_const ROUTE_23,                                    10,  9 ;  1
	dw Indigo_Map_Name2 ; map_const INDIGO_PLATEAU_POKECENTER_1F ;  2
	dw Indigo_Map_Name3 ; map_const WILLS_ROOM ;  3
	dw Indigo_Map_Name4 ; map_const KOGAS_ROOM ;  4
	dw Indigo_Map_Name5 ; map_const BRUNOS_ROOM ;  5
	dw Indigo_Map_Name6 ; map_const KARENS_ROOM ;  6
	dw Indigo_Map_Name7 ; map_const LANCES_ROOM,                                  5, 12 ;  7
	dw Indigo_Map_Name8 ; map_const HALL_OF_FAME ;  8
	assert_table_length NUM_INDIGO_MAPS

Fuchsia_Map_Names: ;newgroup FUCHSIA
	table_width 2, Fuchsia_Map_Names                                              ; 17
	dw Fuchsia_Map_Name1 ; map_const ROUTE_13,                                    30,  9 ;  1
	dw Fuchsia_Map_Name2 ; map_const ROUTE_14,                                    10, 18 ;  2
	dw Fuchsia_Map_Name3 ; map_const ROUTE_15,                                    20,  9 ;  3
	dw Fuchsia_Map_Name4 ; map_const ROUTE_18,                                    10,  9 ;  4
	dw Fuchsia_Map_Name5 ; map_const FUCHSIA_CITY,                                20, 18 ;  5
	dw Fuchsia_Map_Name6 ; map_const FUCHSIA_MART ;  6
	dw Fuchsia_Map_Name7 ; map_const SAFARI_ZONE_MAIN_OFFICE ;  7
	dw Fuchsia_Map_Name8 ; map_const FUCHSIA_GYM ;  8
	dw Fuchsia_Map_Name9 ; map_const BILLS_BROTHERS_HOUSE ;  9
	dw Fuchsia_Map_Name10 ; map_const FUCHSIA_POKECENTER_1F ; 10
	dw Fuchsia_Map_Name11 ; map_const FUCHSIA_POKECENTER_2F_BETA ; 11
	dw Fuchsia_Map_Name12 ; map_const SAFARI_ZONE_WARDENS_HOME ; 12
	dw Fuchsia_Map_Name13 ; map_const ROUTE_15_FUCHSIA_GATE ; 13
	assert_table_length NUM_FUCHSIA_MAPS

Lavender_Map_Names: ;newgroup LAVENDER
	table_width 2, Lavender_Map_Names                                            ; 18
	dw Lavender_Map_Name1 ; map_const ROUTE_8,                                     20,  9 ;  1
	dw Lavender_Map_Name2 ; map_const ROUTE_12,                                    10, 27 ;  2
	dw Lavender_Map_Name3 ; map_const ROUTE_10_SOUTH,                              10,  9 ;  3
	dw Lavender_Map_Name4 ; map_const LAVENDER_TOWN,                               10,  9 ;  4
	dw Lavender_Map_Name5 ; map_const LAVENDER_POKECENTER_1F ;  5
	dw Lavender_Map_Name6 ; map_const LAVENDER_POKECENTER_2F_BETA ;  6
	dw Lavender_Map_Name7 ; map_const MR_FUJIS_HOUSE ;  7
	dw Lavender_Map_Name8 ; map_const LAVENDER_SPEECH_HOUSE ;  8
	dw Lavender_Map_Name9 ; map_const LAVENDER_NAME_RATER ;  9
	dw Lavender_Map_Name10 ; map_const LAVENDER_MART ; 10
	dw Lavender_Map_Name11 ; map_const SOUL_HOUSE ; 11
	dw Lavender_Map_Name12 ; map_const LAV_RADIO_TOWER_1F,                          10,  4 ; 12
	dw Lavender_Map_Name13 ; map_const ROUTE_8_SAFFRON_GATE ; 13
	dw Lavender_Map_Name14 ; map_const ROUTE_12_SUPER_ROD_HOUSE ; 14
	assert_table_length NUM_LAVENDER_MAPS

Silver_Map_Names: ;newgroup SILVER
	table_width 2, Silver_Map_Names                                              ; 19
	dw Silver_Map_Name1 ; map_const ROUTE_28,                                    20,  9 ;  1
	dw Silver_Map_Name2 ; map_const SILVER_CAVE_OUTSIDE,                         20, 18 ;  2
	dw Silver_Map_Name3 ; map_const SILVER_CAVE_POKECENTER_1F ;  3
	dw Silver_Map_Name4 ; map_const ROUTE_28_STEEL_WING_HOUSE ;  4
	assert_table_length NUM_SILVER_MAPS

Cable_Club_Map_Names: ;newgroup CABLE_CLUB
	table_width 2, Cable_Club_Map_Names                                         ; 20
	dw Cable_Club_Map_Name1 ; map_const POKECENTER_2F ;  1
	dw Cable_Club_Map_Name2 ; map_const TRADE_CENTER ;  2
	dw Cable_Club_Map_Name3 ; map_const COLOSSEUM ;  3
	dw Cable_Club_Map_Name4 ; map_const TIME_CAPSULE ;  4
	dw Cable_Club_Map_Name5 ; map_const MOBILE_TRADE_ROOM ;  5
	dw Cable_Club_Map_Name6 ; map_const MOBILE_BATTLE_ROOM ;  6
	assert_table_length NUM_CABLE_CLUB_MAPS

Celadon_Map_Names: ;newgroup CELADON
	table_width 2, Celadon_Map_Names                                              ; 21
	dw Celadon_Map_Name1 ; map_const ROUTE_7,                                     10,  9 ;  1
	dw Celadon_Map_Name2 ; map_const ROUTE_16,                                    10,  9 ;  2
	dw Celadon_Map_Name3 ; map_const ROUTE_17,                                    10, 45 ;  3
	dw Celadon_Map_Name4 ; map_const CELADON_CITY,                                20, 18 ;  4
	dw Celadon_Map_Name5 ; map_const CELADON_DEPT_STORE_1F ;  5
	dw Celadon_Map_Name6 ; map_const CELADON_DEPT_STORE_2F ;  6
	dw Celadon_Map_Name7 ; map_const CELADON_DEPT_STORE_3F ;  7
	dw Celadon_Map_Name8 ; map_const CELADON_DEPT_STORE_4F ;  8
	dw Celadon_Map_Name9 ; map_const CELADON_DEPT_STORE_5F ;  9
	dw Celadon_Map_Name10 ; map_const CELADON_DEPT_STORE_6F ; 10
	dw Celadon_Map_Name11 ; map_const CELADON_DEPT_STORE_ELEVATOR ; 11
	dw Celadon_Map_Name12 ; map_const CELADON_MANSION_1F ; 12
	dw Celadon_Map_Name13 ; map_const CELADON_MANSION_2F ; 13
	dw Celadon_Map_Name14 ; map_const CELADON_MANSION_3F ; 14
	dw Celadon_Map_Name15 ; map_const CELADON_MANSION_ROOF ; 15
	dw Celadon_Map_Name16 ; map_const CELADON_MANSION_ROOF_HOUSE ; 16
	dw Celadon_Map_Name17 ; map_const CELADON_POKECENTER_1F ; 17
	dw Celadon_Map_Name18 ; map_const CELADON_POKECENTER_2F_BETA ; 18
	dw Celadon_Map_Name19 ; map_const CELADON_GAME_CORNER,                         10,  7 ; 19
	dw Celadon_Map_Name20 ; map_const CELADON_GAME_CORNER_PRIZE_ROOM ; 20
	dw Celadon_Map_Name21 ; map_const CELADON_GYM ; 21
	dw Celadon_Map_Name22 ; map_const CELADON_CAFE ; 22
	dw Celadon_Map_Name23 ; map_const ROUTE_16_FUCHSIA_SPEECH_HOUSE ; 23
	dw Celadon_Map_Name24 ; map_const ROUTE_16_GATE ; 24
	dw Celadon_Map_Name25 ; map_const ROUTE_7_SAFFRON_GATE ; 25
	dw Celadon_Map_Name26 ; map_const ROUTE_17_ROUTE_18_GATE ; 26
	assert_table_length NUM_CELADON_MAPS

Cianwood_Map_Names: ;newgroup CIANWOOD
	table_width 2, Cianwood_Map_Names                                             ; 22
	dw Cianwood_Map_Name1 ; map_const ROUTE_40,                                    10, 18 ;  1
	dw Cianwood_Map_Name2 ; map_const ROUTE_41,                                    25, 27 ;  2
	dw Cianwood_Map_Name3 ; map_const CIANWOOD_CITY,                               15, 27 ;  3
	dw Cianwood_Map_Name4 ; map_const MANIAS_HOUSE ;  4
	dw Cianwood_Map_Name5 ; map_const CIANWOOD_GYM ;  5
	dw Cianwood_Map_Name6 ; map_const CIANWOOD_POKECENTER_1F ;  6
	dw Cianwood_Map_Name7 ; map_const CIANWOOD_PHARMACY ;  7
	dw Cianwood_Map_Name8 ; map_const CIANWOOD_PHOTO_STUDIO ;  8
	dw Cianwood_Map_Name9 ; map_const CIANWOOD_LUGIA_SPEECH_HOUSE ;  9
	dw Cianwood_Map_Name10 ; map_const POKE_SEERS_HOUSE ; 10
	dw Cianwood_Map_Name11 ; map_const BATTLE_TOWER_1F ; 11
	dw Cianwood_Map_Name12 ; map_const BATTLE_TOWER_BATTLE_ROOM ; 12
	dw Cianwood_Map_Name13 ; map_const BATTLE_TOWER_ELEVATOR ; 13
	dw Cianwood_Map_Name14 ; map_const BATTLE_TOWER_HALLWAY,                        11,  2 ; 14
	dw Cianwood_Map_Name15 ; map_const ROUTE_40_BATTLE_TOWER_GATE ; 15
	dw Cianwood_Map_Name16 ; map_const BATTLE_TOWER_OUTSIDE,                        10, 14 ; 16
	assert_table_length NUM_CIANWOOD_MAPS

Viridian_Map_Names: ;newgroup VIRIDIAN ; 23
	table_width 2, Viridian_Map_Names
	dw Viridian_Map_Name1 ; map_const ROUTE_2,                                     10, 27 ;  1
	dw Viridian_Map_Name2 ; map_const ROUTE_22,                                    20,  9 ;  2
	dw Viridian_Map_Name3 ; map_const VIRIDIAN_CITY,                               20, 18 ;  3
	dw Viridian_Map_Name4 ; map_const VIRIDIAN_GYM ;  4
	dw Viridian_Map_Name5 ; map_const VIRIDIAN_NICKNAME_SPEECH_HOUSE ;  5
	dw Viridian_Map_Name6 ; map_const TRAINER_HOUSE_1F ;  6
	dw Viridian_Map_Name7 ; map_const TRAINER_HOUSE_B1F ;  7
	dw Viridian_Map_Name8 ; map_const VIRIDIAN_MART ;  8
	dw Viridian_Map_Name9 ; map_const VIRIDIAN_POKECENTER_1F ;  9
	dw Viridian_Map_Name10 ; map_const VIRIDIAN_POKECENTER_2F_BETA ; 10
	dw Viridian_Map_Name11 ; map_const ROUTE_2_NUGGET_HOUSE ; 11
	dw Viridian_Map_Name12 ; map_const ROUTE_2_GATE ; 12
	dw Viridian_Map_Name13 ; map_const VICTORY_ROAD_GATE,                           10,  9 ; 13
	assert_table_length NUM_VIRIDIAN_MAPS

	
New_Bark_Map_Names: ; newgroup NEW_BARK ; 24
	table_width 2, New_Bark_Map_Names
	dw New_Bark_Map_Name1 ; map_const ROUTE_26,                                    10, 54 ;  1
	dw New_Bark_Map_Name2 ; map_const ROUTE_27,                                    40,  9 ;  2
	dw New_Bark_Map_Name3 ; map_const ROUTE_29,                                    30,  9 ;  3
	dw New_Bark_Map_Name4 ; map_const NEW_BARK_TOWN,                               10,  9 ;  4
	dw New_Bark_Map_Name5 ; map_const ELMS_LAB ;  5
	dw New_Bark_Map_Name6 ; map_const PLAYERS_HOUSE_1F ;  6
	dw New_Bark_Map_Name7 ; map_const PLAYERS_HOUSE_2F ;  7
	dw New_Bark_Map_Name8 ; map_const PLAYERS_NEIGHBORS_HOUSE ;  8
	dw New_Bark_Map_Name9 ; map_const ELMS_HOUSE ;  9
	dw New_Bark_Map_Name10 ; map_const ROUTE_26_HEAL_HOUSE ; 10
	dw New_Bark_Map_Name11 ; map_const DAY_OF_WEEK_SIBLINGS_HOUSE ; 11
	dw New_Bark_Map_Name12 ; map_const ROUTE_27_SANDSTORM_HOUSE ; 12
	dw New_Bark_Map_Name13 ; map_const ROUTE_29_ROUTE_46_GATE ; 13
	assert_table_length NUM_NEW_BARK_MAPS


	; newgroup SAFFRON
Saffron_Map_Names: ; 25
	table_width 2, Saffron_Map_Names
	dw Saffron_Map_Name1 ; map_const ROUTE_5,                                     10,  9 ;  1
	dw Saffron_Map_Name2 ; map_const SAFFRON_CITY,                                20, 18 ;  2
	dw Saffron_Map_Name3 ; map_const FIGHTING_DOJO ;  3
	dw Saffron_Map_Name4 ; map_const SAFFRON_GYM,                                 10,  9 ;  4
	dw Saffron_Map_Name5 ; map_const SAFFRON_MART ;  5
	dw Saffron_Map_Name6 ; map_const SAFFRON_POKECENTER_1F ;  6
	dw Saffron_Map_Name7 ; map_const SAFFRON_POKECENTER_2F_BETA ;  7
	dw Saffron_Map_Name8 ; map_const MR_PSYCHICS_HOUSE ;  8
	dw Saffron_Map_Name9 ; map_const SAFFRON_MAGNET_TRAIN_STATION,                10,  9 ;  9
	dw Saffron_Map_Name10 ; map_const SILPH_CO_1F ; 10
	dw Saffron_Map_Name11 ; map_const COPYCATS_HOUSE_1F ; 11
	dw Saffron_Map_Name12 ; map_const COPYCATS_HOUSE_2F ; 12
	dw Saffron_Map_Name13 ; map_const ROUTE_5_UNDERGROUND_PATH_ENTRANCE ; 13
	dw Saffron_Map_Name14 ; map_const ROUTE_5_SAFFRON_GATE ; 14
	dw Saffron_Map_Name15 ; map_const ROUTE_5_CLEANSE_TAG_HOUSE ; 15
	assert_table_length NUM_SAFFRON_MAPS

	; CHERRYGROVE, 26
Cherrygrove_Map_Names:
	table_width 2, Cherrygrove_Map_Names
	dw Cherrygrove_Map_Name1 ; map_const ROUTE_30         ;  1
	dw Cherrygrove_Map_Name2 ; map_const ROUTE_31         ;  2
	dw Cherrygrove_Map_Name3 ; map_const CHERRYGROVE_CITY ;  3
	dw Cherrygrove_Map_Name4 ; map_const CHERRYGROVE_MART ;  4
	dw Cherrygrove_Map_Name5 ; map_const CHERRYGROVE_POKECENTER_1F ;  5
	dw Cherrygrove_Map_Name6 ; map_const CHERRYGROVE_GYM_SPEECH_HOUSE ;  6
	dw Cherrygrove_Map_Name7 ; map_const GUIDE_GENTS_HOUSE ;  7
	dw Cherrygrove_Map_Name8 ; map_const CHERRYGROVE_EVOLUTION_SPEECH_HOUSE ;  8
	dw Cherrygrove_Map_Name9 ; map_const ROUTE_30_BERRY_HOUSE ;  9
	dw Cherrygrove_Map_Name10 ; map_const MR_POKEMONS_HOUSE ; 10
	dw Cherrygrove_Map_Name11 ; map_const ROUTE_31_VIOLET_GATE ; 11
	assert_table_length NUM_CHERRYGROVE_MAPS

; MAX LENGTH: 17
Olivine_Map_Name1: ; map_const OLIVINE_POKECENTER_1F ;  1
	db "OLIVILLE<LF>CENTRE <PKMN>@"
Olivine_Map_Name2: ; map_const OLIVINE_GYM ;  2
	db "OLIVILLE<LF>ARENE@"
Olivine_Map_Name3: ; map_const OLIVINE_TIMS_HOUSE ;  3
	db "MAISON DE TIM@"																	; c'est qui tim 
Olivine_Map_Name4: ; map_const OLIVINE_HOUSE_BETA ;  4
	db "OLIVILLE<LF>MAISON@"
Olivine_Map_Name5: ; map_const OLIVINE_PUNISHMENT_SPEECH_HOUSE ;  5
	db "OLIVILLE<LF>MAISON 1@"
Olivine_Map_Name6: ; map_const OLIVINE_GOOD_ROD_HOUSE ;  6
	db "OLIVILLE<LF>MAISON 2@"
Olivine_Map_Name7: ; map_const OLIVINE_CAFE ;  7
	db "OLIVILLE<LF>CAFE@"
Olivine_Map_Name8: ; map_const OLIVINE_MART ;  8
	db "OLIVILLE<LF>BOUTIQUE <PKMN>@"
Olivine_Map_Name9: ; map_const ROUTE_38_ECRUTEAK_GATE ;  9
	db "ROUTE 38 GATE@"																	; comment je trad gate? Portique ?
Olivine_Map_Name10: ; map_const ROUTE_39_BARN ; 10
	db "ROUTE 39<LF>FERME@"
Olivine_Map_Name11: ; map_const ROUTE_39_FARMHOUSE ; 11
	db "ROUTE 39<LF>MAISON@"
Olivine_Map_Name12: ; map_const ROUTE_38, ; 12
	db "ROUTE 38@"
Olivine_Map_Name13: ; map_const ROUTE_39, ; 13
	db "ROUTE 39@"
Olivine_Map_Name14: ; map_const OLIVINE_CITY ; 14
	db "OLIVILLE@"

Mahogany_Map_Name1: ; map_const MAHOGANY_RED_GYARADOS_SPEECH_HOUSE ;  1
	db "ACAJOU<LF>MAISON@"
Mahogany_Map_Name2: ; map_const MAHOGANY_GYM ;  2
	db "ARENE D'ACAJOU@"
Mahogany_Map_Name3: ; map_const MAHOGANY_POKECENTER_1F ;  3
	db "ACAJOU<LF>CENTRE <PKMN>@"
Mahogany_Map_Name4: ; map_const ROUTE_42_ECRUTEAK_GATE ;  4
	db "ROUTE 42 GATE@"
Mahogany_Map_Name5: ; map_const ROUTE_42,  ;  5
	db "ROUTE 42@"
Mahogany_Map_Name6: ; map_const ROUTE_44, ;  6
	db "ROUTE 44@"
Mahogany_Map_Name7: ; map_const MAHOGANY_TOWN,  ;  7
	db "ACAJOU@"                              
Dungeons_Map_Name1: ; map_const SPROUT_TOWER_1F, ;  1
	db "TOUR CHETIF.  RDC@"
Dungeons_Map_Name2: ; map_const SPROUT_TOWER_2F, ;  2
	db "TOUR CHETIF.  1ER@"
Dungeons_Map_Name3: ; map_const SPROUT_TOWER_3F, ;  3
	db "TOUR CHETIF.  2ME@"
Dungeons_Map_Name4: ; map_const TIN_TOWER_1F,  ;  4
	db "TOUR CARILLON RDC@"
Dungeons_Map_Name5: ; map_const TIN_TOWER_2F,;  5
	db "TOUR CARILLON 1ER@"
Dungeons_Map_Name6: ; map_const TIN_TOWER_3F,;  6
	db "TOUR CARILLON 2EM@"
Dungeons_Map_Name7: ; map_const TIN_TOWER_4F,;  7
	db "TOUR CARILLON 3EM@"
Dungeons_Map_Name8: ; map_const TIN_TOWER_5F, ;  8
	db "TOUR CARILLON<LF>4EME ETAGE@"
Dungeons_Map_Name9: ; map_const TIN_TOWER_6F, ;  9
	db "TOUR CARILLON<LF>5EME ETAGE@"
Dungeons_Map_Name10: ; map_const TIN_TOWER_7F, ; 10
	db "TOUR CARILLON<LF>6EME ETAGE@"
Dungeons_Map_Name11: ; map_const TIN_TOWER_8F,; 11
	db "TOUR CARILLON<LF>7EME ETAGE@"
Dungeons_Map_Name12: ; map_const TIN_TOWER_9F,  ; 12
	db "TOUR CARILLON<LF>8EME ETAGE@"
Dungeons_Map_Name13: ; map_const BURNED_TOWER_1F, ; 13
	db "TOUR CENDREE  RDC@"
Dungeons_Map_Name14: ; map_const BURNED_TOWER_B1F, ; 14
	db "TOUR CENDREE  1SS@"
Dungeons_Map_Name15: ; map_const NATIONAL_PARK, ; 15
	db "PARC NATUREL@"
Dungeons_Map_Name16: ; map_const NATIONAL_PARK_BUG_CONTEST,; 16
	db "CONCOURS DE<LF>CAPTURE D'INSECTE@"
Dungeons_Map_Name17: ; map_const RADIO_TOWER_1F ; 17
	db "TOUR RADIO<LF>RDC@"
Dungeons_Map_Name18: ; map_const RADIO_TOWER_2F ; 18
	db "TOUR RADIO    1ER@"
Dungeons_Map_Name19: ; map_const RADIO_TOWER_3F ; 19
	db "TOUR RADIO    2EM@"
Dungeons_Map_Name20: ; map_const RADIO_TOWER_4F ; 20
	db "TOUR RADIO    3EM@"
Dungeons_Map_Name21: ; map_const RADIO_TOWER_5F ; 21
	db "TOUR RADIO    4EM@"
Dungeons_Map_Name22: ; map_const RUINS_OF_ALPH_OUTSIDE, ; 22
	db "RUINES D'ALPHA@"
Dungeons_Map_Name23: ; map_const RUINS_OF_ALPH_HO_OH_CHAMBER ; 23
	db "CHAMBRE HO-OH@"
Dungeons_Map_Name24: ; map_const RUINS_OF_ALPH_KABUTO_CHAMBER ; 24
	db "CHAMBRE KABUTO@"
Dungeons_Map_Name25: ; map_const RUINS_OF_ALPH_OMANYTE_CHAMBER ; 25
	db "CHAMBRE AMONITA@"
Dungeons_Map_Name26: ; map_const RUINS_OF_ALPH_AERODACTYL_CHAMBER ; 26
	db "CHAMBRE PTERA@"
Dungeons_Map_Name27: ; map_const RUINS_OF_ALPH_INNER_CHAMBE ; 27
	db "RUINES<LF>INTERIEURES@"
Dungeons_Map_Name28: ; map_const RUINS_OF_ALPH_RESEARCH_CENTER ; 28
	db "LABO DES RUINES@"
Dungeons_Map_Name29: ; map_const RUINS_OF_ALPH_HO_OH_ITEM_ROOM ; 29
	db "CHBR. PRIX HO-OH@"
Dungeons_Map_Name30: ; map_const RUINS_OF_ALPH_KABUTO_ITEM_ROOM ; 30
	db "CHBR. PRIX KABUTO@"
Dungeons_Map_Name31: ; map_const RUINS_OF_ALPH_OMANYTE_ITEM_ROOM ; 31
	db "CHBR. PRIX<LF>AMONITA@"
Dungeons_Map_Name32: ; map_const RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM ; 32
	db "CHBR. PRIX PTERA@"
Dungeons_Map_Name33: ; map_const RUINS_OF_ALPH_HO_OH_WORD_ROOM,; 33
	db "HO-OH WORD ROOM@"
Dungeons_Map_Name34: ; map_const RUINS_OF_ALPH_KABUTO_WORD_ROOM,; 34
	db "KABUTO WORD ROOM@"
Dungeons_Map_Name35: ; map_const RUINS_OF_ALPH_OMANYTE_WORD_ROOM,; 35
	db "OMANYTE WORD ROOM@"
Dungeons_Map_Name36: ; map_const RUINS_OF_ALPH_AERODACTYL_WORD_ROOM,; 36
	db "AERO WORD ROOM@"
Dungeons_Map_Name37: ; map_const UNION_CAVE_1F,; 37
	db "CAVES JUMLLS. RDC@"
Dungeons_Map_Name38: ; map_const UNION_CAVE_B1F,; 38
	db "CAVES JUMLLS. 1SS@"
Dungeons_Map_Name39: ; map_const UNION_CAVE_B2F,; 39
	db "CAVES JUMLLS. 2SS@"
Dungeons_Map_Name40: ; map_const SLOWPOKE_WELL_B1F,; 40
	db "PUITS RMLOSS. 1SS@"
Dungeons_Map_Name41: ; map_const SLOWPOKE_WELL_B2F,; 41
	db "PUITS RMLOSS. 2SS@"
Dungeons_Map_Name42: ; map_const OLIVINE_LIGHTHOUSE_1F,; 42
	db "PHARE<LF>RDC@"
Dungeons_Map_Name43: ; map_const OLIVINE_LIGHTHOUSE_2F,; 43
	db "PHARE<LF>1ER ETAGE@"
Dungeons_Map_Name44: ; map_const OLIVINE_LIGHTHOUSE_3F,; 44
	db "PHARE<LF>2EME ETAGE@"
Dungeons_Map_Name45: ; map_const OLIVINE_LIGHTHOUSE_4F,; 45
	db "PHARE<LF>3EME ETAGE@"
Dungeons_Map_Name46: ; map_const OLIVINE_LIGHTHOUSE_5F,; 46
	db "PHARE<LF>4EME ETAGE@"
Dungeons_Map_Name47: ; map_const OLIVINE_LIGHTHOUSE_6F,; 47
	db "PHARE<LF>5EME ETAGE@"
Dungeons_Map_Name48: ; map_const MAHOGANY_MART_1F ; 48
	db "ACAJOU<LF>BOUTIQUE <PKMN>@"
Dungeons_Map_Name49: ; map_const TEAM_ROCKET_BASE_B1F,; 49
	db "REPERE ROCKET<LF>1ER SOUS-SOL@"
Dungeons_Map_Name50: ; map_const TEAM_ROCKET_BASE_B2F,; 50
	db "REPERE ROCKET<LF>2EME SOUS-SOL@"
Dungeons_Map_Name51: ; map_const TEAM_ROCKET_BASE_B3F,; 51
	db "REPERE ROCKET<LF>3EME SOUS-SOL@"
Dungeons_Map_Name52: ; map_const ILEX_FOREST,; 52
	db "BOIS AUX CHENES@"
Dungeons_Map_Name53: ; map_const GOLDENROD_UNDERGROUND,; 53
	db "DOUBLON-VILLE<LF>SOUTERRAIN@"
Dungeons_Map_Name54: ; map_const GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES,; 54
	db "DOUBLON-VILLE<1F>SALLE AUX LEVIERS@"
Dungeons_Map_Name55: ; map_const GOLDENROD_DEPT_STORE_B1F,; 55
	db "DBL-VILLE  1er SS<LF>CENTRE COMMERCIAL@"
Dungeons_Map_Name56: ; map_const GOLDENROD_UNDERGROUND_WAREHOUSE,; 56
	db "DOUBLON-VILLE<LF>ENTREPOT@"
Dungeons_Map_Name57: ; map_const MOUNT_MORTAR_1F_OUTSIDE,; 57
	db "MONT CREUSET@"
Dungeons_Map_Name58: ; map_const MOUNT_MORTAR_1F_INSIDE,; 58
	db "MONT CREUSET  RDC@"
Dungeons_Map_Name59: ; map_const MOUNT_MORTAR_2F_INSIDE,; 59
	db "MONT CREUSET  1ER@"
Dungeons_Map_Name60: ; map_const MOUNT_MORTAR_B1F,; 60
	db "MONT CREUSET  1SS@"
Dungeons_Map_Name61: ; map_const ICE_PATH_1F,; 61
	db "RT. DE GLACE  RDC@"
Dungeons_Map_Name62: ; map_const ICE_PATH_B1F,; 62
	db "RT. DE GLACE  1SS@"
Dungeons_Map_Name63: ; map_const ICE_PATH_B2F_MAHOGANY_SIDE,; 63
	db "RT. GLACE   2SS O@"									;WEST
Dungeons_Map_Name64: ; map_const ICE_PATH_B2F_BLACKTHORN_SIDE ; 64
	db "RT. GLACE   2SS E@"									;EAST
Dungeons_Map_Name65: ; map_const ICE_PATH_B3F,; 65
	db "RT. DE GLACE  3SS@"
Dungeons_Map_Name66: ; map_const WHIRL_ISLAND_NW ; 66
	db "TOURB'ILES	   NO@"
Dungeons_Map_Name67: ; map_const WHIRL_ISLAND_NE,; 67
	db "TOURB'ILES     NE@"
Dungeons_Map_Name68: ; map_const WHIRL_ISLAND_SW,; 68
	db "TOURB'ILES     SO@"
Dungeons_Map_Name69: ; map_const WHIRL_ISLAND_CAVE ; 69
	db "TOURB'ILES@"
Dungeons_Map_Name70: ; map_const WHIRL_ISLAND_SE ; 70
	db "TOURB'ILES     SE@"
Dungeons_Map_Name71: ; map_const WHIRL_ISLAND_B1F,; 71
	db "TOURB'ILES    1SS@"
Dungeons_Map_Name72: ; map_const WHIRL_ISLAND_B2F,; 72
	db "TOURB'ILES    2SS@"
Dungeons_Map_Name73: ; map_const WHIRL_ISLAND_LUGIA_CHAMBER,; 73
	db "CHAMBRE DE LUGIA@"
Dungeons_Map_Name74: ; map_const SILVER_CAVE_ROOM_1,; 74
	db "GROTTE ARGENTEE 1@"
Dungeons_Map_Name75: ; map_const SILVER_CAVE_ROOM_2,; 75
	db "GROTTE ARGENTEE 2@"
Dungeons_Map_Name76: ; map_const SILVER_CAVE_ROOM_3,; 76
	db "GROTTE ARGENTEE 3@"
Dungeons_Map_Name77: ; map_const SILVER_CAVE_ITEM_ROOMS,; 77
	db "GROTTE ARGENTEE 4@"	
Dungeons_Map_Name78: ; map_const DARK_CAVE_VIOLET_ENTRANCE,; 78
	db "ANTRE NOIR OUEST @"
Dungeons_Map_Name79: ; map_const DARK_CAVE_BLACKTHORN_ENTRANCE,; 79
	db "ANTRE NOIR    EST@"
Dungeons_Map_Name80: ; map_const DRAGONS_DEN_1F ; 80
	db "ANTRE DU DRG. RDC@"
Dungeons_Map_Name81: ; map_const DRAGONS_DEN_B1F,; 81
	db "ANTRE DU DRG. 1SS@"
Dungeons_Map_Name82: ; map_const DRAGON_SHRINE ; 82
	db "SANCTUAIRE DRAGON@"
Dungeons_Map_Name83: ; map_const TOHJO_FALLS,; 83
	db "CHUTES TOHJO@"
Dungeons_Map_Name84: ; map_const DIGLETTS_CAVE,; 84
	db "CAVE TAUPIQUEUR@"
Dungeons_Map_Name85: ; map_const MOUNT_MOON,; 85
	db "MONT SELENITE@"
Dungeons_Map_Name86: ; map_const UNDERGROUND_PATH,; 86
	db "SOUTERRAIN@"
Dungeons_Map_Name87: ; map_const ROCK_TUNNEL_1F,; 87
	db "GROTTE SOMBRE RDC@"
Dungeons_Map_Name88: ; map_const ROCK_TUNNEL_B1F,; 88
	db "GROTTE SOMBRE 1SS@"
Dungeons_Map_Name89: ; map_const SAFARI_ZONE_FUCHSIA_GATE_BETA ; 89
	db "PORTAIL SAFARI@"
Dungeons_Map_Name90: ; map_const SAFARI_ZONE_BETA,; 90
	db "ZONE SAFARI@"
Dungeons_Map_Name91: ; map_const VICTORY_ROAD,;  4
	db "ROUTE VICTOIRE@"

Ecruteak_Map_Name1: ; map_const ECRUTEAK_TIN_TOWER_ENTRANCE,;  1
	db "CHEMIN VERS<LF>TOUR CARILLON@"
Ecruteak_Map_Name2: ; map_const WISE_TRIOS_ROOM ;  2
	db "SALLE DU TRIO<LF>DES SAGES@"
Ecruteak_Map_Name3: ; map_const ECRUTEAK_POKECENTER_1F ;  3
	db "ROSALIA<LF> CENTRE <PKMN>@"
Ecruteak_Map_Name4: ; map_const ECRUTEAK_LUGIA_SPEECH_HOUSE ;  4
	db "ROSALIA<LF> MAISON 1@"
Ecruteak_Map_Name5: ; map_const DANCE_THEATRE ;  5
	db "SALLE DE DANSE@"
Ecruteak_Map_Name6: ; map_const ECRUTEAK_MART ;  6
	db "ROSALIA<LF>BOUTIQUE <PKMN>@"
Ecruteak_Map_Name7: ; map_const ECRUTEAK_GYM ;  7
	db "ARENE DE ROSALIA@"
Ecruteak_Map_Name8: ; map_const ECRUTEAK_ITEMFINDER_HOUSE ;  8
	db "MAISON DU<LF>CHERCH. D'OBJETS@"
Ecruteak_Map_Name9: ; map_const ECRUTEAK_CITY,;  5
	db "ROSALIA@"

Blackthorn_Map_Name1: ; map_const BLACKTHORN_GYM_1F ;  1
	db "ARENE D'EBENELLE@"
Blackthorn_Map_Name2: ; map_const BLACKTHORN_GYM_2F ;  2
	db "ARENE D'EBENELLE<LF>1ER ETAGE@"
Blackthorn_Map_Name3: ; map_const BLACKTHORN_DRAGON_SPEECH_HOUSE ;  3
	db "DRAGON HOUSE@"
Blackthorn_Map_Name4: ; map_const BLACKTHORN_EMYS_HOUSE ;  4
	db "MAISON D'EMY@"
Blackthorn_Map_Name5: ; map_const BLACKTHORN_MART ;  5
	db "EBENELLE<LF> BOUTIQUE <PKMN>@"
Blackthorn_Map_Name6: ; map_const BLACKTHORN_POKECENTER_1F ;  6
	db "EBENELLE<LF> CENTRE <PKMN>@"
Blackthorn_Map_Name7: ; map_const MOVE_DELETERS_HOUSE ;  7
	db "EFFACEUR DE<LF>CAPACITES@"
Blackthorn_Map_Name8: ; map_const ROUTE_45,;  8
	db "ROUTE 45@"
Blackthorn_Map_Name9: ; map_const ROUTE_46,;  9
	db "ROUTE 46@"
Blackthorn_Map_Name10: ; map_const BLACKTHORN_CITY,;  6
	db "EBENELLE@"

Cinnabar_Map_Name1: ; map_const CINNABAR_POKECENTER_1F ;  1
	db "CRAMOIS'ILE<LF> CENTRE <PKMN>@"
Cinnabar_Map_Name2: ; map_const CINNABAR_POKECENTER_2F_BETA ;  2
	db "CINNABAR PC BETA@"
Cinnabar_Map_Name3: ; map_const ROUTE_19_FUCHSIA_GATE ;  3
	db "PORTE DE PARMANIE@"
Cinnabar_Map_Name4: ; map_const SEAFOAM_GYM ;  4
	db "ARENE DES<LF>ILES ECUMES@"
Cinnabar_Map_Name5: ; map_const ROUTE_19, ;  5
	db "ROUTE 19@"
Cinnabar_Map_Name6: ; map_const ROUTE_20,;  6
	db "ROUTE 20@"
Cinnabar_Map_Name7: ; map_const ROUTE_21,;  7
	db "ROUTE 21@"
Cinnabar_Map_Name8: ; map_const CINNABAR_ISLAND,;  7
	db "CRAMOIS'ILE@"

Cerulean_Map_Name1: ; map_const CERULEAN_GYM_BADGE_SPEECH_HOUSE ;  1
	db "ARUZIA<LF>MAISON 1@"
Cerulean_Map_Name2: ; map_const CERULEAN_POLICE_STATION ;  2
	db "COMMISSARIAT@"
Cerulean_Map_Name3: ; map_const CERULEAN_TRADE_SPEECH_HOUSE ;  3
	db "AZURIA<LF>MAISON 2@"
Cerulean_Map_Name4: ; map_const CERULEAN_POKECENTER_1F ;  4
	db "ARUZIA<LF> CENTRE <PKMN>@"
Cerulean_Map_Name5: ; map_const CERULEAN_POKECENTER_2F_BETA ;  5
	db "CERULEAN PC BETA@"
Cerulean_Map_Name6: ; map_const CERULEAN_GYM ;  6
	db "ARENE D'AZURIA@"
Cerulean_Map_Name7: ; map_const CERULEAN_MART ;  7
	db "ARUZIA<LF> BOUTIQUE <PKMN>@"
Cerulean_Map_Name8: ; map_const ROUTE_10_POKECENTER_1F ;  8
	db "ROUTE 10<LF> CENTRE <PKMN>@"
Cerulean_Map_Name9: ; map_const ROUTE_10_POKECENTER_2F_BETA ;  9
	db "ROUTE 10 PC BETA@"
Cerulean_Map_Name10: ; map_const POWER_PLANT,; 10
	db "CENTRALE ELEC.@"
Cerulean_Map_Name11: ; map_const BILLS_HOUSE ; 11
	db "MAISON DE LEO@"
Cerulean_Map_Name12: ; map_const ROUTE_4,; 12
	db "ROUTE 4@"
Cerulean_Map_Name13: ; map_const ROUTE_9,; 13
	db "ROUTE 9@"
Cerulean_Map_Name14: ; map_const ROUTE_10_NORTH,; 14
	db "ROUTE 10, NORD@"
Cerulean_Map_Name15: ; map_const ROUTE_24,; 15
	db "ROUTE 24@"
Cerulean_Map_Name16: ; map_const ROUTE_25,; 16
	db "ROUTE 25@"
Cerulean_Map_Name17: ; map_const CERULEAN_CITY,;  8
	db "AZURIA@"

Azalea_Map_Name1: ; map_const AZALEA_POKECENTER_1F ;  1
	db "ECORCIA<LF>CENTRE <PKMN>@"
Azalea_Map_Name2: ; map_const CHARCOAL_KILN ;  2
	db "FOUR A CHARBON@"
Azalea_Map_Name3: ; map_const AZALEA_MART ;  3
	db "ECORCIA<LF>BOUTIQUE <PKMN>@"
Azalea_Map_Name4: ; map_const KURTS_HOUSE ;  4
	db "MAISON DE FARGAS@"
Azalea_Map_Name5: ; map_const AZALEA_GYM ;  5
	db "ARENE D'ECORCIA@"
Azalea_Map_Name6: ; map_const ROUTE_33, ;  6
	db "ROUTE 33@"
Azalea_Map_Name7: ; map_const AZALEA_TOWN, ; 7
	db "ECORCIA@"

Lake_of_Rage_Map_Name1: ; map_const LAKE_OF_RAGE_HIDDEN_POWER_HOUSE ;  1
	db "MAISON<LF>PUIS. CACHEE@"
Lake_of_Rage_Map_Name2: ; map_const LAKE_OF_RAGE_MAGIKARP_HOUSE ;  2
	db "MAISON DU<LF>MAITRE PECHEUR@"
Lake_of_Rage_Map_Name3: ; map_const ROUTE_43_MAHOGANY_GATE ;  3
	db "1ERE PORTE DE LA<LF>ROUTE 43@"
Lake_of_Rage_Map_Name4: ; map_const ROUTE_43_GATE ;  4
	db "2ND PORTE DE LA<LF>ROUTE 43@"
Lake_of_Rage_Map_Name5: ; map_const ROUTE_43 ;  5
	db "ROUTE 43@"
Lake_of_Rage_Map_Name6: ; map_const LAKE_OF_RAGE ; 6
	db "LAC COLERE@"                                             ; 10

Violet_Map_Name1: ; map_const ROUTE_32,;  1
	db "ROUTE 32@"
Violet_Map_Name2: ; map_const ROUTE_35,;  2
	db "ROUTE 35@"
Violet_Map_Name3: ; map_const ROUTE_36,;  3
	db "ROUTE 36@"
Violet_Map_Name4: ; map_const ROUTE_37,;  4
	db "ROUTE 37@"
Violet_Map_Name5: ; map_const VIOLET_CITY,;  5
	db "MAUVILLE@"
Violet_Map_Name6: ; map_const VIOLET_MART ;  6
	db "MAUVILLE<LF>BOUTIQUE <PKMN>@"
Violet_Map_Name7: ; map_const VIOLET_GYM ;  7
	db "ARENE DE MAUVILLE@"
Violet_Map_Name8: ; map_const EARLS_POKEMON_ACADEMY ;  8
	db "ACADEMIE DE<LF>THEOPHILE@"
Violet_Map_Name9: ; map_const VIOLET_NICKNAME_SPEECH_HOUSE ;  9
	db "MAUVILLE<LF>MAISON 1@"
Violet_Map_Name10: ; map_const VIOLET_POKECENTER_1F ; 10
	db "MAUVILLE<LF>CENTRE <PKMN>@"
Violet_Map_Name11: ; map_const VIOLET_KYLES_HOUSE ; 11
	db "MAISON DE KYLE@"
Violet_Map_Name12: ; map_const ROUTE_32_RUINS_OF_ALPH_GATE ; 12
	db "PORTE DES<LF>RUINES D'ALPHA@"
Violet_Map_Name13: ; map_const ROUTE_32_POKECENTER_1F ; 13
	db "ROUTE 32<LF>CENTRE <PKMN>@"
Violet_Map_Name14: ; map_const ROUTE_35_GOLDENROD_GATE ; 14
	db "PORTE DE<LF>DOUBLON-VILLE@"
Violet_Map_Name15: ; map_const ROUTE_35_NATIONAL_PARK_GATE ; 15
	db "PORTE DU<LF>PARC NATUREL@"
Violet_Map_Name16: ; map_const ROUTE_36_RUINS_OF_ALPH_GATE ; 16
	db "PORTE DES<LF>RUINES D'ALPHA@"
Violet_Map_Name17: ; map_const ROUTE_36_NATIONAL_PARK_GATE ; 17                                        ; 11
	db "PORTE DU<LF>PARC NATUREL@"

Goldenrod_Map_Name1: ; map_const ROUTE_34,;  1
	db "ROUTE 34@"
Goldenrod_Map_Name2: ; map_const GOLDENROD_CITY;  2
	db "DOUBLON-VILLE@"
Goldenrod_Map_Name3: ; map_const GOLDENROD_GYM,;  3
	db "ARENE DE<LF>DOUBLON-VILLE@"
Goldenrod_Map_Name4: ; map_const GOLDENROD_BIKE_SHOP ;  4
	db "CYCLES A GOGO@"
Goldenrod_Map_Name5: ; map_const GOLDENROD_HAPPINESS_RATER ;  5
	db "DISEUSE DE<LF>BONHEUR@"
Goldenrod_Map_Name6: ; map_const BILLS_FAMILYS_HOUSE ;  6
	db "MAISON DE LA<LF>FAMILLE DE LEO@"
Goldenrod_Map_Name7: ; map_const GOLDENROD_MAGNET_TRAIN_STATION,;  7
	db "GARE DE<LF>DOUBLON-VILLE@"
Goldenrod_Map_Name8: ; map_const GOLDENROD_FLOWER_SHOP ;  8
	db "FLEURISTE@"
Goldenrod_Map_Name9: ; map_const GOLDENROD_PP_SPEECH_HOUSE ;  9
	db "DOUBLON-VILLE<LF>MAISON 1@"
Goldenrod_Map_Name10: ; map_const GOLDENROD_NAME_RATER ; 10
	db "DOUBLON-VILLE<LF>NOTEUR DE NOM@"
Goldenrod_Map_Name11: ; map_const GOLDENROD_DEPT_STORE_1F ; 11
	db "DOUBLON-VILLE<LF>CENTR.CMER. RDC@"
Goldenrod_Map_Name12: ; map_const GOLDENROD_DEPT_STORE_2F ; 12
	db "DOUBLON-VILLE<LF>CENTR.CMER. 1ER@"
Goldenrod_Map_Name13: ; map_const GOLDENROD_DEPT_STORE_3F ; 13
	db "DOUBLON-VILLE<LF>CENTR.CMER. 2EME@"
Goldenrod_Map_Name14: ; map_const GOLDENROD_DEPT_STORE_4F ; 14
	db "DOUBLON-VILLE<LF>CENTR.CMER. 3EME@"
Goldenrod_Map_Name15: ; map_const GOLDENROD_DEPT_STORE_5F ; 15
	db "DOUBLON-VILLE<LF>CENTR.CMER. 4EME@"
Goldenrod_Map_Name16: ; map_const GOLDENROD_DEPT_STORE_6F ; 16
	db "DOUBLON-VILLE<LF>CENTR.CMER. 5EME@"
Goldenrod_Map_Name17: ; map_const GOLDENROD_DEPT_STORE_ELEVATOR ; 17
	db "DOUBLON-VILLE<LF>CENTR.CMER. ACNSR@"
Goldenrod_Map_Name18: ; map_const GOLDENROD_DEPT_STORE_ROOF ; 18
	db "DOUBLON-VILLE<LF>CENTR.CMER. TOIT@"
Goldenrod_Map_Name19: ; map_const GOLDENROD_GAME_CORNER,; 19
	db "DOUBLON-VILLE<LF>CASINO@"
Goldenrod_Map_Name20: ; map_const GOLDENROD_POKECENTER_1F ; 20
	db "DOUBLON-VILLE<LF>CENTRE <PKMN>@"
Goldenrod_Map_Name21: ; map_const POKECOM_CENTER_ADMIN_OFFICE_MOBILE,; 21
	db "PC COMM OFFICE@"
Goldenrod_Map_Name22: ; map_const ILEX_FOREST_AZALEA_GATE ; 22
	db "PORTE D'ECORCIA@"
Goldenrod_Map_Name23: ; map_const ROUTE_34_ILEX_FOREST_GATE ; 23
	db "PORTE DU<LF>BOIS AUX CHENES@"
Goldenrod_Map_Name24: ; map_const DAY_CARE ; 24 ; 12
	db "PENSION <PKMN><LF>DE JOHTO@"

Vermilion_Map_Name1: ; map_const ROUTE_6,;  1
	db "ROUTE 6@"
Vermilion_Map_Name2: ; map_const ROUTE_11,;  2
	db "ROUTE 11@"
Vermilion_Map_Name3: ; map_const VERMILION_CITY, ;  3
	db "CARMIN-SUR-MER@"
Vermilion_Map_Name4: ; map_const VERMILION_FISHING_SPEECH_HOUSE ;  4
	db "CARMIN-SUR-MER<LF>MAISON 1@"
Vermilion_Map_Name5: ; map_const VERMILION_POKECENTER_1F ;  5
	db "CARMIN-SUR-MER<LF>CENTRE <PKMN>@"
Vermilion_Map_Name6: ; map_const VERMILION_POKECENTER_2F_BETA ;  6
	db "VERMILION PC BETA@"
Vermilion_Map_Name7: ; map_const POKEMON_FAN_CLUB ;  7
	db "CARMIN-SUR-MER<LF>FAN CLUB <PKMN>@"
Vermilion_Map_Name8: ; map_const VERMILION_MAGNET_TRAIN_SPEECH_HOUSE ;  8
	db "CARMIN-SUR-MER<LF>MAISON 2@"
Vermilion_Map_Name9: ; map_const VERMILION_MART ;  9
	db "CARMIN-SUR-MER<LF>BOUTIQUE <PKMN>@"
Vermilion_Map_Name10: ; map_const VERMILION_DIGLETTS_CAVE_SPEECH_HOUSE ; 10
	db "CARMIN-SUR-MER<LF>MAISON 3@"
Vermilion_Map_Name11: ; map_const VERMILION_GYM ; 11
	db "ARENE DE<LF>CARMIN-SUR-MER@"
Vermilion_Map_Name12: ; map_const ROUTE_6_SAFFRON_GATE ; 12
	db "PORTE DE SAFRANIA@"
Vermilion_Map_Name13: ; map_const ROUTE_6_UNDERGROUND_PATH_ENTRANCE ; 13
	db "ROUTE 6<LF>ENTREE SOUTERRAIN@"                                           ; 13

Pallet_Map_Name1: ; map_const ROUTE_1,;  1
	db "ROUTE 1@"
Pallet_Map_Name2: ; map_const PALLET_TOWN,;  2
	db "BOURG PALETTE@"
Pallet_Map_Name3: ; map_const REDS_HOUSE_1F ;  3
	db "MAISON DE RED<LF>RDC@"
Pallet_Map_Name4: ; map_const REDS_HOUSE_2F ;  4
	db "MAISON DE RED<LF>1EME ETAGE@"
Pallet_Map_Name5: ; map_const BLUES_HOUSE ;  5
	db "MAISON DE BLUE@"
Pallet_Map_Name6: ; map_const OAKS_LAB ;  6  ; 14
	db "LABORATOIRE DU<LF>PROF. CHEN@"

Pewter_Map_Name1: ; map_const ROUTE_3,;  1
	db "ROUTE 3@"
Pewter_Map_Name2: ; map_const PEWTER_CITY,;  2
	db "ARGENTA@"
Pewter_Map_Name3: ; map_const PEWTER_NIDORAN_SPEECH_HOUSE ;  3
	db "ARGENTA<LF>MAISON 1@"
Pewter_Map_Name4: ; map_const PEWTER_GYM ;  4
	db "ARENE D'ARGENTA@"
Pewter_Map_Name5: ; map_const PEWTER_MART ;  5
	db "ARGENTA<LF>BOUTIQUE <PKMN>@"
Pewter_Map_Name6: ; map_const PEWTER_POKECENTER_1F ;  6
	db "ARGENTA<LF>CENTRE <PKMN>@"
Pewter_Map_Name7: ; map_const PEWTER_POKECENTER_2F_BETA ;  7
	db "PEWTER PC BETA@"
Pewter_Map_Name8: ; map_const PEWTER_SNOOZE_SPEECH_HOUSE ;  8
	db "ARGENTA<LF>MAISON 2@"                                          ; 15

Fast_Ship_Map_Name1: ; map_const OLIVINE_PORT,;  1
	db "PORT D'OLIVILLE@"
Fast_Ship_Map_Name2: ; map_const VERMILION_PORT,;  2
	db "PORT DE<LF>CARMIN-SUR-MER@"
Fast_Ship_Map_Name3: ; map_const FAST_SHIP_1F,;  3
	db "AQUARIA@"
Fast_Ship_Map_Name4: ; map_const FAST_SHIP_CABINS_NNW_NNE_NE,;  4
	db "AQUARIA<LF>CABINE 1@"
Fast_Ship_Map_Name5: ; map_const FAST_SHIP_CABINS_SW_SSW_NW,;  5
	db "AQUARIA<LF>CABINE 2@"
Fast_Ship_Map_Name6: ; map_const FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN,;  6
	db "AQUARIA<LF>CABINE DU CPTN.@"
Fast_Ship_Map_Name7: ; map_const FAST_SHIP_B1F,;  7
	db "PONT D'AQUARIA@" ;C'est le pont ?
Fast_Ship_Map_Name8: ; map_const OLIVINE_PORT_PASSAGE,;  8
	db "OLIVILLE<LF>PONT D'EMBARQ.@"
Fast_Ship_Map_Name9: ; map_const VERMILION_PORT_PASSAGE,;  9
	db "CARMIN-SUR-MER<LF>PONT D'EMBARQ.@"
Fast_Ship_Map_Name10: ; map_const MOUNT_MOON_SQUARE,; 10
	db "SQUARE DU<LF>MONT SELENITE@"
Fast_Ship_Map_Name11: ; map_const MOUNT_MOON_GIFT_SHOP ; 11
	db "MONT SELENITE<LF>BOUTIQUE SOUV.@"
Fast_Ship_Map_Name12: ; map_const TIN_TOWER_ROOF, 12
	db "TOUR CARILLON<LF>TOIT@"                                             ; 16

Indigo_Map_Name1: ; map_const ROUTE_23,;  1
	db "ROUTE 23@"
Indigo_Map_Name2: ; map_const INDIGO_PLATEAU_POKECENTER_1F ;  2
	db "PLATEAU INDIGO@"
Indigo_Map_Name3: ; map_const WILLS_ROOM ;  3
	db "SALLE DE<LF>CLEMENT@"
Indigo_Map_Name4: ; map_const KOGAS_ROOM ;  4
	db "SALLE DE KOGA@"
Indigo_Map_Name5: ; map_const BRUNOS_ROOM ;  5
	db "SALLE D'ALDO@"
Indigo_Map_Name6: ; map_const KARENS_ROOM ;  6
	db "SALLE DE MARION@"
Indigo_Map_Name7: ; map_const LANCES_ROOM,;  7
	db "SALLE DE PETER@"
Indigo_Map_Name8: ; map_const HALL_OF_FAME ;  8
	db "PANTHEON@"                                           ; 17

Fuchsia_Map_Name1: ; map_const ROUTE_13,;  1
	db "ROUTE 13@"
Fuchsia_Map_Name2: ; map_const ROUTE_14,;  2
	db "ROUTE 14@"
Fuchsia_Map_Name3: ; map_const ROUTE_15,;  3
	db "ROUTE 15@"
Fuchsia_Map_Name4: ; map_const ROUTE_18,;  4
	db "ROUTE 18@"
Fuchsia_Map_Name5: ; map_const FUCHSIA_CITY,;  5
	db "PARMANIE@"
Fuchsia_Map_Name6: ; map_const FUCHSIA_MART ;  6
	db "FUCHSIA <POKE>MART@"
Fuchsia_Map_Name7: ; map_const SAFARI_ZONE_MAIN_OFFICE ;  7
	db "PARC SAFARI<LF>BUREAU@"
Fuchsia_Map_Name8: ; map_const FUCHSIA_GYM ;  8
	db "ARENE DE<LF>PARMANIE@"
Fuchsia_Map_Name9: ; map_const BILLS_BROTHERS_HOUSE ;  9
	db "MAISON DU FRERE<LF>DE LEO@"
Fuchsia_Map_Name10: ; map_const FUCHSIA_POKECENTER_1F ; 10
	db "PARMANIE<LF>CENTRE <PKMN>@"
Fuchsia_Map_Name11: ; map_const FUCHSIA_POKECENTER_2F_BETA ; 11
	db "FUCHSIA PC BETA@"
Fuchsia_Map_Name12: ; map_const SAFARI_ZONE_WARDENS_HOME ; 12
	db "WARDEN'S HOUSE@"
Fuchsia_Map_Name13: ; map_const ROUTE_15_FUCHSIA_GATE ; 13
	db "PORTE DE<LF>PARMANIE@"

Lavender_Map_Name1: ; map_const ROUTE_8,;  1
	db "ROUTE 8@"
Lavender_Map_Name2: ; map_const ROUTE_12,;  2
	db "ROUTE 12@"
Lavender_Map_Name3: ; map_const ROUTE_10_SOUTH,;  3
	db "ROUTE 10<LF>SUD@"
Lavender_Map_Name4: ; map_const LAVENDER_TOWN,;  4
	db "LAVANVILLE@"
Lavender_Map_Name5: ; map_const LAVENDER_POKECENTER_1F ;  5
	db "LAVANVILLE<LF>CENTRE <PKMN>@"
Lavender_Map_Name6: ; map_const LAVENDER_POKECENTER_2F_BETA ;  6
	db "LAVENDER PC BETA@"
Lavender_Map_Name7: ; map_const MR_FUJIS_HOUSE ;  7
	db "MAISON DE<LF>M. FUJI@"
Lavender_Map_Name8: ; map_const LAVENDER_SPEECH_HOUSE ;  8
	db "LAVANVILLE<LF>MAISON 1@"
Lavender_Map_Name9: ; map_const LAVENDER_NAME_RATER ;  9
	db "SPECIALISTE DES<LF>NOMS@"
Lavender_Map_Name10: ; map_const LAVENDER_MART ; 10
	db "LAVANVILLE<LF>BOUTIQUE <PKMN>@"
Lavender_Map_Name11: ; map_const SOUL_HOUSE ; 11
	db "SOUL HOUSE@"
Lavender_Map_Name12: ; map_const LAV_RADIO_TOWER_1F,; 12
	db "TOUR RADIO DE<LF>LAVANVILLE@"
Lavender_Map_Name13: ; map_const ROUTE_8_SAFFRON_GATE ; 13
	db "PORTE DE SAFRANIA@"
Lavender_Map_Name14: ; map_const ROUTE_12_SUPER_ROD_HOUSE ; 14
	db "ROUTE 12<LF>MAISON PECHEUR@"                                              ; 19

Silver_Map_Name1: ; map_const ROUTE_28,;  1
	db "ROUTE 28@"
Silver_Map_Name2: ; map_const SILVER_CAVE_OUTSIDE,;  2
	db "MONT ARGENTE@"	
Silver_Map_Name3: ; map_const SILVER_CAVE_POKECENTER_1F ;  3
	db "MONT ARGENTE<LF>CENTRE <PKMN>@"
Silver_Map_Name4: ; map_const ROUTE_28_STEEL_WING_HOUSE ;  4
	db "ROUTE 28<LF>CABINE@"                                       ; 20

Cable_Club_Map_Name1: ; map_const POKECENTER_2F ;  1
	db "CENTRE <PKMN><LF>2EME ETAGE@"
Cable_Club_Map_Name2: ; map_const TRADE_CENTER ;  2
	db "<PKMN> TRADE CENTER@"
Cable_Club_Map_Name3: ; map_const COLOSSEUM ;  3
	db "<PKMN> COLOSSEUM@"
Cable_Club_Map_Name4: ; map_const TIME_CAPSULE ;  4
	db "<PKMN> TIME CAPSULE@"
Cable_Club_Map_Name5: ; map_const MOBILE_TRADE_ROOM ;  5
	db "MOBILE TRADE@"
Cable_Club_Map_Name6: ; map_const MOBILE_BATTLE_ROOM ;  6
	db "MOBILE BATTLE@"                                          ; 21

Celadon_Map_Name1: ; map_const ROUTE_7,;  1
	db "ROUTE 7@"
Celadon_Map_Name2: ; map_const ROUTE_16,;  2
	db "ROUTE 16@"
Celadon_Map_Name3: ; map_const ROUTE_17,  3
	db "ROUTE 17@"
Celadon_Map_Name4: ; map_const CELADON_CITY, 4
	db "CELADOPOLE@"
Celadon_Map_Name5: ; map_const CELADON_DEPT_STORE_1F ;  5
	db "CELADOPOLE<LF>CENTR.CMER. RDC@"
Celadon_Map_Name6: ; map_const CELADON_DEPT_STORE_2F ;  6
	db "CELADOPOLE<LF>CENTR.CMER. 1ER@"
Celadon_Map_Name7: ; map_const CELADON_DEPT_STORE_3F ;  7
	db "CELADOPOLE<LF>CENTR.CMER. 2EME@"
Celadon_Map_Name8: ; map_const CELADON_DEPT_STORE_4F ;  8
	db "CELADOPOLE<LF>CENTR.CMER. 3EME@"
Celadon_Map_Name9: ; map_const CELADON_DEPT_STORE_5F ;  9
	db "CELADOPOLE<LF>CENTR.CMER. 4EME@"
Celadon_Map_Name10: ; map_const CELADON_DEPT_STORE_6F ; 10
	db "CELADOPOLE<LF>CENTR.CMER. 5EME@"
Celadon_Map_Name11: ; map_const CELADON_DEPT_STORE_ELEVATOR ; 11
	db "CELADOPOLE<LF>CENTR.CMER. ACNSR@"
Celadon_Map_Name12: ; map_const CELADON_MANSION_1F ; 12
	db "MANOIR CELADON<LF>RDC@"
Celadon_Map_Name13: ; map_const CELADON_MANSION_2F ; 13
	db "MANOIR CELADON<LF>1ER ETAGE@"
Celadon_Map_Name14: ; map_const CELADON_MANSION_3F ; 14
	db "MANOIR CELADON<LF>2EME ETAGE@"
Celadon_Map_Name15: ; map_const CELADON_MANSION_ROOF ; 15
	db "MANOIR CELADON<LF>TOIT@"
Celadon_Map_Name16: ; map_const CELADON_MANSION_ROOF_HOUSE ; 16
	db "MANOIR CELADON<LF>3EME ETAGE@"
Celadon_Map_Name17: ; map_const CELADON_POKECENTER_1F ; 17
	db "CELADOPOLE<LF>CENTRE <PKMN>@"
Celadon_Map_Name18: ; map_const CELADON_POKECENTER_2F_BETA ; 18
	db "CELADON PC BETA@"
Celadon_Map_Name19: ; map_const CELADON_GAME_CORNER, 19
	db "CELADOPOLE<LF>CASINO@"
Celadon_Map_Name20: ; map_const CELADON_GAME_CORNER_PRIZE_ROOM ; 20
	db "CELADOPOLE<LF>RECOMPENSES@"
Celadon_Map_Name21: ; map_const CELADON_GYM ; 21
	db "ARENE DE CELADOPOLE@"
Celadon_Map_Name22: ; map_const CELADON_CAFE ; 22
	db "CELADOPOLE<LF>CAFE@"
Celadon_Map_Name23: ; map_const ROUTE_16_FUCHSIA_SPEECH_HOUSE ; 23
	db "ROUTE 16<LF>MAISON@"
Celadon_Map_Name24: ; map_const ROUTE_16_GATE ; 24
	db "PORTE DE LA<LF>ROUTE 16@"
Celadon_Map_Name25: ; map_const ROUTE_7_SAFFRON_GATE ; 25
	db "PORTE DE SAFRANIA@"
Celadon_Map_Name26: ; map_const ROUTE_17_ROUTE_18_GATE ; 26 
	db "PORTE ROUTE 17-18@"                                        ; 22

Cianwood_Map_Name1: ; map_const ROUTE_40,  1
	db "ROUTE 40@"
Cianwood_Map_Name2: ; map_const ROUTE_41, ;  2
	db "ROUTE 41@"
Cianwood_Map_Name3: ; map_const CIANWOOD_CITY ;  3
	db "IRISIA@"
Cianwood_Map_Name4: ; map_const MANIAS_HOUSE ;  4
	db "MAISON DE MANIA@"
Cianwood_Map_Name5: ; map_const CIANWOOD_GYM ;  5
	db "ARENE D'IRISIA@"
Cianwood_Map_Name6: ; map_const CIANWOOD_POKECENTER_1F ;  6
	db "IRISIA<LF>CENTRE <PKMN>@"
Cianwood_Map_Name7: ; map_const CIANWOOD_PHARMACY ;  7
	db "IRISIA<LF>PHARMACIE@"
Cianwood_Map_Name8: ; map_const CIANWOOD_PHOTO_STUDIO ;  8
	db "IRISIA<LF>STUDIO PHOTO@"
Cianwood_Map_Name9: ; map_const CIANWOOD_LUGIA_SPEECH_HOUSE ;  9
	db "IRISIA<LF>MAISON@"
Cianwood_Map_Name10: ; map_const POKE_SEERS_HOUSE ; 10
	db "<POKE>SEER HOUSE@"
Cianwood_Map_Name11: ; map_const BATTLE_TOWER_1F ; 11
	db "TOUR DE COMBAT<LF>RDC@"
Cianwood_Map_Name12: ; map_const BATTLE_TOWER_BATTLE_ROOM ; 12
	db "TOUR DE COMBAT<LF>SALLE@"
Cianwood_Map_Name13: ; map_const BATTLE_TOWER_ELEVATOR ; 13
	db "TOUR DE COMBAT<LF>ASCENSEUR@"
Cianwood_Map_Name14: ; map_const BATTLE_TOWER_HALLWAY, ; 14
	db "TOUR DE COMBAT<LF>COULOIR@"
Cianwood_Map_Name15: ; map_const ROUTE_40_BATTLE_TOWER_GATE ; 15
	db "PORTE DE LA<LF>TOUR DE COMBAT@"
Cianwood_Map_Name16: ; map_const BATTLE_TOWER_OUTSIDE ; 16
	db "TOUR DE COMBAT@"

Viridian_Map_Name1: ; map_const ROUTE_2,;  1
	db "ROUTE 2@"
Viridian_Map_Name2: ; map_const ROUTE_22,  2
	db "ROUTE 22@"
Viridian_Map_Name3: ; map_const VIRIDIAN_CITY,  3
	db "JADIELLE@"
Viridian_Map_Name4: ; map_const VIRIDIAN_GYM ;  4
	db "ARENE DE JADIELLE@"
Viridian_Map_Name5: ; map_const VIRIDIAN_NICKNAME_SPEECH_HOUSE ;  5
	db "JADIELLE<LF>MAISON 2@"
Viridian_Map_Name6: ; map_const TRAINER_HOUSE_1F ;  6
	db "JADIELLE<LF>MAISON RDC@"
Viridian_Map_Name7: ; map_const TRAINER_HOUSE_B1F ;  7
	db "JADIELLE<LF>MAISON 1 SS@"
Viridian_Map_Name8: ; map_const VIRIDIAN_MART ;  8
	db "JADIELLE<LF>BOUTIQUE <PKMN>@"
Viridian_Map_Name9: ; map_const VIRIDIAN_POKECENTER_1F ;  9
	db "JADIELLE<LF>CENTRE <PKMN>@"
Viridian_Map_Name10: ; map_const VIRIDIAN_POKECENTER_2F_BETA ; 10
	db "VIRIDIAN PC BETA@"
Viridian_Map_Name11: ; map_const ROUTE_2_NUGGET_HOUSE ; 11
	db "ROUTE 2<LF>MAISON@"
Viridian_Map_Name12: ; map_const ROUTE_2_GATE ; 12
	db "PORTE DE LA<LF>ROUTE 2@"
Viridian_Map_Name13: ; map_const VICTORY_ROAD_GATE, 13
	db "PORTE DE LA<LF>ROUTE VICTOIRE@"

New_Bark_Map_Name1: ; map_const ROUTE_26,  1
	db "ROUTE 26@"
New_Bark_Map_Name2: ; map_const ROUTE_27,  2
	db "ROUTE 27@"
New_Bark_Map_Name3: ; map_const ROUTE_29, ;  3
	db "ROUTE 29@"
New_Bark_Map_Name4: ; map_const NEW_BARK_TOWN,;  4
	db "BOURG GEON@"
New_Bark_Map_Name5: ; map_const ELMS_LAB ;  5
	db "LABORATOIRE DU<LF>PROF. ORME@"
New_Bark_Map_Name6: ; map_const PLAYERS_HOUSE_1F ;  6
	db "MAISON DE MAMAN<LF>RDC@"
New_Bark_Map_Name7: ; map_const PLAYERS_HOUSE_2F ;  7
	db "MAISON DE MAMAN<LF>1ER ETAGE@"
New_Bark_Map_Name8: ; map_const PLAYERS_NEIGHBORS_HOUSE ;  8
	db "BOURG GEON<LF>MAISON@"
New_Bark_Map_Name9: ; map_const ELMS_HOUSE ;  9
	db "MAISON DU<LF>PROF. ORME@"
New_Bark_Map_Name10: ; map_const ROUTE_26_HEAL_HOUSE ; 10
	db "ROUTE 26<LF>MAISON@"
New_Bark_Map_Name11: ; map_const DAY_OF_WEEK_SIBLINGS_HOUSE ; 11
	db "MAISON DE LA<LF>FRATRIE DES SEPT@"
New_Bark_Map_Name12: ; map_const ROUTE_27_SANDSTORM_HOUSE ; 12
	db "ROUTE 27<LF>MAISON@"
New_Bark_Map_Name13: ; map_const ROUTE_29_ROUTE_46_GATE ; 13
	db "PORTE DE LA<LF>ROUTE 29@"

Saffron_Map_Name1: ; map_const ROUTE_5,;  1
	db "ROUTE 5@"
Saffron_Map_Name2: ; map_const SAFFRON_CITY ;  2
	db "SAFRANIA@"
Saffron_Map_Name3: ; map_const FIGHTING_DOJO ;  3
	db "DOJO DE COMBAT@"
Saffron_Map_Name4: ; map_const SAFFRON_GYM,  ;  4
	db "ARENE DE SAFRANIA@"
Saffron_Map_Name5: ; map_const SAFFRON_MART ;  5
	db "SAFRANIA<LF>BOUTIQUE <PKMN>@"
Saffron_Map_Name6: ; map_const SAFFRON_POKECENTER_1F ;  6
	db "SAFRANIA<LF>CENTRE <PKMN>@"
Saffron_Map_Name7: ; map_const SAFFRON_POKECENTER_2F_BETA ;  7
	db "SAFFRON PC BETA@"
Saffron_Map_Name8: ; map_const MR_PSYCHICS_HOUSE ;  8
	db "MAISON DE M. PSY@"
Saffron_Map_Name9: ; map_const SAFFRON_MAGNET_TRAIN_STATION,;  9
	db "GARE DE SAFRANIA@"
Saffron_Map_Name10: ; map_const SILPH_CO_1F ; 10
	db "SILPH SARL.@"
Saffron_Map_Name11: ; map_const COPYCATS_HOUSE_1F ; 11
	db "MAISON DE LA<LF>COPIEUSE    RDC@"
Saffron_Map_Name12: ; map_const COPYCATS_HOUSE_2F ; 12
	db "MAISON DE LA<LF>COPIEUSE    1er@"
Saffron_Map_Name13: ; map_const ROUTE_5_UNDERGROUND_PATH_ENTRANCE ; 13
	db "ROUTE 5<LF>ENTR. SOUTERRAIN@"
Saffron_Map_Name14: ; map_const ROUTE_5_SAFFRON_GATE ; 14
	db "PORTE DE SAFRANIA@"
Saffron_Map_Name15: ; map_const ROUTE_5_CLEANSE_TAG_HOUSE ; 15
	db "ROUTE 5<LF>MAISON@"

Cherrygrove_Map_Name1: ; map_const ROUTE_30         ;  1
	db "ROUTE 30@"
Cherrygrove_Map_Name2: ; map_const ROUTE_31         ;  2
	db "ROUTE 31@"
Cherrygrove_Map_Name3: ; map_const CHERRYGROVE_CITY ;  3
	db "VILLE GRIOTTE@"
Cherrygrove_Map_Name4: ; map_const CHERRYGROVE_MART ;  4
	db "VILLE GRIOTTE<LF>BOUTIQUE <PKMN>@"
Cherrygrove_Map_Name5: ; map_const CHERRYGROVE_POKECENTER_1F ;  5
	db "VILLE GRIOTTE<LF>CENTRE <PKMN>@"
Cherrygrove_Map_Name6: ; map_const CHERRYGROVE_GYM_SPEECH_HOUSE ;  6
	db "VILLE GRIOTTE<LF>MAISON 1@"
Cherrygrove_Map_Name7: ; map_const GUIDE_GENTS_HOUSE ;  7
	db "VILLE GRIOTTE<LF>MAISON DU GUIDE@"
Cherrygrove_Map_Name8: ; map_const CHERRYGROVE_EVOLUTION_SPEECH_HOUSE ;  8
	db "VILLE GRIOTTE<LF>MAISON 2@"
Cherrygrove_Map_Name9: ; map_const ROUTE_30_BERRY_HOUSE ;  9
	db "ROUTE 30<LF>MAISON BAIE@"
Cherrygrove_Map_Name10: ; map_const MR_POKEMONS_HOUSE ; 10
	db "MAISON DE<LF>M. POKEMON@"
Cherrygrove_Map_Name11: ; map_const ROUTE_31_VIOLET_GATE ; 11
	db "PORTE DE ROSALIA@"