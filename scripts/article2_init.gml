// target init (targetLv needs to be assigned when creating this article) (Muno's template somewhat)

//decide which target
targetLv = player_id.dspecialChargeWindow;

//owner of target projectiles
attackingHitbox = noone;
attackingHitboxPlayerId = noone;

//Sprite and direction
sprite_index = player_id.targetSprite[targetLv-1];
image_index = 0;
spr_dir = player_id.spr_dir;
uses_shader = false;

//State
state = 0;
stateTimer = 0;
articleTimer = 0;

//movement
hitstop = 0;
hsp = 0;
vsp = 0;
old_hsp = 0;
old_vsp = 0;
in_hitstop = false;

//Terrain behavior
can_be_grounded = false;
ignores_walls = true;
free = true;
hit_wall = false;

//Cope with own mortality
shouldDie = false;

//windows
window = 0;
window_timer = 0;
windowLength[state, window] = 0;
numWindows = array_create(5, 0);

//parry windows
numWindows[2] = 3;
windowLength[2, 0] = 1;
windowLength[2, 1] = 8;
windowLength[2, 2] = 20;

//parry cooldown
parryCooldown = 0;

//explode
explode = false;