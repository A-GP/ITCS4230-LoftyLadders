draw_set_font(ftMenu);
draw_set_halign(fa_center);


for (var i = 0; i < menu_length; i++) {
	var _space = 60;
	var _txt = menu[i];
	if (i == index) {
		var _col = #0CE6F2;
	} 
	else {
		var _col = #0098DB;
	}
	draw_set_color(_col);

	draw_text(display_get_gui_width()/8 * 3 + 48,camera_get_view_y(view_camera[0])/2 + 128 + _space * i,_txt);
}



