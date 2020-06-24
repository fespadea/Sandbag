//update

switch(state){ // dash stuff
    case PS_DASH:
        if(image_index == sprite_get_number(dashSprite)-1){
            set_state(PS_DASH_STOP);
            continueDash = true;
        }
        break;
    case PS_DASH_STOP:
        hsp *= dash_stop_percent;
        break;
    case PS_WALK:
        if(continueDash){
            set_state(PS_DASH_START);
        } else if(image_index == sprite_get_number(walkSprite)-1){
            set_state(PS_DASH_STOP);
        }
        break;
    default:
        continueDash = false;
        break;
}

// reset used sanddash variable
if(!free || state_cat == SC_HITSTUN){
    sanddashed = false;
} else if(sanddashed){
    move_cooldown[AT_NSPECIAL_AIR] = 2;
}

print_debug(get_state_name( state ))