; This is in the "rando" namespace.
;
; The data in this file will be modified by the randomizer. (It should not modify the collect mode,
; only the treasure object.)
;
; Data Format:
;   dwbe <Treasure Object Index>
;   .db <Collect Mode>
;   .dw <Function to run upon getting the item, or $0000>
;
; Misc notes:
; - COLLECT_MODE_FALL will be changed to COLLECT_MODE_FALL_KEY if the item in the slot is a small
;   key (uses "TREASURE_COLLECT_MODE_NO_CHANGE"). Also, the key won't have its text shown. This is
;   done in the disassembly code.


.ifdef ROM_SEASONS


; ==============================================================================
; Horon Village
; ==============================================================================

seasonsSlot_makuTree:
	dwbe TREASURE_OBJECT_GNARLED_KEY_00
	.db  COLLECT_MODE_FALL
	.dw  seasonsSlotCallback_makuTree

seasonsSlot_horonVillageSWChest:
	dwbe TREASURE_OBJECT_RUPEES_03
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_horonVillageSEChest:
	dwbe TREASURE_OBJECT_RUPEES_03
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_shop150Rupees:
	dwbe TREASURE_OBJECT_FLUTE_00
	.db  $00
	.dw  $0000

seasonsSlot_membersShop1:
	dwbe TREASURE_OBJECT_SEED_SATCHEL_00
	.db  $00
	.dw  $0000

seasonsSlot_membersShop2:
	dwbe TREASURE_OBJECT_GASHA_SEED_00
	.db  $00
	.dw  $0000

seasonsSlot_membersShop3:
	dwbe TREASURE_OBJECT_TREASURE_MAP_00
	.db  $00
	.dw  $0000

; ==============================================================================
; Western Coast
; ==============================================================================

seasonsSlot_blackBeastsChest:
	dwbe TREASURE_OBJECT_X_SHAPED_JEWEL_00
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_westernCoastBeachChest:
	dwbe TREASURE_OBJECT_RING_07
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_westernCoastInHouse:
	dwbe TREASURE_OBJECT_BOMBS_00
	.db  COLLECT_MODE_CHEST
	.dw  $0000

; ==============================================================================
; Eastern Suburbs / Woods of Winter
; ==============================================================================

seasonsSlot_woodsOfWinter1stCave:
	dwbe TREASURE_OBJECT_RUPEES_04
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_woodsOfWinter2ndCave:
	dwbe TREASURE_OBJECT_GASHA_SEED_01
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_hollysHouse:
	dwbe TREASURE_OBJECT_SHOVEL_00
	.db  COLLECT_MODE_PICKUP_2HAND
	.dw  $0000

seasonsSlot_chestOnTopOfD2:
	dwbe TREASURE_OBJECT_GASHA_SEED_01
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_caveOutsideD2:
	dwbe TREASURE_OBJECT_RING_05
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_easternSuburbsOnCliff:
	dwbe TREASURE_OBJECT_GASHA_SEED_01
	.db  COLLECT_MODE_CHEST
	.dw  $0000

; ==============================================================================
; Samasa Desert
; ==============================================================================

seasonsSlot_samasaDesertPit:
	dwbe TREASURE_OBJECT_PIRATES_BELL_00
	.db  COLLECT_MODE_PICKUP_2HAND
	.dw  $0000

seasonsSlot_samasaDesertChest:
	dwbe TREASURE_OBJECT_RING_08
	.db  COLLECT_MODE_CHEST
	.dw  $0000

; ==============================================================================
; North Horon / Horon Plain
; ==============================================================================

seasonsSlot_eyeglassLakeAcrossBridge:
	dwbe TREASURE_OBJECT_GASHA_SEED_00
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_oldManInTreehouse:
	dwbe TREASURE_OBJECT_ROUND_JEWEL_00
	.db  COLLECT_MODE_PICKUP_2HAND
	.dw  $0000

seasonsSlot_caveSouthOfMrsRuul:
	dwbe TREASURE_OBJECT_RING_09
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_blainoPrize:
	dwbe TREASURE_OBJECT_RICKY_GLOVES_00
	.db  COLLECT_MODE_PICKUP_1HAND
	.dw  $0000

seasonsSlot_caveNorthOfD1:
	dwbe TREASURE_OBJECT_RING_0a
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_dryEyeglassLakeWestCave:
	dwbe TREASURE_OBJECT_RUPEES_06
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_dryEyeglassLakeEastCave:
	dwbe TREASURE_OBJECT_HEART_PIECE_01
	.db  COLLECT_MODE_CHEST
	.dw  $0000

; ==============================================================================
; Natzu
; ==============================================================================

seasonsSlot_natzuRegionAcrossWater:
	dwbe TREASURE_OBJECT_RUPEES_05
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_moblinKeep:
	dwbe TREASURE_OBJECT_HEART_PIECE_01
	.db  COLLECT_MODE_CHEST
	.dw  $0000

; ==============================================================================
; Spool Swamp
; ==============================================================================

seasonsSlot_floodgateKeepersHouse:
	dwbe TREASURE_OBJECT_FLOODGATE_KEY_00
	.db  COLLECT_MODE_PICKUP_1HAND
	.dw  $0000

seasonsSlot_spoolSwampCave:
	dwbe TREASURE_OBJECT_SQUARE_JEWEL_00
	.db  COLLECT_MODE_CHEST
	.dw  $0000

; ==============================================================================
; Sunken City
; ==============================================================================

seasonsSlot_sunkenCitySummerCave:
	dwbe TREASURE_OBJECT_GASHA_SEED_01
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_masterDiversChallenge:
	dwbe TREASURE_OBJECT_MASTERS_PLAQUE_00
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_chestInMasterDiversCave:
	dwbe TREASURE_OBJECT_RUPEES_05
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_masterDiversReward:
	dwbe TREASURE_OBJECT_FLIPPERS_00
	.db  COLLECT_MODE_PICKUP_2HAND_NOFLAG
	.dw  seasonsSlotCallback_masterDiversReward

; ==============================================================================
; Mount Cucco / Goron Mountain
; ==============================================================================

seasonsSlot_springBananaTree:
	dwbe TREASURE_OBJECT_SPRING_BANANA_00
	.db  COLLECT_MODE_PICKUP_2HAND
	.dw  $0000

seasonsSlot_mtCuccoPlatformCave:
	dwbe TREASURE_OBJECT_RING_11
	.db  COLLECT_MODE_FALL
	.dw  $0000

seasonsSlot_mtCuccoTalonsCave:
	dwbe TREASURE_OBJECT_RING_10
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_divingSpotOutsideD4:
	dwbe TREASURE_OBJECT_PYRAMID_JEWEL_00
	.db  COLLECT_MODE_PICKUP_NOANIM
	.dw  $0000

seasonsSlot_goronMountainAcrossPits:
	dwbe TREASURE_OBJECT_DRAGON_KEY_00
	.db  COLLECT_MODE_PICKUP_1HAND
	.dw  $0000

seasonsSlot_chestInGoronMountain:
	dwbe TREASURE_OBJECT_RING_0b
	.db  COLLECT_MODE_CHEST
	.dw  $0000

; ==============================================================================
; Lost Woods / Tarm Ruins
; ==============================================================================

seasonsSlot_lostWoods:
	dwbe TREASURE_OBJECT_SWORD_00
	.db  COLLECT_MODE_PICKUP_1HAND
	.dw  $0000

seasonsSlot_tarmRuinsUnderTree:
	dwbe TREASURE_OBJECT_GASHA_SEED_01
	.db  COLLECT_MODE_CHEST
	.dw  $0000

; ==============================================================================
; Subrosia
; ==============================================================================

seasonsSlot_subrosianDanceHall:
	dwbe TREASURE_OBJECT_BOOMERANG_00
	.db  COLLECT_MODE_PICKUP_2HAND
	.dw  $0000

seasonsSlot_templeOfSeasons:
	dwbe TREASURE_OBJECT_ROD_OF_SEASONS_01
	.db  $00
	.dw  $0000

seasonsSlot_towerOfWinter:
	dwbe TREASURE_OBJECT_ROD_OF_SEASONS_05
	.db  COLLECT_MODE_PICKUP_1HAND
	.dw  $0000

seasonsSlot_towerOfSummer:
	dwbe TREASURE_OBJECT_ROD_OF_SEASONS_03
	.db  COLLECT_MODE_PICKUP_1HAND
	.dw  $0000

seasonsSlot_towerOfAutumn:
	dwbe TREASURE_OBJECT_ROD_OF_SEASONS_04
	.db  COLLECT_MODE_PICKUP_1HAND
	.dw  $0000

seasonsSlot_towerOfSpring:
	dwbe TREASURE_OBJECT_ROD_OF_SEASONS_02
	.db  COLLECT_MODE_PICKUP_1HAND
	.dw  $0000

seasonsSlot_subrosiaSeaside:
	dwbe TREASURE_OBJECT_STAR_ORE_00
	.db  COLLECT_MODE_DIG
	.dw  seasonsSlotCallback_subrosiaSeaside

seasonsSlot_subrosiaMarket1stItem:
	dwbe TREASURE_OBJECT_RIBBON_00
	.db  $00
	.dw  seasonsSlotCallback_subrosiaMarket1stItem

seasonsSlot_subrosiaMarket2ndItem:
	dwbe TREASURE_OBJECT_HEART_PIECE_03
	.db  $00
	.dw  seasonsSlotCallback_subrosiaMarket1stItem

seasonsSlot_subrosiaMarket5thItem:
	dwbe TREASURE_OBJECT_MEMBERS_CARD_00
	.db  $00
	.dw  seasonsSlotCallback_subrosiaMarket5thItem

; ==============================================================================
; D0
; ==============================================================================

seasonsSlot_d0KeyChest:
	dwbe TREASURE_OBJECT_SMALL_KEY_00
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d0SwordChest:
	dwbe TREASURE_OBJECT_SWORD_00
	.db  $00
	.dw  $0000

seasonsSlot_d0RupeeChest:
	dwbe TREASURE_OBJECT_RUPEES_04
	.db  COLLECT_MODE_CHEST
	.dw  $0000

; ==============================================================================
; D1
; ==============================================================================

seasonsSlot_d1_stalfosDrop:
	dwbe TREASURE_OBJECT_SMALL_KEY_01
	.db  COLLECT_MODE_FALL
	.dw  $0000

seasonsSlot_d1_stalfosChest:
	dwbe TREASURE_OBJECT_MAP_01
	.db  COLLECT_MODE_CHEST_MAP_OR_COMPASS
	.dw  $0000

seasonsSlot_d1_blockPushingRoom:
	dwbe TREASURE_OBJECT_GASHA_SEED_01
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d1_leverRoom:
	dwbe TREASURE_OBJECT_COMPASS_01
	.db  COLLECT_MODE_CHEST_MAP_OR_COMPASS
	.dw  $0000

seasonsSlot_d1_railwayChest:
	dwbe TREASURE_OBJECT_BOMBS_00
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d1_buttonChest:
	dwbe TREASURE_OBJECT_SMALL_KEY_01
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d1_basement:
	dwbe TREASURE_OBJECT_SEED_SATCHEL_00
	.db  COLLECT_MODE_PICKUP_2HAND
	.dw  $0000

seasonsSlot_d1_goriyaChest:
	dwbe TREASURE_OBJECT_BOSS_KEY_01
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d1_floormasterRoom:
	dwbe TREASURE_OBJECT_RING_04
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d1_boss:
	dwbe TREASURE_OBJECT_HEART_CONTAINER_00
	.db  COLLECT_MODE_POOF
	.dw  $0000

; ==============================================================================
; D2
; ==============================================================================

seasonsSlot_d2_leftFromEntrance:
	dwbe TREASURE_OBJECT_RUPEES_01
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d2_ropeDrop:
	dwbe TREASURE_OBJECT_SMALL_KEY_02
	.db  COLLECT_MODE_FALL
	.dw  $0000

seasonsSlot_d2_ropeChest:
	dwbe TREASURE_OBJECT_COMPASS_02
	.db  COLLECT_MODE_CHEST_MAP_OR_COMPASS
	.dw  $0000

seasonsSlot_d2_moblinChest:
	dwbe TREASURE_OBJECT_BRACELET_00
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d2_potChest:
	dwbe TREASURE_OBJECT_MAP_02
	.db  COLLECT_MODE_CHEST_MAP_OR_COMPASS
	.dw  $0000

seasonsSlot_d2_bladeChest:
	dwbe TREASURE_OBJECT_SMALL_KEY_02
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d2_spiralChest:
	dwbe TREASURE_OBJECT_SMALL_KEY_02
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d2_rollerChest:
	dwbe TREASURE_OBJECT_RUPEES_02
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d2_terraceChest:
	dwbe TREASURE_OBJECT_BOSS_KEY_02
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d2_boss:
	dwbe TREASURE_OBJECT_HEART_CONTAINER_00
	.db  COLLECT_MODE_POOF
	.dw  $0000

; ==============================================================================
; D3
; ==============================================================================

seasonsSlot_d3_rollerChest:
	dwbe TREASURE_OBJECT_SMALL_KEY_03
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d3_moldormChest:
	dwbe TREASURE_OBJECT_BOMBS_00
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d3_bombedWallChest:
	dwbe TREASURE_OBJECT_MAP_03
	.db  COLLECT_MODE_CHEST_MAP_OR_COMPASS
	.dw  $0000

seasonsSlot_d3_mimicChest:
	dwbe TREASURE_OBJECT_FEATHER_00
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d3_trampolineChest:
	dwbe TREASURE_OBJECT_COMPASS_03
	.db  COLLECT_MODE_CHEST_MAP_OR_COMPASS
	.dw  $0000

seasonsSlot_d3_zolChest:
	dwbe TREASURE_OBJECT_SMALL_KEY_03
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d3_waterRoom:
	dwbe TREASURE_OBJECT_RUPEES_04
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d3_quicksandTerrace:
	dwbe TREASURE_OBJECT_GASHA_SEED_01
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d3_giantBladeRoom:
	dwbe TREASURE_OBJECT_BOSS_KEY_03
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d3_boss:
	dwbe TREASURE_OBJECT_HEART_CONTAINER_00
	.db  COLLECT_MODE_POOF
	.dw  $0000

; ==============================================================================
; D4
; ==============================================================================

seasonsSlot_d4_northOfEntrance:
	dwbe TREASURE_OBJECT_BOMBS_00
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d4_potPuzzle:
	dwbe TREASURE_OBJECT_SMALL_KEY_04
	.db  COLLECT_MODE_FALL
	.dw  $0000

seasonsSlot_d4_mazeChest:
	dwbe TREASURE_OBJECT_MAP_04
	.db  COLLECT_MODE_CHEST_MAP_OR_COMPASS
	.dw  $0000

seasonsSlot_d4_darkRoom:
	dwbe TREASURE_OBJECT_SMALL_KEY_04
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d4_waterRingRoom:
	dwbe TREASURE_OBJECT_COMPASS_04
	.db  COLLECT_MODE_CHEST_MAP_OR_COMPASS
	.dw  $0000

seasonsSlot_d4_pool:
	dwbe TREASURE_OBJECT_SMALL_KEY_04
	.db  COLLECT_MODE_FALL
	.dw  $0000

seasonsSlot_d4_terrace:
	dwbe TREASURE_OBJECT_SMALL_KEY_04
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d4_crackedFloorRoom:
	dwbe TREASURE_OBJECT_SLINGSHOT_00
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d4_torchChest:
	dwbe TREASURE_OBJECT_SMALL_KEY_04
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d4_diveSpot:
	dwbe TREASURE_OBJECT_BOSS_KEY_04
	.db  COLLECT_MODE_DIVE
	.dw  $0000

seasonsSlot_d4_boss:
	dwbe TREASURE_OBJECT_HEART_CONTAINER_00
	.db  COLLECT_MODE_POOF
	.dw  $0000

; ==============================================================================
; D5
; ==============================================================================

seasonsSlot_d5_leftChest:
	dwbe TREASURE_OBJECT_SMALL_KEY_05
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d5_spiralChest:
	dwbe TREASURE_OBJECT_COMPASS_05
	.db  COLLECT_MODE_CHEST_MAP_OR_COMPASS
	.dw  $0000

seasonsSlot_d5_terraceChest:
	dwbe TREASURE_OBJECT_RUPEES_06
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d5_armosChest:
	dwbe TREASURE_OBJECT_SMALL_KEY_05
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d5_spinnerChest:
	dwbe TREASURE_OBJECT_SMALL_KEY_05
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d5_cartChest:
	dwbe TREASURE_OBJECT_SMALL_KEY_05
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d5_stalfosChest:
	dwbe TREASURE_OBJECT_SMALL_KEY_05
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d5_gibdoZolChest:
	dwbe TREASURE_OBJECT_MAP_05
	.db  COLLECT_MODE_CHEST_MAP_OR_COMPASS
	.dw  $0000

seasonsSlot_d5_magnetBallChest:
	dwbe TREASURE_OBJECT_MAGNET_GLOVES_00
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d5_basement:
	dwbe TREASURE_OBJECT_BOSS_KEY_05
	.db  COLLECT_MODE_PICKUP_1HAND ; NOTE: Original "poofed" in, but that's not really right
	.dw  $0000

seasonsSlot_d5_boss:
	dwbe TREASURE_OBJECT_HEART_CONTAINER_00
	.db  COLLECT_MODE_POOF
	.dw  $0000

; ==============================================================================
; D6
; ==============================================================================

seasonsSlot_d6_1fEast:
	dwbe TREASURE_OBJECT_RUPEES_01
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d6_1fTerrace:
	dwbe TREASURE_OBJECT_MAP_06
	.db  COLLECT_MODE_CHEST_MAP_OR_COMPASS
	.dw  $0000

seasonsSlot_d6_crystalTrapRoom:
	dwbe TREASURE_OBJECT_RUPEES_02
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d6_magnetBallDrop:
	dwbe TREASURE_OBJECT_SMALL_KEY_06
	.db  COLLECT_MODE_FALL
	.dw  $0000

seasonsSlot_d6_beamosRoom:
	dwbe TREASURE_OBJECT_COMPASS_06
	.db  COLLECT_MODE_CHEST_MAP_OR_COMPASS
	.dw  $0000

seasonsSlot_d6_2fGibdoChest:
	dwbe TREASURE_OBJECT_BOMBS_00
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d6_2fArmosChest:
	dwbe TREASURE_OBJECT_RUPEES_01
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d6_armosHall:
	dwbe TREASURE_OBJECT_BOOMERANG_00
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d6_spinnerNorth:
	dwbe TREASURE_OBJECT_SMALL_KEY_06
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d6_escapeRoom:
	dwbe TREASURE_OBJECT_BOSS_KEY_06
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d6_vireChest:
	dwbe TREASURE_OBJECT_SMALL_KEY_06
	.db  COLLECT_MODE_CHEST
	.dw  $0000

seasonsSlot_d6_boss:
	dwbe TREASURE_OBJECT_HEART_CONTAINER_00
	.db  COLLECT_MODE_POOF
	.dw  $0000

.endif