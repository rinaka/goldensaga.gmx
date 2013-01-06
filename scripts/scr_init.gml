// This should be run every time a new game begins.
// It is currently called in the startup code of rom_title
var i;

g_year = 1
g_quart = 1
g_funds = 1000

for (i = 0; i < 35; i+=1) {
    g_farm[i, 0] = CT_EMPTY
}
g_farm[16, CELL_TYPE] = CT_ORCHARD
g_farm[16, 1] = P_OR_LEVEL_SEEDS

g_farm[17, CELL_TYPE] = CT_HOUSE
g_farm[17, 1] = P_HO_LEVEL_BASIC

g_farm[18, CELL_TYPE] = CT_ORCHARD
g_farm[18, 1] = P_OR_LEVEL_SEEDS

g_edit_mode = EDIT_MODE_INSPECT

