move_wrap(true, true, sprite_width/2);

switch (state) {
    case states.idle:
        if(distance_to_object(obj_player) <= distanceTrigger){
            state = states.chase;
        }
        
        speed = 0;
        actionDur = 0;
    break;
	
	case states.chase:
    if(distance_to_object(obj_player) > distanceTrigger + 100){
        state = states.idle;
    } 
    
    speed = 1.5;
    direction = point_direction(x,y,obj_player.x,obj_player.y);
    
    actionDur ++;
    if(distance_to_object(obj_player) < distanceTrigger - 140){
        state = states.attack;
        actionDur = 0;
    }
	break;
	
	case states.attack:
   
    speed = 0;
	if(distance_to_object(obj_player) < 1)
	{
		speed = -1.5;
	}
	if(distance_to_object(obj_zombie) < 1)
	{
		speed = -1;
	}
    
    if(distance_to_object(obj_player) > distanceTrigger - 135){
        state = states.idle;
        actionDur = 0;
    }
	break;
}

if(speed == 0)
{
	image_index = sprite_index[0];
}

if (hp <= 0) 
{
	instance_destroy();
}