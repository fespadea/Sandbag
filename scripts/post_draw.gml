//post-draw

// draw rotating sandbag
if (attack == AT_TAUNT && state == PS_ATTACK_GROUND) {
    shader_start();
    draw_sprite_ext(tauntSprite, 0, x, y - 31, spr_dir, 1, tauntAngle, c_white, 1);
    shader_end();
}

shader_start();
with obj_article1 {
    if(player_id == other){
        draw_sprite_ext(other.sprite_index, other.image_index, x, y, other.spr_dir, 1, 0, image_blend, image_alpha);
    }
}
shader_end();