///@description Player Controls

//Player controls
player_left = keyboard_check(ord("A"));
player_right = keyboard_check(ord("D"));
player_jump = keyboard_check(vk_space);


//Movment
var move = player_right - player_left
hmove = move * playersp;
vmove = vmove + grav;

//Jumping
if (place_meeting(x,y+1,objWall)) && (player_jump) {
	vmove -= 8;
}

if ((vmove < 0) && (!player_jump)) { //If the player is moving up but not holding jump, the jump will be shorter
	vmove = max(vmove,-1);
}

//Horizontal collison
if (place_meeting(x+hmove,y,objWall)) {
	while (!place_meeting(x+sign(hmove),y,objWall)) {
		x = x + sign(hmove);
	}
	hmove = 0;
}
x = x + hmove;

//Vertical collison
if (place_meeting(x,y+vmove,objWall)) {
	while (!place_meeting(x,y+sign(vmove),objWall)) {
		y = y + sign(vmove);
	}
	vmove = 0;
}
y = y + vmove;
