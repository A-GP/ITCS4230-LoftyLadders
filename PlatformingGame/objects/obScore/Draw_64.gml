if (instance_exists(obPlayer)) {
	draw_sprite_stretched(spScore,0,336,224,184,84);

var _x = 460;
var _y = 242;

draw_set_font(ftDefault);
draw_set_color(#ff0546);
draw_text_transformed(_x,_y,obPlayer.scr,3,3,image_angle);
}
