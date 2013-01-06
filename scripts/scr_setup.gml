// This should be called only ONCE to declare the global variables.
// It is currently called by the startup code in rom_startup
globalvar g_year, g_quart, g_funds;
globalvar g_farm;
globalvar g_edit_mode;

/*
The g_farm is a 2D array that stores information about each of the cells in the 7x5 grid of the farm.
The first index of the array represents each cell in row-major format so, for instance, to access
a given property of the element in the second row, third column, you'd use g_farm[9, X] (9 = 1*7 + 2)
where X is the index of the property.

There are constants for each of these things.

The main house. Can't build others, may upgrade.
CELL_TYPE = CT_HOUSE
properties:
  PROP_HOUSE_LEVEL = P_HO_LEVEL_BASIC |

Orchards. Provide income for the farm.
CELL_TYPE = CT_ORCHARD
properties
  PROP_ORCHARD_LEVEL = P_OR_LEVEL_SEEDS | P_OR_LEVEL_STALK | P_OR_LEVEL_YOUNG | P_OR_LEVEL_ADULT | P_OR_LEVEL_OLD
*/

