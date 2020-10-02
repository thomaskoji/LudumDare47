function scr_objectUpdateLocation()
{
	if (!G.gamePaused)
	{
		//horizontal
		if(place_meeting(x + velocity[XAXIS], y, obj_solid))
		{
			if (velocity[XAXIS] < 0) { x = ceil(x);}
			else if (velocity[YAXIS] > 0) { x = floor(x);}
	
			while(!place_meeting(x + sign(velocity[XAXIS]), y, obj_solid))
			{
				x += sign(velocity[XAXIS]);
			}
			velocity[XAXIS] = 0;
		}
	
		x += velocity[XAXIS];

		//vertical
		if(place_meeting(x, y + velocity[YAXIS], obj_solid))
		{
			if (velocity[YAXIS] < 0) { y = ceil(y);}
			else if (velocity[YAXIS] > 0) { y = floor(y);}
	
			while(!place_meeting(x, y + sign(velocity[YAXIS]), obj_solid))
			{
				y += sign(velocity[YAXIS]);
			}
			velocity[YAXIS] = 0;
		}
	
		y += velocity[YAXIS];
	}
}
