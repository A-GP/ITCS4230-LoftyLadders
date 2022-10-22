speech = false;
visible = false;
audio_play_sound(sndWizard,0,0);
for (var i = 0; i < 10; i++) {
	instance_create_layer(x+16-irandom(32),y+24-irandom(48),"Effects",obSmoke);
}