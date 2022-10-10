/// Player Control

//Player controls
player_left = keyboard_check(ord("A")) or keyboard_check(vk_left);
player_right = keyboard_check(ord("D")) or keyboard_check(vk_right);
player_up = keyboard_check(ord("W")) or keyboard_check(vk_up);
player_down = keyboard_check(ord("S")) or keyboard_check(vk_down);
player_jump = keyboard_check(vk_space);


if (place_meeting(x,y,obLadder)) {
	if (keyboard_check(vk_up) or keyboard_check(vk_down)) {
		climbing = true;
		sprite_index = spPlayerClimbing;
	} 
} else {
		climbing = false;
		sprite_index = spPlayerIdle;
		}

if (climbing) {
	image_speed = 0;
	grav = 0;
	vmove = 0;

	//Jumping
	if (player_jump and canJump) {
		climbing = false;
		vmove -= jumpHeight;

	}

	
	if (player_up) {
		if (instance_place(x,y-1,obLadder)) {
			y += -climbsp;
			image_speed = 1;
		}
	}

	if (player_down) {
		if (instance_place(x,y+1,obLadder)) {
			y += climbsp;
			image_speed = 1;
		}
	}
	
} else {

	//Movment
	grav = 0.3;
	var move = player_right - player_left
	hmove = move * playersp;
	vmove = max(vmove+grav,-10);
	
	//Horizontal collison
	if (place_meeting(x+hmove,y,obWall)) {
		while (!place_meeting(x+sign(hmove),y,obWall)) {
			x = x + sign(hmove);
		}
		hmove = 0;
	}
	
	//Moving the player's coordinates
	x = x + hmove;
	y = y + vmove;


	/// Sprite Control for jumping
	image_speed = 1;

	if (!place_meeting(x,y+1,obWall) or !climbing) {
	
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
	}
}