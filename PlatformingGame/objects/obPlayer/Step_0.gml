/// Player Control

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

//Jumping
if !(place_meeting(x,y+1,obWall)) {
	
	//Changes jumping sprite if the player is moving left or right
	var facing = spPlayerJumpR;
	
	if (sign(hmove) = 1) {
		sprite_index = spPlayerJumpR;
		facing = spPlayerJumpR;
		lastDirection = facing;
	} else if (sign(hmove) = -1) {
			sprite_index = spPlayerJumpL;
			facing = spPlayerJumpL;
			lastDirection = facing;
		} else if (sign(hmove) = 0) sprite_index = lastDirection;

	image_speed = 0;
	


//Changes player jumping sprite as they go up and down
	if (vmove >= -2 && image_index != 2) image_index = 0;
	
	if (vmove < -2 && vmove >= -4 && image_index = 0) image_index = 1;
	
	if (vmove < -4) image_index = 2;
	
	if (vmove >= 0) image_index = 3;
	

} else if (place_meeting(x,y+1,obWall)) {
	sprite_index = spPlayerIdle; //Should only happen at the start of the game
}
