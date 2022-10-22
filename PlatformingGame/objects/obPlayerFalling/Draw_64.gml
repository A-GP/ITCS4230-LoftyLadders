if (game_over) {
	draw_sprite(spGameOver,0,display_get_gui_width()/2,display_get_gui_height()/2);
	draw_set_color(#0098db);
draw_set_font(ftDefault);
draw_set_halign(fa_center);
draw_text_transformed(display_get_gui_width()/2,display_get_gui_height()-128,"PRESS 'R' TO RESTART FROM LAST CHECKPOINT,\n OR PRESS 'ESC' TO GO TO MENU",1.7,1.7,image_angle);
}
