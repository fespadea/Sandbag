//hitbox_update

if(attack == AT_USPECIAL){
    if(hbox_num == 1){
        proj_angle += 20*spr_dir;
        hsp = player_id.hsp;
        through_platforms = 2;
        if(player_id.window > 2){
            can_hit_self = true;
        }
        if(!free && vsp > 0){
            create_hitbox(attack, 3, round(x), round(y)).can_hit_self = true;
            sound_play(sound_effect);
            hit_priority = 0;
            destroyed = true;
        }
    }
}