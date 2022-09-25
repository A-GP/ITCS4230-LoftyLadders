view_get_camera(cam);
x = clamp(x,-80,80);
y =  clamp(y,0,room_height-camera_get_view_height(cam));
camera_set_view_pos(cam,x,y);

camera_set_view_target(cam,obPlayer);

camera_set_view_border(cam,64,128);