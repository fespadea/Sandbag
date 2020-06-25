//article1_update

x = lerp(origX, player_id.x, min(100, percentDistance));
y = lerp(origY, player_id.y, min(100, percentDistance));
if(percentDistance >= 1 || !((player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.attack == AT_DSPECIAL)){
    instance_destroy();
    exit;
}
percentDistance += percentIncrease;