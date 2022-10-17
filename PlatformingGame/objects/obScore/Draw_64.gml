if (instance_exists(obPlayer)) {
	draw_sprite_stretched(spScore,0,336,224,184,84);
	
draw_set_font(ftDefault);
draw_set_color(#ff0546);
draw_text_transformed(460+16,242+40,obPlayer.scr,3,3,image_angle);
}
