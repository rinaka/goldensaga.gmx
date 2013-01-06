var c, r, i, k, w;
var ox, oy;

ox = 96;
oy = 48;
i = 0;

for (r = 0; r < 5; r+=1) {
    for (c = 0; c < 7; c+=1) {
        k = g_farm[i, 0];
        w = noone;
        switch(k) {
            case CT_EMPTY:
                w = instance_create(ox + 32*c, oy + 32*r, obj_cell);
                break;
            case CT_HOUSE:
                w = instance_create(ox + 32*c, oy + 32*r, obj_house);
                break;
            case CT_ORCHARD:
                w = instance_create(ox + 32*c, oy + 32*r, obj_orchard);
                k = g_farm[i, 1];
                switch(k) {
                    case P_OR_LEVEL_SEEDS:
                        break;
                    case P_OR_LEVEL_STALK:
                        with (w) { sprite_index = spr_orchard01; }
                        break;
                    case P_OR_LEVEL_YOUNG:
                        with (w) { sprite_index = spr_orchard02; }
                        break;
                    case P_OR_LEVEL_ADULT:
                        with (w) { sprite_index = spr_orchard03; }
                        break;
                    case P_OR_LEVEL_OLD:
                        with (w) { sprite_index = spr_orchard03; }
                        break;
                }
                break;
        }
        if (w != noone)
            with (w) { map_index = i; }
        i += 1;
    }
}

