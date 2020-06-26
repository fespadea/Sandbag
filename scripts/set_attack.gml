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
    case AT_DSPECIAL:
        window = dspecialChargeWindow;
        initialDspecialChargeWindow = window;
        break;
    case AT_TAUNT:
        tauntAngle = 0;
        switch (random_func(1, 10, true)) {
            case 4:
            case 5:
            case 6:
            case 7:
                sound_play(tauntSfx2);
            break;
            case 8:
                sound_play(tauntSfx3);
                spawn_hit_fx(x, y - 30, confettiesHfx);
            break;
            case 9:
                sound_play(tauntSfx4);
                spawn_hit_fx(x, y - 30, confettiesHfx);
            break;
            default:
                sound_play(tauntSfx1);
        }
        break;
}