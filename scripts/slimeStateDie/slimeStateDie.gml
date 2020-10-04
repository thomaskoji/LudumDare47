function scr_slimeStateDie(){
	if (state_new)
	{
		scr_setSprite(spr_slimeDie, spr_slimeDie, spr_slimeDie, DEFAULT_IMAGE_SPEED);
		G.currentGauge += 10;
	}
	
	scr_enemyAnimateSprite();
	
	var _distanceToGo = point_distance(x, y, xTo, yTo);
	if  (_distanceToGo > enemySpeed)
	{
		faceDirection = point_direction(obj_player.x, obj_player.y, x, y);
		velocity[XAXIS] = lengthdir_x(enemySpeed, faceDirection);
		velocity[YAXIS] = lengthdir_y(enemySpeed, faceDirection);
	}
	else
	{
		x = xTo;
		y = yTo;
	}
	
	if (scr_animationEnd())
	{
		instance_destroy();
	}
	
}