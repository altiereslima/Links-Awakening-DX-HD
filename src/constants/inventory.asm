; Inventory-related constants

DEF INVENTORY_SLOT_COUNT EQU $0C

; Items
DEF INVENTORY_EMPTY            EQU $00
DEF INVENTORY_SWORD            EQU $01
DEF INVENTORY_BOMBS            EQU $02
DEF INVENTORY_POWER_BRACELET   EQU $03
DEF INVENTORY_SHIELD           EQU $04
DEF INVENTORY_BOW              EQU $05
DEF INVENTORY_HOOKSHOT         EQU $06
DEF INVENTORY_MAGIC_ROD        EQU $07
DEF INVENTORY_PEGASUS_BOOTS    EQU $08
DEF INVENTORY_OCARINA          EQU $09
DEF INVENTORY_ROCS_FEATHER     EQU $0A
DEF INVENTORY_SHOVEL           EQU $0B
DEF INVENTORY_MAGIC_POWDER     EQU $0C
DEF INVENTORY_BOOMERANG        EQU $0D

; Minimaps layout
; Only $0, $11 and $30 are used in the final game
DEF INVENTORY_MINIMAP_SINGLE_FLOOR  EQU $00
DEF INVENTORY_MINIMAP_V_SPLIT_A     EQU $10
DEF INVENTORY_MINIMAP_V_SPBIT_A     EQU $11
DEF INVENTORY_MINIMAP_H_SPLIT_A     EQU $20
DEF INVENTORY_MINIMAP_H_SPLIT_B     EQU $21
DEF INVENTORY_MINIMAP_FOUR_FLOORS_A EQU $30
DEF INVENTORY_MINIMAP_FOUR_FLOORS_B EQU $31
DEF INVENTORY_MINIMAP_FOUR_FLOORS_C EQU $32
DEF INVENTORY_MINIMAP_FOUR_FLOORS_D EQU $33


; Minimap *DATA* consts
; Located here due to bug in rgbds 0.4.0
; Minimap data is in src/data/minimaps.asm
DEF MINIMAP_ARROW_TAIL_CAVE EQU 3
DEF MINIMAP_STYLE_TAIL_CAVE EQU INVENTORY_MINIMAP_SINGLE_FLOOR

DEF MINIMAP_ARROW_BOTTLE_GROTTO EQU 2
DEF MINIMAP_STYLE_BOTTLE_GROTTO EQU INVENTORY_MINIMAP_SINGLE_FLOOR

DEF MINIMAP_ARROW_KEY_CAVERN EQU 1
IF __SPLIT_KEY_CAVERN_MAP__
DEF MINIMAP_STYLE_KEY_CAVERN EQU INVENTORY_MINIMAP_V_SPBIT_A
ELSE
DEF MINIMAP_STYLE_KEY_CAVERN EQU INVENTORY_MINIMAP_SINGLE_FLOOR
ENDC

DEF MINIMAP_ARROW_ANGLERS_TUNNEL EQU 3
DEF MINIMAP_STYLE_ANGLERS_TUNNEL EQU INVENTORY_MINIMAP_SINGLE_FLOOR

DEF MINIMAP_ARROW_CATFISHS_MAW EQU 7
DEF MINIMAP_STYLE_CATFISHS_MAW EQU INVENTORY_MINIMAP_SINGLE_FLOOR

DEF MINIMAP_ARROW_FACE_SHRINE EQU 3
DEF MINIMAP_STYLE_FACE_SHRINE EQU INVENTORY_MINIMAP_SINGLE_FLOOR

DEF MINIMAP_ARROW_EAGLES_TOWER EQU 1
DEF MINIMAP_STYLE_EAGLES_TOWER EQU INVENTORY_MINIMAP_FOUR_FLOORS_A

DEF MINIMAP_ARROW_TURTLE_ROCK EQU 3
DEF MINIMAP_STYLE_TURTLE_ROCK EQU INVENTORY_MINIMAP_SINGLE_FLOOR

DEF MINIMAP_ARROW_COLOR_DUNGEON EQU 2
DEF MINIMAP_STYLE_COLOR_DUNGEON EQU INVENTORY_MINIMAP_SINGLE_FLOOR