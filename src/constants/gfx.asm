; constants for graphics

; pixel width of one tile
DEF TILE_WIDTH          EQU 8
; pixel height of one tile
DEF TILE_HEIGHT         EQU 8
; number of tiles in one row
DEF TILES_PER_ROW       EQU SCRN_X/(TILE_WIDTH*2)
; number of tiles in one column
DEF TILES_PER_COLUMN    EQU SCRN_Y/(TILE_HEIGHT*2)
; number of tiles per map
DEF TILES_PER_MAP       EQU $80
; Size of a single tile in bytes
DEF TILE_SIZE           EQU $10

; Number of game objects in one BG map row
DEF OBJECTS_PER_ROW    EQU SCRN_X/(TILE_WIDTH*2)
; Number of game objects in one BG map column
DEF OBJECTS_PER_COLUMN EQU SCRN_Y/(TILE_HEIGHT*2) - 1
; Number of game objects in a whole room BG map
DEF OBJECTS_PER_ROOM   EQU OBJECTS_PER_ROW * OBJECTS_PER_COLUMN

; GBC palettes
DEF OAM_GBC_PAL_0     EQU 0         ; Palette 0 for GBC only
DEF OAM_GBC_PAL_1     EQU 1         ; Palette 1 for GBC only
DEF OAM_GBC_PAL_2     EQU 2         ; Palette 2 for GBC only
DEF OAM_GBC_PAL_3     EQU 3         ; Palette 3 for GBC only
DEF OAM_GBC_PAL_4     EQU 4         ; Palette 4 for GBC only
DEF OAM_GBC_PAL_5     EQU 5         ; Palette 5 for GBC only
DEF OAM_GBC_PAL_6     EQU 6         ; Palette 6 for GBC only
DEF OAM_GBC_PAL_7     EQU 7         ; Palette 7 for GBC only

DEF OAM_NO_FLIP       EQU 0

; Drawing modes for draw commands.
; See wDrawCommands
;
; Copy <length> bytes of data from source to dest, progressing horizontally
DEF DC_COPY_ROW                EQU $00
; Copy a single byte of data to <length> bytes of dest, progressing horizontally
DEF DC_FILL_ROW                EQU $40
; Copy <length> bytes of data from source to dest, progressing vertically
DEF DC_COPY_COLUMN             EQU $80
; Copy a single byte of data to <length> bytes of dest, progressing vertically
DEF DC_FILL_COLUMN             EQU $C0

; Values for wTilesetToLoad
DEF TILESET_ROOM_TILEMAP                  EQU $01
DEF TILESET_CLEAR_TILEMAP                 EQU $02
DEF TILESET_BASE                          EQU $03
DEF TILESET_MENU                          EQU $04
DEF TILESET_BASE_OVERWORLD                EQU $05
DEF TILESET_INDOOR                        EQU $06
DEF TILESET_BASE_OVERWORLD_DUP            EQU $07 ; mapped to TILESET_BASE_OVERWORLD
DEF TILESET_FILL_TILEMAP                  EQU $08
DEF TILESET_ROOM_SPECIFIC                 EQU $09
DEF TILESET_0A                            EQU $0A ; unused, returns from the map loading handler
DEF TILESET_WORLD_MAP                     EQU $0B
DEF TILESET_0C                            EQU $0C ; unused, returns from the map loading handler
DEF TILESET_SAVE_MENU                     EQU $0D
DEF TILESET_WORLD_MAP_TILEMAP             EQU $0E
DEF TILESET_0F                            EQU $0F ; fade from white? used in menus
DEF TILESET_INTRO                         EQU $10
DEF TILESET_TITLE                         EQU $11
DEF TILESET_CHRISTINE                     EQU $12
DEF TILESET_MARIN_BEACH                   EQU $13
DEF TILESET_FACE_SHRINE_MURAL             EQU $14
DEF TILESET_15                            EQU $15 ; TODO: document
DEF TILESET_CREDITS_LINK_ON_SEA_LARGE     EQU $16
DEF TILESET_CREDITS_SUN_ABOVE             EQU $17
DEF TILESET_CREDITS_LINK_ON_SEA_CLOSE     EQU $18
DEF TILESET_CREDITS_LINK_SEATED_ON_LOG    EQU $19
DEF TILESET_CREDITS_LINK_FACE_CLOSEUP     EQU $1A
DEF TILESET_CREDITS_ROLL                  EQU $1B
DEF TILESET_1C                            EQU $1C ; unused, mapped to TILESET_CREDITS_LINK_FACE_CLOSEUP
DEF TILESET_CREDITS_KOHOLINT_VIEWS        EQU $1D
DEF TILESET_CREDITS_KOHOLINT_DISAPPEARING EQU $1E
DEF TILESET_CREDITS_STAIRS                EQU $1F
DEF TILESET_SCHULE_PAINTING               EQU $20
DEF TILESET_EAGLES_TOWER_TOP              EQU $21
DEF TILESET_CREDITS_MARIN_PORTRAIT        EQU $22
DEF TILESET_THANKS_FOR_PLAYING            EQU $23

; Values for hNeedsUpdatingBGTiles
DEF TILESET_LOAD_NONE              EQU $00
DEF TILESET_LOAD_WORLD             EQU $01
DEF TILESET_LOAD_DUNGEON_MINIMAP   EQU $02
DEF TILESET_LOAD_PIECE_OF_HEART_1  EQU $03
DEF TILESET_LOAD_PIECE_OF_HEART_2  EQU $04
DEF TILESET_CLEAR_PIECE_OF_HEART_1 EQU $05
DEF TILESET_CLEAR_PIECE_OF_HEART_2 EQU $06
DEF TILESET_LOAD_INVENTORY         EQU $07
DEF TILESET_LOAD_INVENTORY_SONG_1  EQU $08
DEF TILESET_LOAD_INVENTORY_SONG_2  EQU $09
DEF TILESET_LOAD_INVENTORY_SONG_3  EQU $0A
DEF TILESET_LOAD_SHARED_GFX_1      EQU $0B
DEF TILESET_LOAD_SHARED_GFX_2      EQU $0C
DEF TILESET_LOAD_SHARED_GFX_3      EQU $0D

; Values for wBGMapToLoad
DEF TILEMAP_NONE                         EQU $00
DEF TILEMAP_CREDITS_ISLAND               EQU $01
DEF TILEMAP_INVENTORY                    EQU $02
DEF TILEMAP_MENU_FILE_SELECTION          EQU $03
DEF TILEMAP_MENU_FILE_SELECTION_COMMANDS EQU $04
DEF TILEMAP_MENU_FILE_CREATION           EQU $05
DEF TILEMAP_MENU_FILE_ERASE              EQU $06
DEF TILEMAP_MINIMAP                      EQU $07
DEF TILEMAP_WORLD_MAP                    EQU $08
DEF TILEMAP_EAGLES_TOWER_CLOUDS          EQU $09
DEF TILEMAP_GAME_OVER                    EQU $0A
DEF TILEMAP_INVENTORY_DEBUG              EQU $0B
DEF TILEMAP_MENU_FILE_COPY               EQU $0C
DEF TILEMAP_MENU_FILE_SAVE               EQU $0D
DEF TILEMAP_INTRO_SEA_DMG                EQU $0E
DEF TILEMAP_INTRO_LINK_FACE              EQU $0F
DEF TILEMAP_INTRO_BEACH                  EQU $10
DEF TILEMAP_TITLE                        EQU $11
DEF TILEMAP_PEACH                        EQU $12
DEF TILEMAP_MARIN_BEACH                  EQU $13
DEF TILEMAP_MAMU                         EQU $14
DEF TILEMAP_FACE_SHRINE_MURAL            EQU $15
DEF TILEMAP_CREDITS_STAIRS               EQU $16
DEF TILEMAP_CREDITS_LINK_ON_SEA_LARGE    EQU $17
DEF TILEMAP_CREDITS_SUN_ABOVE            EQU $18
DEF TILEMAP_CREDITS_LINK_ON_SEA_CLOSE    EQU $19
DEF TILEMAP_CREDITS_LINK_SEATED_ON_LOG   EQU $1A
DEF TILEMAP_CREDITS_LINK_FACE_CLOSE_UP   EQU $1B
DEF TILEMAP_CREDITS_ROLL_1               EQU $1C
DEF TILEMAP_CREDITS_ROLL_2               EQU $1D
DEF TILEMAP_CREDITS_KIDS                 EQU $1E
DEF TILEMAP_CREDITS_MARIN_SINGING        EQU $1F
DEF TILEMAP_CREDITS_MRS_MEOW_MEOWS_HOUSE EQU $20
DEF TILEMAP_CREDITS_TARIN                EQU $21
DEF TILEMAP_CREDITS_BEACH                EQU $22
DEF TILEMAP_SCHULE_PAINTING              EQU $23
DEF TILEMAP_EAGLES_TOWER_COLLAPSE        EQU $24
DEF TILEMAP_INTRO_SEA_CGB                EQU $25

; Value for overworld room objects
DEF OBJECT_SHORT_GRASS          EQU $04
DEF OBJECT_ROCKY_GROUND         EQU $09
DEF OBJECT_TALL_GRASS           EQU $0A
DEF OBJECT_PATH                 EQU $0B
DEF OBJECT_TILES                EQU $0C
DEF OBJECT_WATER_BANK_BOTTOM    EQU $0F
DEF OBJECT_WATER_BANK_TOP       EQU $10
DEF OBJECT_WATER_BANK_RIGHT     EQU $11
DEF OBJECT_WATER_BANK_CORNER_TL EQU $13
DEF OBJECT_WATER_BANK_CORNER_BR EQU $16
DEF OBJECT_WATER_BANK_BR        EQU $17
DEF OBJECT_WATER_BANK_BL        EQU $18
DEF OBJECT_WATER_BANK_TR        EQU $19
DEF OBJECT_WATER_BANK_TL        EQU $1A
DEF OBJECT_SHALLOW_WATER        EQU $1B
DEF OBJECT_LIFTABLE_ROCK        EQU $20
DEF OBJECT_CLIFF_CORNER_BL      EQU $2E
DEF OBJECT_CLIFF_BOTTOM         EQU $2F
DEF OBJECT_CLIFF_LEFT           EQU $37
DEF OBJECT_CLIFF_RIGHT          EQU $38
DEF OBJECT_CLIFF_CORNER_TL      EQU $80
DEF OBJECT_CLIFF_CORNER_TR      EQU $81
DEF OBJECT_ANIMATED_FLOWERS     EQU $44
DEF OBJECT_PHONE_BOOTH_TOP      EQU $45
DEF OBJECT_CLIFF_TOP            EQU $4D
DEF OBJECT_BUSH                 EQU $5C
DEF OBJECT_WEATHER_VANE_BASE    EQU $5E
DEF OBJECT_WELL                 EQU $61
DEF OBJECT_HURT_TILE            EQU $69 ; overworld: cactus
DEF OBJECT_ROUNDED_BLOCK        EQU $6E
DEF OBJECT_OWL_STATUE           EQU $6F
DEF OBJECT_WEATHER_VANE_TOP     EQU $91
DEF OBJECT_BOMBABLE_CAVE_DOOR   EQU $BA
DEF OBJECT_TAIL_KEYHOLE         EQU $C0
DEF OBJECT_CLOSED_GATE          EQU $C2
DEF OBJECT_GROUND_STAIRS        EQU $C6
DEF OBJECT_BUSH_GROUND_STAIRS   EQU $D3
DEF OBJECT_SIGNPOST             EQU $D4
DEF OBJECT_MONKEY_BRIDGE_TOP    EQU $D8
DEF OBJECT_MONKEY_BRIDGE_MIDDLE EQU $D9
DEF OBJECT_MONKEY_BRIDGE_BOTTOM EQU $DA
DEF OBJECT_MONKEY_BRIDGE_BUILT  EQU $DB
DEF OBJECT_WEATHER_VANE_ABOVE   EQU $DC
DEF OBJECT_STEPS                EQU $E0
DEF OBJECT_GROUND_HOLE          EQU $E8
DEF OBJECT_ROCKY_CAVE_DOOR      EQU $E1
DEF OBJECT_CAVE_DOOR            EQU $E3
DEF OBJECT_PIT                  EQU $E8
DEF OBJECT_WATERFALL            EQU $E9
; Overworld macros
DEF OBJECT_MACRO_F5             EQU $F5

; Values for indoor room objects
DEF OBJECT_FLOOR_OD                    EQU $0D
DEF OBJECT_LIFTABLE_POT                EQU $20
DEF OBJECT_WALL_TOP                    EQU $21
DEF OBJECT_WALL_BOTTOM                 EQU $22
DEF OBJECT_WALL_LEFT                   EQU $23
DEF OBJECT_WALL_RIGHT                  EQU $24
DEF OBJECT_BOMBED_PASSAGE_VERTICAL     EQU $3D
DEF OBJECT_BOMBED_PASSAGE_HORIZONTAL   EQU $3E
DEF OBJECT_BOMBABLE_WALL_TOP           EQU $3F
DEF OBJECT_BOMBABLE_WALL_BOTTOM        EQU $40
DEF OBJECT_BOMBABLE_WALL_LEFT          EQU $41
DEF OBJECT_BOMBABLE_WALL_RIGHT         EQU $42
DEF OBJECT_HIDDEN_BOMBABLE_WALL_TOP    EQU $47
DEF OBJECT_HIDDEN_BOMBABLE_WALL_BOTTOM EQU $48
DEF OBJECT_HIDDEN_BOMBABLE_WALL_LEFT   EQU $49
DEF OBJECT_HIDDEN_BOMBABLE_WALL_RIGHT  EQU $4A
DEF OBJECT_SIDE_VIEW_SPIKES            EQU $4C
DEF OBJECT_DASHABLE_ROCK_1             EQU $4E
DEF OBJECT_DASHABLE_ROCK_2             EQU $4F
;OBJECT_HURT_TILE                  EQU $69 ; same ID as overworld. indoors: spikes
DEF OBJECT_POT_WITH_SWITCH             EQU $8E
DEF OBJECT_DASHABLE_ROCK_3             EQU $88
DEF OBJECT_CHEST_CLOSED                EQU $A0
DEF OBJECT_CHEST_OPEN                  EQU $A1
DEF OBJECT_PUSHABLE_BLOCK              EQU $A7
DEF OBJECT_BOMBABLE_BLOCK              EQU $A9
DEF OBJECT_SWITCH_BUTTON               EQU $AA
DEF OBJECT_TORCH_UNLIT                 EQU $AB
DEF OBJECT_TORCH_LIT                   EQU $AC
DEF OBJECT_STAIRS_DOWN                 EQU $BE
DEF OBJECT_HIDDEN_STAIRS_DOWN          EQU $BF
DEF OBJECT_ONE_EYED_STATUE             EQU $C0
DEF OBJECT_STAIRS_UP                   EQU $CB
DEF OBJECT_CONVEYOR_BOTTOM             EQU $CF
DEF OBJECT_CONVEYOR_TOP                EQU $D0
DEF OBJECT_CONVEYOR_RIGHT              EQU $D1
DEF OBJECT_CONVEYOR_LEFT               EQU $D2
DEF OBJECT_TRENDY_GAME_BORDER          EQU $D3
DEF OBJECT_RAISED_FENCE_TOP            EQU $D5
DEF OBJECT_RAISED_FENCE_BOTTOM         EQU $D6
DEF OBJECT_RAISED_FENCE_LEFT           EQU $D7
DEF OBJECT_RAISED_FENCE_RIGHT          EQU $D8
DEF OBJECT_LOWERED_BLOCK               EQU $DB
DEF OBJECT_RAISED_BLOCK                EQU $DC
DEF OBJECT_KEYHOLE_BLOCK               EQU $DE
DEF OBJECT_KEY_DOOR_TOP                EQU $EC
DEF OBJECT_KEY_DOOR_BOTTOM             EQU $ED
DEF OBJECT_KEY_DOOR_LEFT               EQU $EE
DEF OBJECT_KEY_DOOR_RIGHT              EQU $EF
DEF OBJECT_CLOSED_DOOR_TOP             EQU $F0
DEF OBJECT_CLOSED_DOOR_BOTTOM          EQU $F1
DEF OBJECT_CLOSED_DOOR_LEFT            EQU $F2
DEF OBJECT_CLOSED_DOOR_RIGHT           EQU $F3
DEF OBJECT_OPEN_DOOR_TOP               EQU $F4
DEF OBJECT_OPEN_DOOR_BOTTOM            EQU $F5
DEF OBJECT_OPEN_DOOR_LEFT              EQU $F6
DEF OBJECT_OPEN_DOOR_RIGHT             EQU $F7
DEF OBJECT_BOSS_DOOR                   EQU $F8
DEF OBJECT_STAIRS_DOOR                 EQU $F9
DEF OBJECT_FLIP_WALL                   EQU $FA
DEF OBJECT_ONE_WAY_ARROW               EQU $FB
DEF OBJECT_DUNGEON_ENTRANCE            EQU $FC
DEF OBJECT_INDOOR_ENTRANCE             EQU $FD

; Room header constants
DEF ROOM_WARP                   EQU $E0
DEF ROOM_END                    EQU $FE
DEF ROOM_BORDER                 EQU $FF

; Values for wRoomSwitchableObject
DEF ROOM_SWITCHABLE_OBJECT_NONE          EQU $0
DEF ROOM_SWITCHABLE_OBJECT_SWITCH_BUTTON EQU $1
DEF ROOM_SWITCHABLE_OBJECT_MOBILE_BLOCK  EQU $2

; Values for the highest bit of wLinkAttackStepAnimationCountdown
DEF ATTACK_STEP_ITEM_ANY                 EQU $00
DEF ATTACK_STEP_ITEM_MAGIC_ROD           EQU $80
DEF ATTACK_STEP_DURATION_MASK            EQU $7F ; extract the duration value, without the item type part

; height of the window on the top of the screen
DEF WINDOW_HEIGHT EQU 2 ; number in tiles