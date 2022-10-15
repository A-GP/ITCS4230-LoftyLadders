menuUp = keyboard_check_pressed(vk_up);
menuDown = keyboard_check_pressed(vk_down);
menuAction = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter);
MenuCancel = keyboard_check_pressed(vk_backspace) or keyboard_check_pressed(vk_escape);

var _x = 760;	
var _y = 432;
var txt;
draw_set_font(ftMenu);   
draw_set_valign(fa_middle);
draw_set_halign(fa_middle);

var xx = _x;
var yy = _y;

//find the widest menu item so we know where to create boundaries
var wide = 0;
for (var i = 0; i < menuItems; i++) {
	var w = string_width(menu[i]);  //find the widest string
	if w > wide wide = w;
}

for (var i = 0; i < menuItems; i++) {

	var col = color2;
	txt = menu[i];
	if item == i col = color1;
	draw_text_transformed_color(xx,yy,menu[i],1,1,0,col,col,col,col,1);
	yy += space;
}

if menuUp {
	item -= 1;
	if item < 0 item = menuItems-1;
}
if menuDown {
	item += 1;
	if item > menuItems-1 item = 0;
}
		
//activate
if menuAction {
	switch item {
		case 0:
			room_goto(rmGame);
		break;
		case 1:
			//menu actions go here
		break;
		case 2:
			game_end()
		break;
	}
}
