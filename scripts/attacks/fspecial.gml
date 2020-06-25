set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_fly"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_fly_hurt"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_gus_jump"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH) - 2);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 12); //the throw grabs
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 12); //the throw startup
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 12); //the throw throw
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, -5);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 20); //the throw endlag
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_num_hitboxes(AT_FSPECIAL, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 11);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, get_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -53);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 108);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 2);