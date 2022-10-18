draw_set_font(ftMenu);
draw_set_halign(fa_center);


for (var i = 0; i < array_length(menu[sub_index]); ++i) {
	var _space = 60;
	if (i == index) {
		var _col = #0CE6F2;
	} 
	else {
		var _col = #0098DB;
	}
	draw_set_color(_col);

	draw_text(display_get_gui_width()/8*3 + 48,room_height/4 + 144 + _space * i,menu[sub_index][i]);
}

draw_set_color(#0098db);
draw_set_font(ftDefault);
draw_set_halign(fa_center);
draw_text_transformed(960,room_height-32,"Andrew Pierce - Artist / Designer     Sean Board - Programmer     Max Waddell - Producer",1.15,1.15,image_angle);