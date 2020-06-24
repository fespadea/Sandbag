set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, get_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH) - 1);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 12);

set_num_hitboxes(AT_DSTRONG, 4);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, get_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH));
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -79);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 49);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, get_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH));
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, get_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH));
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 69);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 40);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, get_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH));
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 99);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 37);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 40);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 2);