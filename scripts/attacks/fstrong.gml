set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH) - 1);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED, 8);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 4);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, get_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, -18);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 69);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 57);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, get_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, get_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 12);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, get_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 44);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 1);