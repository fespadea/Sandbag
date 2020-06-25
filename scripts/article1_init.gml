// after image thing for dspecial

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

sprite_index = asset_get("empty_sprite");
spr_dir = player_id.spr_dir;
image_blend = c_red;
image_alpha = .5;
origX = player_id.x + (random_func(0, 10, false) + 20)*(player_id.state_timer % 32 ? -1 : 1); // sideOfSandbag must be created outside of this article
x = origX;
origY = player_id.y - random_func(2, 10, false);
y = origY;
percentIncrease = (random_func(3, 3, false)+2)/100;
percentDistance = 0;