 // spawn in random location within room size
if (room is rm_demo)
{
	if (initialSpawn is false)
	{
		repeat(100)
		{
			instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height),"Instances", obj_slime);
		}
	
		initialSpawn = true;
	}
	
	if (instance_number(obj_slime) > 100) 
	{
		instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height),"Instances", obj_slime);
	}
}