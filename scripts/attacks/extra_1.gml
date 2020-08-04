// extra 1 (target hitboxes)

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 80);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, targetPieceSprite[0]);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, get_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE));