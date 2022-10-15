//Move Camera downwards when opening the game

if (!menuSkip) {
camera_set_view_pos(cam, -160, vspeed);

vspeed = clamp(vspeed,0,540);
vspeed += .65;
} else {
	camera_set_view_pos(cam, -160, 540);
	alarm[0] = 1;
}