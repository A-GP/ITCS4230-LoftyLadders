//Move Camera downwards when opening the game

var cam = view_get_camera(0);
camera_set_view_pos(cam, -160, vspeed);

vspeed = clamp(vspeed,0,540);
vspeed += .65;