/// Player Control

//Player controls
player_left = keyboard_check(ord("A")) or keyboard_check(vk_left);
player_right = keyboard_check(ord("D")) or keyboard_check(vk_right);
player_up = keyboard_check(ord("W")) or keyboard_check(vk_up);
player_down = keyboard_check(ord("S")) or keyboard_check(vk_down);
player_jump = keyboard_check(vk_space);


//Invincibility
if (global.INVINCIBLE = true) {
hp = 3;	
}

//Damage buffer
if (hpcount > hp) {
	damageBuffer = true;
	alarm[2] = room_speed * 2;
	hpcount = hp;
	audio_play_sound(sndHurt,0,0);

}

//Losing all health
if (hp = 0) {
	climbing = false;
	player_left = 0;
	player_right = 0;
	player_up = 0;
	player_down = 0;
}

//slowing spell
if (plslow = true) { 
	climbsp = 1.5;
	alarm[0] = room_speed*5;
}
else{
	climbsp = spslow;
}

//shrinking spell
var _shrinkjump = 6;
var _basejump = 4.75;
var _basesp = 4;
var _shrinksp = 2;

if (plsize) { 
	image_xscale = basex;
	image_yscale = basey;
	jumpHeight = _basejump;
	playersp = _basesp;
	alarm[1] = room_speed*5;
}
else{
	image_xscale = + .5;
	image_yscale = + .5;
	jumpHeight = _shrinkjump;
	playersp = _shrinksp;
	
}


//Climbing
if (instance_place(x,y,obLadder) and instance_place(x,y-30,obLadder)) {
	if (keyboard_check(vk_up) or keyboard_check(vk_down)) {
		climbing = true;
		sprite_index = spPlayerClimbing;
	} 
} else {
		climbing = false;
		sprite_index = spPlayerClimbing;
		}

if (climbing) {
	image_speed = 1;
	sprite_index = spPlayerClimbingIdle;
	grav = 0;
	vmove = 0;
	
	//Jumping
	if (player_jump) {
		climbing = false;
		vmove -= jumpHeight;
		audio_play_sound(sndJump,0,0);
	}

	
	if (player_up) {
		if (instance_place(x,y-32,obLadder) and instance_place(x,y,obLadder)) {
			y += -climbsp;
			sprite_index = spPlayerClimbing;
		}
	}

	if (player_down) {
		if (instance_place(x,y+32,obLadder)) {
			y += climbsp;
			sprite_index = spPlayerClimbing;
		}
	}
	
} else {

	//Movment
	grav = 0.25;
	var moveDirection = player_right - player_left
	hmove = moveDirection * playersp;
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

score = scr;