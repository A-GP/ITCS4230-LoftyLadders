draw_set_color(#0098db);
draw_set_font(ftDefault);
draw_set_halign(fa_center);

if (obCat.end_text) {
	draw_text_transformed(display_get_gui_width()/2,display_get_gui_height()/2,"Mrow! (Thank you for saving me!)",1.7,1.7,image_angle);
		if (score == 20) {
			draw_text_transformed(display_get_gui_width()/2,display_get_gui_height()/2 + 64,"Meow! (And you saved all of my kittens!!)",1.7,1.7,image_angle);
		} else {
			draw_text_transformed(display_get_gui_width()/2,display_get_gui_height()/2 + 64,"Meow.. (But I still have " + string(20 - score) + " kittens trapped in the tower)",1.7,1.7,image_angle);
		}
		
		draw_set_color(#ff0546);
		draw_text_transformed(display_get_gui_width()/2,64,"PRESS 'ESC' TO GO TO THE MAIN MENU",1.7,1.7,image_angle);
}