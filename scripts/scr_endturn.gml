// advance time one quartile
g_quart = g_quart + 1
if (g_quart > 4) {
    g_quart = 1
    g_year = g_year + 1
}
// check if our time is over
if (g_year > 20) {
    room_goto(rom_finale)
    exit
}

