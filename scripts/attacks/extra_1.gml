// extra 1 (ground movement)
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("idle"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 5);

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, initial_dash_time);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, sprite_get_number(dashstartSprite));
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, air_friction);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, round(sprite_get_number(dashSprite)/dash_anim_speed));
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, sprite_get_number(dashSprite));
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, air_friction);

set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, dash_stop_time);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, sprite_get_number(dashstopSprite));

set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, dash_turn_time);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, sprite_get_number(dashturnSprite));