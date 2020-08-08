// target update (Muno's template somewhat)

#macro TARGET_PIECE_ANGLE_OFFSET 180
#macro PARRY_COOLDOWN 20

if(!hitstop){
    if(in_hitstop){
        hsp = old_hsp;
        vsp = old_vsp;
        in_hitstop = false;
    }

    switch(state){
        case 0: //idle
            if(player_id.killTarget){
                changeState(1);
            } else{
                checkForDamage();
                if(state == 0){
                    if(player_id.shield_pressed){
                        if(!parryCooldown){
                            changeState(2);
                        }
                    } else{
                        if(player_id.grabbedTarget){
                            var thrownHitbox = noone;
                            with pHitBox {
                                if(orig_player_id == other.player_id){
                                    if(attack == AT_FSPECIAL && hbox_num == 2){
                                        if(place_meeting(x, y, other)){
                                            sound_play(sound_effect);
                                            spawn_hit_fx(x, y, hit_effect);
                                            thrownHitbox = id;
                                            other.hitstop = max(round(hitpause + extra_hitpause), 0);
                                        }
                                    }
                                }
                            }
                            if(thrownHitbox){
                                player_id.grabbedTarget = false;
                                var thrownAngle = get_hitbox_angle(thrownHitbox);
                                old_hsp = thrownHitbox.kb_value*dcos(thrownAngle);
                                old_vsp = -thrownHitbox.kb_value*dsin(thrownAngle);
                                player_id.targetArticle = noone;
                                changeState(3);
                            }
                        } else if(player_id.attack == AT_USPECIAL && player_id.bombNotActivated){
                            var boomHitbox = noone;
                            with pHitBox {
                                if(orig_player_id == other.player_id){
                                    if(attack == AT_USPECIAL && hbox_num == 1){
                                        if(place_meeting(x, y, other)){
                                            sound_play(sound_effect);
                                            spawn_hit_fx(x, y, hit_effect);
                                            boomHitbox = id;
                                            other.hitstop = max(round(hitpause + extra_hitpause), 0);
                                            length = 0;
                                        }
                                    }
                                }
                            }
                            if(boomHitbox){
                                old_hsp = hsp;
                                old_vsp = vsp;
                                explode = true;
                                changeState(1);
                            }
                        }
                    }
                }
            }
            break;
        case 1: //break
            if(!explode){
                sound_play(player_id.targetBreakSound);
            }
            spawn_hit_fx(round(x), round(y), 19);
            with player_id {
                attack_end(AT_EXTRA_1);
            }
            for(var i = 0; i < 8; i++){
                var projectileHalfWidth = sprite_get_width(player_id.targetPieceSprite[targetLv-1, i%2])/2;
                var projectileHalfHeight = sprite_get_height(player_id.targetPieceSprite[targetLv-1, i%2])/2;
                var hitboxAngle = TARGET_PIECE_ANGLE_OFFSET + 45*i;
                var lvOneHitbox = create_hitbox(AT_EXTRA_1, targetLv, round(x+projectileHalfWidth*dcos(hitboxAngle)), round(y+projectileHalfHeight*dsin(hitboxAngle)));
                lvOneHitbox.hsp = abs(lvOneHitbox.hsp);
                lvOneHitbox.vsp = lvOneHitbox.hsp*dsin(hitboxAngle+45/3);
                lvOneHitbox.hsp *= dcos(hitboxAngle+45/3);
                lvOneHitbox.proj_angle = -90*floor(i/2);
                lvOneHitbox.sprite_index = player_id.targetPieceSprite[targetLv-1, i%2];
                lvOneHitbox.spr_dir = 1;
                with player_id{
                    lvOneHitbox.hbox_group = get_hitbox_value(lvOneHitbox.attack, lvOneHitbox.hbox_num, HG_HITBOX_GROUP);
                }
                if(attackingHitbox != noone){
                    lvOneHitbox.player_id = attackingHitboxPlayerId;
                    lvOneHitbox.player = attackingHitboxPlayerId.player;
                }
                if(explode){
                    lvOneHitbox.damage *= 2;
                    lvOneHitbox.kb_value *= 2;
                    lvOneHitbox.kb_scale *= 2;
                }
            }
            shouldDie = true;
            break;
        case 2: // parry
            parryCooldown = PARRY_COOLDOWN;
            if(window == 1){
                if(window_timer == 1){
                    if(!(player_id.state == PS_PARRY && player_id.window == 1 && player_id.window_timer == 0)){
                        sound_play(player_id.targetParryUseSound);
                    }
                }
                checkForParry();
            } else {
                checkForDamage();
                if(window == 0 && window_timer == 1){
                    parried = false;
                }
            }
            break;
        case 3: //thrown
            can_be_grounded = true;
            ignores_walls = false;
            vsp += 0.15;
            image_angle += 3;
            if(hsp)
                hsp = max(hsp - 0.05, 0);
            else
                hsp = min(hsp + 0.05, 0);
            var hitPlayer = false;
            with oPlayer {
                if(id != other.player_id){
                    if(place_meeting(x, y, other)){
                        hitPlayer = true;
                    }
                }
            }
            if(hitPlayer || !free || hit_wall){
                changeState(1);
            }
            break;
    }
} else{
    in_hitstop = true;
}

if(x < 0 || x > room_width || y < 0 || y > room_height){
    shouldDie = true;
}

if(shouldDie){
    instance_destroy();
    exit;
}

//advance windows
if(numWindows[state]){
    if(window_timer >= windowLength[state, window]){
        changeWindow(window+1);
    }
    if(window < numWindows[state]){
        window_timer++;
    } else{
        changeState(0);
    }
}

// decrease parry cooldown
if(parryCooldown){
    parryCooldown--;
}

#define changeState(newState)
state = newState;
state_timer = 0;
window = 0;
window_timer = 0;

#define changeWindow(newWindow)
window = newWindow;
window_timer = 0;

#define checkForDamage()
with pHitBox{
    if(player_id != other.player_id && can_hit[other.player_id.player+10] && (type == 2 || !("parriedByTarget" in player_id) || !(player_id.parry_id == other.player_id && player_id.parriedByTarget))){
        if(hit_priority > 0 && hitstun_factor >= 0 && (other.attackingHitbox == noone || other.attackingHitbox.hit_priority < hit_priority)){
            if(place_meeting(x, y, other)){
                other.attackingHitbox = id;
                other.attackingHitboxPlayerId = player_id;
            }
        }
    }
}
if(attackingHitbox != noone){
    sound_play(attackingHitbox.sound_effect);
    spawn_hit_fx(x, y, attackingHitbox.hit_effect);
    attackingHitboxPlayerId.has_hit = true;
    hitstop = max(round(attackingHitbox.hitpause + attackingHitbox.extra_hitpause), 0);
    old_hsp = hsp;
    old_vsp = vsp;
    if(attackingHitbox.type == 1){
        attackingHitboxPlayerId.old_hsp = attackingHitboxPlayerId.hsp;
        attackingHitboxPlayerId.old_vsp = attackingHitboxPlayerId.vsp;
        attackingHitboxPlayerId.hitpause = true;
        attackingHitboxPlayerId.hitstop_full = max(round(attackingHitbox.hitpause), 0);
        attackingHitboxPlayerId.hitstop = attackingHitboxPlayerId.hitstop_full;
    }
    changeState(1);
}

#define checkForParry()
var parriedForFirstTime = false;
with pHitBox{
    if(player_id != other.player_id && can_hit[other.player_id.player+10]){
        if(hit_priority > 0){
            if(place_meeting(x, y, other)){
                parriedForFirstTime = !other.parried;
                can_hit[other.player_id.player] = 0;
                can_hit[other.player_id.player+10] = 0;
                was_parried = true;
                player_id.parry_was_attacking = player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND;
                player_id.hit_player_obj = other.player_id;
                player_id.hit_player = other.player_id.player;
                player_id.my_hitboxID = id;
                player_id.parry_distance = point_distance(player_id.x, player_id.y, other.x, other.y);
                other.hitstop = max(hitstop, round(hitpause + extra_hitpause), 0);
                other.old_hsp = other.hsp;
                other.old_vsp = other.vsp;
                if(type == 1){
                    player_id.was_parried = true;
                    player_id.parry_id = other.player_id;
                    player_id.old_hsp = player_id.hsp;
                    player_id.old_vsp = player_id.vsp;
                    player_id.hitpause = true;
                    player_id.hitstop_full = max(round(hitpause), 0);
                    player_id.hitstop = player_id.hitstop_full;
                    if(!(player_id.attack == AT_JAB && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && attack == AT_JAB)){
                        player_id.parriedByTarget = true;
                    }
                } else if(type == 2){
                    if(projectile_parry_stun){
                        player_id.was_parried = true;
                        player_id.parry_id = other.player_id;
                        player_id.parriedByTarget = true;
                    }
                    if(!does_not_reflect){
                        if(!(player_id.url == CH_KRAGG && attack == AT_USPECIAL)){
                            hsp *= -1;
                            vsp *= -1;
                            if(hsp != 0){
                                spr_dir *= -1;
                            }
                        }
                    }
                }
            }
        }
    }
}
if(parriedForFirstTime){
    sound_play(player_id.targetParrySuccessSound);
    parried = true;
}