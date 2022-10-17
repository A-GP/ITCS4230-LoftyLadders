gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin_x = display_get_gui_width()/1.666;
gui_margin_y = display_get_gui_height()/2;

menu_x = gui_width - gui_margin_x;
menu_y = gui_height;
menu_y_target = gui_height - gui_margin_y + 50;
menu_itemheight = font_get_size(ftMenu);
menu_committed = -1;
menu_control = true;

menu[2] = "START";
menu[1] = "ACCESSIBILITY OPTIONS";
menu[0] = "BACK";

menu_length = array_length(menu);
menu_cursor = 2;
