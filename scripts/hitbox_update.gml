//hitbox_update

if(attack == AT_USPECIAL){
    if(hbox_num == 1){
        proj_angle += 20*spr_dir;
        hsp = player_id.hsp;
        through_platforms = 2;
        if(player_id.window > 2 && !was_parried && !getting_bashed){
            can_hit_self = true;
        } else if(was_parried || orig_player != player || getting_bashed){
            can_hit_self = false;
        }
        if(!free && vsp > 0){
            create_hitbox(attack, 3, round(x), round(y)).can_hit_self = true;
            sound_play(sound_effect);
            hit_priority = 0;
            destroyed = true;
        }
    }
} else if(attack == AT_EXTRA_1){
    if(hbox_num == 3){
        hsp += hspIcrement;
        vsp += vspIcrement;
        if(hitbox_timer == ceil(length/2)+1){
            with player_id {
                attack_end(other.attack);
            }
            for(var i = 0; i < array_length(can_hit); i++){
                can_hit[i] = 1;
            }
        } else if(hitbox_timer == length - 1){
            sound_effect = asset_get("sfx_blow_medium3");
            extra_hitpause = 20;
            hit_flipper = 0;
            with player_id {
                attack_end(other.attack);
            }
            for(var i = 0; i < array_length(can_hit); i++){
                can_hit[i] = 1;
            }
        }
    } else if(hbox_num == 4){
        dieOnGround();
        dieOutOfBounds();
    } else if(hbox_num == 5){
        dieOnGround();
        dieOutOfBounds();
    }
}

#define dieOnGround()
if(!free){
    destroyed = true;
}

#define dieOutOfBounds()
if(x < 0 || x > room_width || y < 0 || y > room_height){
    destroyed = true;
}