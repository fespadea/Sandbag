// article 2 pre draw

//draw the parry outline
#macro XOFFSET 4
#macro YOFFSET 4
if(state == 2){
    if(window == 1){
        draw_sprite_ext(sprite_index, image_index, x+XOFFSET, y, spr_dir, 1, 0, c_black, 1);
        draw_sprite_ext(sprite_index, image_index, x-XOFFSET, y, spr_dir, 1, 0, c_black, 1);
        draw_sprite_ext(sprite_index, image_index, x, y+YOFFSET, spr_dir, 1, 0, c_black, 1);
        draw_sprite_ext(sprite_index, image_index, x, y-YOFFSET, spr_dir, 1, 0, c_black, 1);
    }
}