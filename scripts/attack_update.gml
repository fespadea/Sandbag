// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack){
    case AT_USTRONG:
        if(window < 5){
            can_move = false;
        } else if(window == 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
            if(free){
                window_timer--;
                can_wall_jump = true;
            }
        }
}