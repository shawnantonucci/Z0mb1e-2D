speed = 6;

// Left
with(obj_player) var b0 = bullet_direction == 0;
if(b0)
{
	direction = 180;
}

// Right
with(obj_player) var b1 = bullet_direction == 1;
if(b1)
{
	direction = 0;
}

// Up
with(obj_player) var b2 = bullet_direction == -1;
if(b2)
{
	direction = 90;
}

// Down
with(obj_player) var b3 = bullet_direction == -2;
if(b3)
{
	direction = 270;
}

// Down-right
with(obj_player) var b4 = bullet_direction == -3;
if(b4)
{
	direction = 315;
}

// Down-left
with(obj_player) var b5 = bullet_direction == -4;
if(b5)
{
	direction = 235;
}

// Up-Right
with(obj_player) var b6 = bullet_direction == -5;
if(b6)
{
	direction = 45;
}

// Up-left
with(obj_player) var b7 = bullet_direction == -6;
if(b7)
{
	direction = 135;
}