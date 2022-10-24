///@description Player variables
playersp = 4;
vmove = 0;
hmove = 0;
grav = 0.3;
jumpHeight = 5;
lastDirection = 0;
climbsp = 1.5;
hp = 3;
hpcount = 3;
scr = 0;

//slowing
plslow = true
spslow = .5

//shrinking
plsize = true
basex = image_xscale
basey = image_yscale

plslow = true;
spslow = .5;

audio_play_sound(sndGameSong,10,true);

if (global.CHECKPOINT) {
	x = global.CPN.x;
	y = global.CPN.y;
}

if (global.POINTS > 0) {
	scr = global.POINTS;	
}