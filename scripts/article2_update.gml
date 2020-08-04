// target update (Muno's template somewhat)

#macro TARGET_PIECE_ANGLE_OFFSET 180
#macro LVL_1_PROJECTILE_SPEED 5
#macro LVL_2_PROJECTILE_SPEED 10
#macro LVL_3_PROJECTILE_SPEED 7

switch(state){
    case 0:
        if(player_id.killTarget){
            sound_play(player_id.targetBreakSound);
            changeState(1);
        }
        break;
    case 1:
        switch(targetLv){
            case 1:
                genericTargetBreak(LVL_1_PROJECTILE_SPEED);
                break;
            case 2:
                genericTargetBreak(LVL_2_PROJECTILE_SPEED);
                break;
            case 3:
                genericTargetBreak(LVL_3_PROJECTILE_SPEED);
                break;
        }
        shouldDie = true;
        break;
}

if(shouldDie){
    instance_destroy();
    exit;
}

#define changeState(newState)
state = newState;
state_timer = 0;

#define changeWindow(newWindow)
window = newWindow;
windowTimer = 0;

#define genericTargetBreak(speed)
spawn_hit_fx(round(x), round(y), 19);
with player_id {
    attack_end(AT_EXTRA_1);
}
for(var i = 0; i < 8; i++){
    var projectileHalfWidth = sprite_get_width(player_id.targetPieceSprite[targetLv-1, i%2])/2;
    var projectileHalfHeight = sprite_get_height(player_id.targetPieceSprite[targetLv-1, i%2])/2;
    var hitboxAngle = TARGET_PIECE_ANGLE_OFFSET + 45*i;
    var lvOneHitbox = create_hitbox(AT_EXTRA_1, targetLv, round(x+projectileHalfWidth*dcos(hitboxAngle)), round(y+projectileHalfHeight*dsin(hitboxAngle)));
    lvOneHitbox.hsp = speed*dcos(hitboxAngle+45/3);
    lvOneHitbox.vsp = speed*dsin(hitboxAngle+45/3);
    lvOneHitbox.proj_angle = -90*floor(i/2);
    lvOneHitbox.sprite_index = player_id.targetPieceSprite[targetLv-1, i%2];
    lvOneHitbox.spr_dir = 1;
    lvOneHitbox.hbox_group = targetLv;
}