var bullet = instance_create_layer(x,y, "Instances", obj_bullet);
bullet.speed = 10;

/* // shoots at mouse location
with(bullet)
{
	bullet.direction = point_direction(x,y,mouse_x, mouse_y) + irandom_range(-3,3);
	bullet.image_angle = bullet.direction;
}
*/
