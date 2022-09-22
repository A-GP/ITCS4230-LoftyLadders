/// Player Controls

//Player controls
player_left = keyboard_check(ord("A"));
player_right = keyboard_check(ord("D"));
player_jump = keyboard_check(vk_space);


//Movment
var move = player_right - player_left
hmove = move * playersp;
vmove = vmove + grav;

//Jumping
if (place_meeting(x,y+1,obWall)) && (player_jump) {
	vmove -= 7;
}

if ((vmove < 0) && (!player_jump)) { //If the player is moving up but not holding jump, the jump will be shorter
	vmove = max(vmove,-1);
}
	
//Horizontal collison
if (place_meeting(x+hmove,y,obWall)) {
	while (!place_meeting(x+sign(hmove),y,obWall)) {
		x = x + sign(hmove);
	}
	hmove = 0;
}
x = x + hmove;

//Vertical collison
if (place_meeting(x,y+vmove,obWall)) {
	while (!place_meeting(x,y+sign(vmove),obWall)) {
		y = y + sign(vmove);
	}
	vmove = 0;
}
y = y + vmove;

/// Sprite Control
image_speed = 1;

if !(place_meeting(x,y+1,obWall)) {
	sprite_index = spPlayerJump;
	image_speed = 0;
	image_index = (vmove > 1);
} else if (place_meeting(x,y+1,obWall)) {
	sprite_index = spPlayerIdle;
}
