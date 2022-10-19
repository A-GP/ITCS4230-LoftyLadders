instance_destroy(other);

var camx = camera_get_view_x(view_camera[0]);
var camy = camera_get_view_y(view_camera[0]);
instance_create_layer(camx+80,camy,"FallingScreen",obPlayerFalling);
audio_stop_sound(sndGameSong);