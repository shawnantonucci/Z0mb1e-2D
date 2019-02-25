//-----UPDATE INPUT
input_left = keyboard_check(vk_left); 
input_right = keyboard_check(vk_right); 
input_up = keyboard_check(vk_up); 
input_down = keyboard_check(vk_down);  
input_walk = keyboard_check(vk_control); 
input_run = keyboard_check(vk_shift); 

//-----ALTER SPEED
if(input_walk or input_run){
	spd = abs((input_walk * w_spd) - (input_run * r_spd));
} else {
	spd = n_spd;
}

//-----RESET MOVE VARIABLES
moveX = 0;
moveY = 0;

//-----INTENDED MOVEMENT
//moveY = (input_down - input_up) * spd;
//if(moveY == 0){ moveX = (input_right - input_left) * spd; }

moveY = (input_down - input_up) * spd;
moveX = (input_right - input_left) * spd;

//-----COLLISION CHECKS
//Horizontal
if(moveX != 0){
	if(place_meeting(x + moveX, y, obj_collision)){
		repeat(abs(moveX)){
			if(!place_meeting(x + sign(moveX), y, obj_collision)){
				x += sign(moveX);
			} else {
				break;
			}
		}
		moveX = 0;
	}
	if(place_meeting(x + moveX, y, obj_zombie)){
		repeat(abs(moveX)){
			if(!place_meeting(x + sign(moveX), y, obj_zombie)){
				x += sign(moveX);
			} else {
				break;
			}
		}
		moveX = 0;
	}
}

//-----Vertical
if(moveY != 0){
	if(place_meeting(x, y + moveY, obj_collision)){
		repeat(abs(moveY)){
			if(!place_meeting(x, y + sign(moveY), obj_collision)){
				y += sign(moveY);
			} else {
				break;
			}
		}
		moveY = 0;
	}
	if(place_meeting(x, y + moveY, obj_zombie)){
		repeat(abs(moveY)){
			if(!place_meeting(x, y + sign(moveY), obj_zombie)){
				y += sign(moveY);
			} else {
				break;
			}
		}
		moveY = 0;
	}
}
//-----APPLY MOVEMENT
x += moveX;
y += moveY;

//-----Animated
if(moveX >= 1){
	sprite_index[1,2] = spr_player_walkright;
	moveX += spd;
}
if(moveX <= -1){
	sprite_index[1,2] = spr_player_walkleft;
		moveX -= spd;
}
if(moveY <= -1){
	sprite_index[1,2] = spr_player_walkup;
		moveY -= spd;
}
if(moveY >= 1){
	sprite_index[1,2] = spr_player_walkdown;
		moveY += spd;
}

if(keyboard_check(vk_nokey)){
	moveX = 0;
	moveY = 0;
	image_index = 0;
}

if(keyboard_check(ord("C"))){
	moveX = 0;
	moveY = 0;
	image_index = 0;
}

//-----Check bullet fire direction

if(input_right)
{
	bullet_direction = 1; 
}
if(input_left)
{
	bullet_direction = 0; 
}
if(input_up)
{
	bullet_direction = -1; 
}
if(input_down)
{
	bullet_direction = -2; 
}
if(input_down and input_right)
{
	bullet_direction = -3; 
}
if(input_down and input_left)
{
	bullet_direction = -4; 
}
if(input_up and input_right)
{
	bullet_direction = -5; 
}
if(input_up and input_left)
{
	bullet_direction = -6; 
}
