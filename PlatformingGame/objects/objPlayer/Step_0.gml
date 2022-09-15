/// @description 

//Player controls
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space);


//Calculate movement
var move = key_right - key_left
hsp = move * movesp;
vsp = vsp + grv;

//Calculate jumping
if (place_meeting(x,y+1,objWall)) && (key_jump) {
	vsp -= 8;
}

if ((vsp < 0) && (!key_jump)) { //If the player is moving up but not holding jump, the jump will be shorter
	vsp = max(vsp,-1);
}

//Horizontal collison
if (place_meeting(x+hsp,y,objWall)) {
	while (!place_meeting(x+sign(hsp),y,objWall)) {
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical collison
if (place_meeting(x,y+vsp,objWall)) {
	while (!place_meeting(x,y+sign(vsp),objWall)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
