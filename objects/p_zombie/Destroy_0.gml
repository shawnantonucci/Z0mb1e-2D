/// @description Tick down a spawner if one exists
if (instance_exists(obj_spawner))
{
	with (obj_spawner)
	{
		if (triggered)
		{
			remaining[current_wave]--;
		}
	}
}