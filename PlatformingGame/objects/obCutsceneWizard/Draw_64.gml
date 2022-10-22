draw_set_font(ftDefault);
draw_set_halign(fa_center);
draw_set_color(#ff0546);
if (speech) {
	draw_text_transformed(display_get_gui_width()/2,display_get_gui_height()/2-128,"Foolish Knight!\nYou will never save your poor cat and her kittens!",1.7,1.7,image_angle);	
}