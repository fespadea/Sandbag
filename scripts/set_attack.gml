//set_attack

switch(attack){
    case AT_NSPECIAL:
        if(free){
            attack = AT_NSPECIAL_AIR;
            sanddropped = false;
            sanddashed = true;
        }
        break;
    case AT_FSPECIAL:
        sandgrabGrabbed = false;
        reset_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE);
        break;
    case AT_DATTACK:
        clear_button_buffer(PC_ATTACK_PRESSED);
        break;
}