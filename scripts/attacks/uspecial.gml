set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_throw"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH) - 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 33);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed/5);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed/5);

set_num_hitboxes(AT_USPECIAL, 2);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH));
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 17);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 141);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("uspecial_proj"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);